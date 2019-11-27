`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 16:17:43
// Design Name: 
// Module Name: TbSafeTop
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


module TbSafeTop();

    reg clk, rst;
    reg a, b; // encoder input
    reg [1:0] sel; // TODO: remove when master_fsm present
    reg eq; // TODO: remove when master_fsm present
    reg [7:0] diodes;
    
    wire gsr = glbl.GSR;
    
    // UUT
    safeTop #(
        .slowClockPeriodLength(6),
        .debouncerClockPeriodLength(2))
    SAFE_TOP (
        .clk(clk), .rst(rst),
        .a(a), .b(b),
//        .sel(sel), .eq(eq), 
        .diodes(diodes)
    );
    
    // clock
    initial begin
        clk = 1'b0;
        @(negedge gsr);
        forever #5 clk = ~clk;
    end
    
    // reset 
    initial begin
        rst = 1'b1;
        @(negedge gsr);
        #5 rst = 1'b0;
    end
    
    // a, b, sel
    initial begin
        a = 1'b0; 
        b = 1'b0;
        sel = 2'b00;
        
        @(negedge gsr);
        
        //clockwise and reset
        #20 a = 'b1;
        #15 b = 'b1;
        #45 a = 'b0;
        #15 b = 'b0;
        
        
        
        // TODO: make better testbench
        #200 b = 'b1;
        #15 a = 'b1;
        #45 b = 'b0;
        #25 a = 'b0;
        
        
    end

endmodule
