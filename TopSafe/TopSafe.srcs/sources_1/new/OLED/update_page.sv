`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: UpdatePage
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UpdatePage (
    input clk, rst, en, spi_fin, 
    input [1:0] page, 
    output reg dc, spi_en, 
    output [7:0] spi_data
);

localparam nbcmd = 4;
localparam reg [7:0] cmd[0:3] = '{8'h22, 8'h00, 8'h00, 8'h10};

typedef enum {idle, ClearDC, SendCmd, SetDC, Transition1, Transition2, Transition5} states_e;
states_e st, nst;

reg [2:0] cmd_cnt;

//Update Page states
//1. Sets DC to command mode
//2. Sends the SetPage Command
//3. Sends the Page to be set to
//4. Sets the start pixel to the left column
//5. Sets DC to data mode
			
assign spi_data = (cmd_cnt == 2'd1)?{cmd[cmd_cnt][7:2],page}:cmd[cmd_cnt];


always @(posedge clk, posedge rst)
    if(rst) cmd_cnt <= 3'b0;
    else if (st == Transition5) cmd_cnt <= cmd_cnt + 1;
    else if (st == SetDC | st == ClearDC) cmd_cnt <= 3'b0;


always @(posedge clk, posedge rst)
    if(rst) st <= idle;
    else st <= nst;


always @* begin
    nst = idle;
    dc = 1'b0;
    case(st)
        idle: nst = en?ClearDC:idle;
        ClearDC: nst = SendCmd;
        SendCmd: nst = (cmd_cnt < nbcmd ? Transition1 : SetDC);
        SetDC: begin
            dc = 1'b1;
            nst = idle;
        end
        // SPI transitions
        // 1. Set SPI_EN to 1
        // 2. Waits for SpiCtrl to finish
        // 3. Goes to clear state (Transition5)
        Transition1: nst = Transition2;
        Transition2: nst = (spi_fin ? Transition5 : Transition2); 
        // Clear transition
        // 1. Sets both DELAY_EN and SPI_EN to 0
        // 2. Go to after state
        Transition5 : nst = SendCmd;
    endcase
end


always @(posedge clk, posedge rst)
    if(rst) spi_en <= 1'b0;
    else begin
        if (st == Transition1) spi_en <= 1'b1;
        if (st == Transition5) spi_en <= 1'b0;
    end

endmodule

