`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 14:21:22
// Design Name: 
// Module Name: OledSafe
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


module OledSafe(input clk, input rst, 
    // input [7:0] bcdData,
    input blank,
    output sclk, sdo, dc,
    output reg vdd, vbat, res
    );
    
    oled_top TOP (
        .clk(clk), .rst(rst),
        .blank(blank), .bcdData(8'b00000000),
        .sclk(sclk), .sdo(sdo), .dc(dc),
        .vdd(vdd), .vbat(vbat), .res(res)
    );
    
endmodule
