`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 01:31:51
// Design Name: 
// Module Name: ClockDiv
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


module ClockDiv #(parameter clockPeriodLength = 100000)
    (input clk, input rst, output reg slowClk);
    
    localparam halfOfPeriodLength = clockPeriodLength/2;
    localparam numberOfBitsInCounter = $clog2(halfOfPeriodLength);
    
    // counter
    reg [numberOfBitsInCounter-1:0] counter;
    always@(posedge clk, posedge rst)
        if(rst) counter <= halfOfPeriodLength - 1;
        else if (counter == 0) counter <= halfOfPeriodLength - 1;
        else counter <= counter - 1;
    
    // output - divided clock
    always@(posedge clk, posedge rst)
        if (rst) slowClk <= 1'b0;
        else if (counter == 0) slowClk <= ~slowClk;
        else slowClk <= slowClk;
    
endmodule
