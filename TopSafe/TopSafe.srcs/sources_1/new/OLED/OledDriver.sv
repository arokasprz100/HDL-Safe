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


module OledDriver #(parameter dvbat = 100) (
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
    fsm_init #(.delvbat(dvbat)) INIT(
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
        
    
    // here we store previous input values
    // TODO: synthesis generates warning here - consider rewriting
    reg previousBlank;
    reg [7:0] previousBcdData;
    always@(posedge clk, posedge rst)
        if(rst) begin 
            previousBlank <= blank;
            previousBcdData <= bcdData;
        end
        else if (current == hold) begin 
            previousBlank <= blank;
            previousBcdData <= bcdData;
        end
        else if (current == wait_for_change & next == oper) begin
            previousBlank <= blank;
            previousBcdData <= bcdData;
        end
        else begin 
            previousBlank <= previousBlank;
            previousBcdData <= previousBcdData;
        end
    
           
    // next state logic
    always@* begin
        next = idle;
        case (current) 
            idle: next = hold;
            hold: next = init_done ? oper : hold;
            oper: next = oper_done ? wait_for_change : oper; 
            wait_for_change: next = ((previousBlank != blank | (blank == 1'b0 & previousBcdData != bcdData)) ? oper : wait_for_change);
        endcase
    end
    
    
    assign fsm_init_en = (current == hold);
    assign fsm_oper_en = (current == oper);

endmodule
