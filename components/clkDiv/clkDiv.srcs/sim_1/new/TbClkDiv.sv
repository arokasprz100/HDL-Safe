`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 01:45:04
// Design Name: 
// Module Name: TbClkDiv
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


module TbClkDiv();

    reg clk, rst, slowClk;
    wire gsr = glbl.GSR;
    localparam clockPeriodLength = 6;
    
    // UUT
    clkDiv #(.clockPeriodLength(clockPeriodLength)) uut (
        .clk(clk), .rst(rst), .slowClk(slowClk)
    );
    
    // clock generation
    initial begin
        clk = 1'b0;
        @(negedge gsr);
        forever #5 clk = ~clk;
    end
    
    // reset generation
    initial begin
        rst = 1'b1;
        @(negedge gsr);
        #5 rst = 1'b0; 
    end

endmodule
