`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2019 13:38:21
// Design Name: 
// Module Name: OledDriver
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


module OledDriver #(parameter mod = 100_000, dvbat = 100) (
    input clk, input rst,
    input blank, 
    input [7:0] bcdData, 
    output sclk, sdo, dc,
    output reg vdd, vbat, res);

    // possible states
    typedef enum {idle, hold, oper, wait_for_change} states_e;
    
    states_e current, next; // current and next state
    
    reg dc_init, dc_oper;
    wire sclk_init, sdo_init, fsm_init_en, init_done; // fsm_init inputs
    wire sclk_oper, sdo_oper, fsm_oper_en, oper_done; // fsm_oper inputs
    
    // fsm_init module instance
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
    
    // fsm_oper module instance
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
    
    // multiplexers
    assign sclk = (current == hold ? sclk_init : sclk_oper);
    assign dc = (current == hold ? dc_init : dc_oper);
    assign sdo = (current == hold ? sdo_init : sdo_oper);
    
    // state register
    always@(posedge clk, posedge rst)
        if(rst) current <= idle;
        else current <= next;
        
    
    // input change (blank) detection
    // TODO: figure out better way that will work on the edge of clock
    reg tmp;
    always@(posedge clk, posedge rst)
        if(rst) tmp <= 1'b1;
        else tmp <= blank;
        
    assign blank_changed = (tmp ^ blank); // XOR
        
    // TODO: add check if bcdData changed
        
        
    // next state logic
    always@* begin
        next = idle;    
        case (current) 
            idle: next = hold;
            hold: next = init_done ? oper : hold;
            oper: next = oper_done ? wait_for_change : oper; 
            wait_for_change: next = (blank_changed ? oper : wait_for_change);
        endcase
    end
    
    
    assign fsm_init_en = (current == hold);
    assign fsm_oper_en = (current == oper);

endmodule
