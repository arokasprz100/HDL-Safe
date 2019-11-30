`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 19:47:24
// Design Name: 
// Module Name: DebouncerButtons
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

// implemented as shift register
module DebouncerButtons #(parameter registerSize=3)(input clk, rst, in, output reg out);

    reg [registerSize:0] shiftRegister;
    always@(posedge clk, posedge rst)
        if (rst) shiftRegister <= {registerSize{1'b0}};
        else shiftRegister <= {shiftRegister[registerSize-1:0], in};
    

    always@(posedge clk, posedge rst)
        if (rst) out <= 1'b0;
        else if (&(shiftRegister[registerSize:1])) out <= 1'b1; 
        else out <= 1'b0; 


endmodule
