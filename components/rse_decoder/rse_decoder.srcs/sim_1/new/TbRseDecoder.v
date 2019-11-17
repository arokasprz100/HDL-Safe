`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 15:13:51
// Design Name: 
// Module Name: TbRseDecoder
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


module TbRseDecoder();

    reg clk, rst;
    reg a,b;
    wire gsr = glbl.GSR;
    wire knobCounterEnable, isDirectionClockwise, isDirectionChanged;
    
    rse_decoder RSE_DECODER(.a(a), .b(b), .clk(clk), .rst(rst), .knobCounterEnable(knobCounterEnable), .isDirectionClockwise(isDirectionClockwise), .isDirectionChanged(isDirectionChanged));
    
    initial
    begin
        clk = 'b0;
        @(negedge gsr);
        forever #4 clk  = ~clk;
    end
    
    initial
    begin 
        rst = 'b0;
        @(negedge gsr);
        rst = 'b1;
        #4 rst  = 'b0;
    end
    
    initial 
    begin
        a = 'b0;
        b = 'b0;
        @(negedge gsr);
        
        //clockwise and reset
        #8 a = 'b1;
        #6 b = 'b1;
        #12 a = 'b0;
        #6 b = 'b0;
        
        //clockwise and reset
        #40 a = 'b1;
        #6 b = 'b1;
        #12 a = 'b0;
        #6 b = 'b0;
        
        //counterclockwise and reset
        #40 b = 'b1;
        #6 a = 'b1;
        #12 b = 'b0;
        #6 a = 'b0;
    
        //counterclockwise and reset
        #40 b = 'b1;
        #6 a = 'b1;
        #12 b = 'b0;
        #6 a = 'b0;
        
        //clockwise and reset
        #40 a = 'b1;
        #6 b = 'b1;
        #12 a = 'b0;
        #6 b = 'b0;
        
        //clockwise and reset
        #40 a = 'b1;
        #6 b = 'b1;
        #12 a = 'b0;
        #6 b = 'b0;
        
    end
endmodule
