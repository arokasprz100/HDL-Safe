`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2019 21:54:05
// Design Name: 
// Module Name: LedDriver
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


module LedDriver #(parameter bcdDigitSize = 4)
    (input clk, rst, [bcdDigitSize-1:0] bcd1, [bcdDigitSize-1:0] bcd0, 
    output reg [(2*bcdDigitSize)-1:0] diodes);
    
    always@(posedge clk, posedge rst)
        if(rst) diodes <= {(2*bcdDigitSize){1'b0}};
        else diodes <= {bcd1, bcd0};
        
    
endmodule
