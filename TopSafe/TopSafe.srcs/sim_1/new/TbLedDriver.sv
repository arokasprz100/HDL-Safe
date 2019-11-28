`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2019 21:59:54
// Design Name: 
// Module Name: TbLedDriver
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


module TbLedDriver();

    localparam bcdDigitSize = 4;

    reg clk, rst; 
    reg [bcdDigitSize-1:0] bcd1;
    reg [bcdDigitSize-1:0] bcd0;
    reg [(2*bcdDigitSize)-1:0] diodes;
    
    wire gsr = glbl.GSR;
    
    // UUT
    LedDriver #(.bcdDigitSize(bcdDigitSize)) uut (
        .clk(clk), .rst(rst), .bcd0(bcd0), .bcd1(bcd1), .diodes(diodes)
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
    
    // digits
    initial begin
        bcd0 = {bcdDigitSize{1'b0}};
        bcd1 = {bcdDigitSize{1'b0}};
        @(negedge gsr);
        
        // 28
        #200 bcd0 = 4'd8;
        bcd1 = 4'd2;
        
        // 31
        #400 bcd0 = 4'd1;
        bcd1 = 4'd3;
    end

endmodule
