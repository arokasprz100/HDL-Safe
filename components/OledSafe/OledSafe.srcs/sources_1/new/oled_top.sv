`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2019 13:38:21
// Design Name: 
// Module Name: oled_top
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


module oled_top #(parameter mod = 100_000, dvbat = 100) (
    input clk, input rst,
    input blank, input [7:0] bcdData, 
    output sclk, sdo, dc,
    output reg vdd, vbat, res);

    // mozliwe stany
    typedef enum {idle, hold, oper, done} states_e;
    
    states_e current, next; // aktualny i nastepny stan
    
    reg dc_init, dc_oper;
    
    // instancja modulu inicjalizacji fsm_init
    fsm_init #(.modn(mod), .delvbat(dvbat)) INIT(
        .clock(clk),
        .reset(rst),
        .sclk(sclk_init),
        .sdo(sdo_init),
        .dc(dc_init),
        .vdd(vdd),
        .vbat(vbat),
        .res(res),
        .en(fsm_init_en),
        .fin(init_done)
    );
    
    // instancja modulu pracy normalnej fsm_oper
    fsm_oper OPER(
        .clk(clk),
        .rst(rst),
        .blank(blank),
        .bcdData(bcdData),
        .sdo(sdo_oper),
        .sclk(sclk_oper),
        .dc(dc_oper),
        .en(fsm_oper_en),
        .fin(oper_done)
    );
    
    // multipleksery
    assign sclk = (current == hold ? sclk_init : sclk_oper);
    assign dc = (current == hold ? dc_init : dc_oper);
    assign sdo = (current == hold ? sdo_init : sdo_oper);
    
    // zmiana stanu na nast�pny - rejestr stanow
    always@(posedge clk)
        if(rst) current <= idle;
        else current <= next;
        
    // logika zmiany stanu
    always@* begin
        next = idle;    
        case (current) 
            idle: next = hold;
            hold: next = init_done ? oper : hold;
            oper: next = oper_done ? done : oper; 
            done: next = done;       
        endcase
    end
    
    assign fsm_init_en = (current == hold);
    assign fsm_oper_en = (current == oper);

endmodule
