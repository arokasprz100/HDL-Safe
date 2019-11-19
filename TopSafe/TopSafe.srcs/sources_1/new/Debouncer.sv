`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 19:47:24
// Design Name: 
// Module Name: Debouncer
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
module Debouncer #(parameter registerSize=3)(input clk, rst, in, output reg out);

    reg [registerSize-1:0] shiftRegister;
    always@(posedge clk, posedge rst)
        if (rst) shiftRegister <= {registerSize{1'b0}};
        else shiftRegister <= {shiftRegister[registerSize-2:0], in};
    
    // JK flip flop
    always@(posedge clk, posedge rst)
        if (rst) out <= 1'b0;
        else if ((&shiftRegister) & !(&(~shiftRegister))) out <= 1'b1; // J=1, K=0
        else if (!(&shiftRegister) & (&(~shiftRegister))) out <= 1'b0; // J=0, K=1
        else if ((&shiftRegister) & (&(~shiftRegister))) out <= ~out; // J=1, K=1
        else out <= out; // J=0, K=0


endmodule
