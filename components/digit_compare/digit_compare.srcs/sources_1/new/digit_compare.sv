`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2019 16:37:18
// Design Name: 
// Module Name: digit_compare
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
module digit_compare(input [1:0] sel, [3:0] bcd1, [3:0] bcd0, output reg eq);
    
    // safe code
    reg [3:0] code[0:2][0:1];
    
    initial begin
        // first digit - 15
        code[0][0] = 4'd5;
        code[0][1] = 4'd1;
        
        // second digit - 30
        code[1][0] = 4'd0;
        code[1][1] = 4'd3;
        
        // third digit - 22
        code[2][0] = 4'd2;
        code[2][1] = 4'd2;
       
    end
    
    always@* begin
        eq = ((bcd1 == code[sel][1]) & (bcd0 == code[sel][0]));
    end
     

endmodule
