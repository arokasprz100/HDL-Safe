`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2019 16:37:18
// Design Name: 
// Module Name: DigitCompare
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


// Two digit BCD number comparator.
module DigitCompare #(
    parameter firstCodeNumber = 15, 
    parameter secondCodeNumber = 30,
    parameter thirdCodeNumber = 22
    )
    (input [1:0] sel, [3:0] bcd1, [3:0] bcd0, output reg eq);
    
    // safe code - TODO: test
    reg [5:0] code[0:2];
    
    initial begin
        code[0] = firstCodeNumber; // first number - 15
        code[1] = secondCodeNumber; // second number - 30
        code[2] = thirdCodeNumber; // third number - 22
    end
    
    always@* begin
        eq = (code[sel] == (bcd1 * 10 + bcd0));
    end
     

endmodule
