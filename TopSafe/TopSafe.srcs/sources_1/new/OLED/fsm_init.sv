`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 02:29:20
// Design Name: 
// Module Name: fsm_init
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


module fsm_init #(delvbat = 8'h64) // 8'h64 = 100 
    (input clock, reset, en, 
    output sclk, sdo, output reg dc, // sdo == miso, dc == data command
    output reg vdd, vbat, res, // przerzutniki sygnalow wyjsciowych
    fin);
    
    localparam del1ms = 8'h01;
    
    reg[7:0] del_ms;
    reg spi_fin, delay_fin; // czy spi i delay sie zakonczyly
    reg spi_en, delay_en; // czy spi i delay sie zaczely
    
    localparam nbcmd = 16; // number of commands
    
    // komenda
    localparam [8:0] list_cmd [0:nbcmd-1] = '{
        9'h100,
        9'h0AE,
        9'h102,
        9'h103,
        9'h08D,
        9'h014,
        9'h0D9,
        9'h0F1,
        9'h104,
        9'h081,
        9'h00F,
        9'h0A1,
        9'h0C8,
        9'h0DA,
        9'h020,
        9'h0AF
    };
    
    reg [8:0] cmd; // rejestr komendy 
    reg [$clog2(nbcmd)-1:0] cnt_cmd; // licznik koment
    
    spi SPIInstance (
        .clk(clock),
        .rst(reset),
        .en(spi_en),
        .sclk(sclk),
        .fin(spi_fin), // wyjscie fin z instancji modulu SPI
        .sdo(sdo),
        .indata(cmd[7:0])
        );
    
    delay #(.nbits(8)) DelayInstance(
        .clk(clock),
        .rst(reset),
        .en(delay_en),
        .fin(delay_fin), // wyjscie fin z instancji modulu delay
        .del_ms(del_ms)
        );
    
    // mozliwe stany
    typedef enum {Idle, Decision, Spi, Power, WaitPre, Delay, Clear, Done} states_e;
    
    // stan aktualny i nastepny
    states_e current, next;
    
    // zmiana stanu na nast�pny - rejestr stanow
    always@(posedge clock, posedge reset)
        if(reset) current <= Idle;
        else current <= next;
        
    // logika zmiany stanu
    always@* begin
        next = Idle;
        dc = 1'b0;
        fin = 1'b0;
        spi_en = 1'b0;
        delay_en = 1'b0;     
        case (current) 
            Idle: if (en || cmd) next = Decision;
            Decision: next = cmd[8] ? Power : Spi;
            Spi: begin next = (spi_fin ? Clear : Spi);  spi_en = 1'b1; end
            Power: next = WaitPre;
            WaitPre: next = (cmd == 9'h103 ? Clear : Delay);
            Delay: begin next = delay_fin ? Clear : Delay; delay_en = 1'b1; end
            Clear: 
                if (cnt_cmd < nbcmd - 1) next = Idle;
                else if (cnt_cmd == nbcmd - 1) next = Done;
                else next = Clear;
            Done: begin 
                fin = 1'b1;
                next = (en ? Done : Idle);
            end
                
        endcase
    end
    
    
    // rejestr komendy
    always @(posedge clock, posedge reset)
        if (reset) cmd <= 9'b0;
        else if (current == Idle & en)
            cmd <= list_cmd[cnt_cmd];
            
    // licznik komend
    always @(posedge clock, posedge reset)
        if (reset) cnt_cmd <= {$clog2(nbcmd){1'b0}};
        else if (current == Clear) cnt_cmd <= cnt_cmd + 1;

    always @(posedge clock, posedge reset)
        if(reset) begin 
            vdd <= 1'b1;
            vbat <= 1'b1;
            res <= 1'b1;
        end
        else 
            case(cmd)
                9'h100: vdd <= 1'b0;
                9'h102: res <= 1'b0;
                9'h103: res <= 1'b1;
                9'h104: vbat <= 1'b0;
           endcase
           
    always @(posedge clock, posedge reset)
        if (reset) del_ms <= del1ms;
        else if(~vbat) del_ms <= delvbat;   //del100ms;
        else del_ms <= del1ms;


endmodule
