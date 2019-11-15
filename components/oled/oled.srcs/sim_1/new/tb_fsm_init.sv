`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 15:40:20
// Design Name: 
// Module Name: tb_fsm_init
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


module tb_fsm_init();

    reg clk, rst, en; // wejscia do fsm_init
    reg sclk, sdo, dc, vdd, vbat, res;
        
    wire gsr = glbl.GSR;
    
    fsm_init FSM_INIT(
        .clock(clk),
        .reset(rst),
        .en(en),
        .sclk(sclk),
        .sdo(sdo),
        .dc(dc),
        .vdd(vdd),
        .vbat(vbat),
        .res(res)
    );
    
    // zegar + reset
    initial begin 
        clk = 1'b1;
        rst = 1'b1;
        @(negedge gsr);
        #5 rst = 1'b0;
        forever #5 clk = ~clk;
    end
    
    // enable
    initial begin
        en = 1'b1;
        forever #3200 begin
            en = 1'b1;
        end
    end
    

endmodule
