`timescale 1ns / 1ps


//////////////////////////////////////////////////////////////////////////////////
module FsmOper (
	input blank, [7:0] bcdData,
	input clk, rst, en,
    output sdo, sclk, fin, output reg dc
);

reg [7:0] current_screen[0:3][0:15];
`include "screens.vh"

reg [2:0] cnt_clm, cnt_page;
reg [4:0] cnt_ind;
reg [11:0] delay_ms;
reg [10:0] addr;
reg [7:0] romout, spi_data_data;
reg spi_en_data, page_en;
wire [7:0] spi_data_cmd, spi_data;
wire romen, spi_fin, spi_en;

typedef enum {
    idle, 
    screen, 
    pageInit, 
    page, 
    sendChar, 
    readMem, 
    spi1, 
    spi2, 
    back, 
    done
} state_e; 

state_e st, nst; // current state and next state

Spi SPI (
    .clk(clk), .rst(rst), .en(spi_en),
	.indata(spi_data), .sdo(sdo), .sclk(sclk), 
	.fin(spi_fin)
);
	
assign spi_data = dc ? spi_data_data : spi_data_cmd;
assign spi_en = dc ? spi_en_data : up_spi_en;


UpdatePage PAGE_ROW (
    .clk(clk), .rst(rst), .en(page_en), 
    .spi_fin(spi_fin), .page(cnt_page[1:0]), 
	.dc(page_fin), .spi_en(up_spi_en), 
	.spi_data(spi_data_cmd)
);


//font templates
Rom CHAR_LIB_COM ( 
    .clk(clk), .en(romen), .addr(addr), 
    .dout(romout)
);

assign romen = (st == readMem);
assign fin = (st == done);


always @(posedge clk, posedge rst)
	if(rst) st <= idle;
	else st <= nst;


always @* begin
	nst = idle;
	case(st)
		idle: nst = en ? screen : idle;
		screen: nst = page;
		pageInit: if(cnt_page == 3'b100) nst = back;
		          else nst = page;
		page: nst = page_fin ? sendChar : page;
		sendChar: nst = readMem;
		readMem: nst = spi1;
		spi1: nst = spi2;
		spi2: nst = spi_fin ? back : spi2;
		back: if(cnt_page == 3'b100) nst = done;
			else if(cnt_ind == 5'b10000) nst = pageInit;
			else nst = sendChar;
		done: nst = en ? done : idle;
	endcase
end


// pixel byte register
always @(posedge clk, posedge rst)
	if(rst) spi_data_data <= 8'b0;
	else if(st == readMem) spi_data_data <= romout;
	
		
// ROM address
always @(posedge clk, posedge rst)
	if(rst) addr <= 11'b0;
	else if (st == sendChar) addr <= {current_screen[cnt_page][cnt_ind], cnt_clm};
	

// screen register
always @(posedge clk, posedge rst)
	if(rst) current_screen <= clear_screen;
	else if(st == screen) begin
	    current_screen <= (blank ? clear_screen : code_screen);
	    if (!blank) begin // set current number to be printed on screen
	       current_screen[2][7] <= {4'b0000, bcdData[7:4]} + 8'd48; // +48 to convert 0 to ASCII character "0" etc.
	       current_screen[2][8] <= {4'b0000, bcdData[3:0]} + 8'd48;
	    end
    end
    

// page counter
always @(posedge clk, posedge rst)
	if(rst) cnt_page <= 3'b0;
	else if (st == screen | st == idle) cnt_page <= 3'b0;
	else if ((st == back) & (cnt_ind == 5'b10000)) cnt_page <= cnt_page + 1;
	   
                    
// character index counter
always @(posedge clk, posedge rst)
	if(rst) cnt_ind <= 5'b0;
	else if (st == screen | st == pageInit | st == idle) cnt_ind <= 5'b0;
	else if ((st == back) & (cnt_clm == 3'b111)) cnt_ind <= cnt_ind + 1;


// pixel column counter
always @(posedge clk, posedge rst)
	if(rst) cnt_clm <= 3'b0;
	else if (st == idle) cnt_clm <= 2'b0;
	else if (st == back)
	   if (cnt_clm == 3'b111) cnt_clm <= 3'b0;
	   else cnt_clm <= cnt_clm + 1;


// spi control 
always @(posedge clk, posedge rst)
	if(rst) spi_en_data <= 1'b0;
	else if(st == spi1) spi_en_data <= 1'b1;
	else if (st == spi2 & spi_fin) spi_en_data <= 1'b0;


// page control combinatorial logic
always @(posedge clk, posedge rst)
	if(rst) begin
		page_en = 1'b0;
		dc = 1'b1;
	end else 
	case(st)
		screen: begin	//
			page_en = 1'b1;
			dc = 1'b0;
		end
		pageInit: if (~cnt_page[2]) begin	//
            page_en = 1'b1;
            dc = 1'b0;
        end
		page: if (page_fin) begin
			page_en = 1'b0;
			dc = 1'b1;
		end
	endcase

endmodule

