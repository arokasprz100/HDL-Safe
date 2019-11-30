`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2019 02:58:58 PM
// Design Name: 
// Module Name: Rom
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


module Rom (input clk, input [10:0] addr, input en, output reg[7:0] dout);
    
    reg[7:0] mem [0:1023]; // deklaracja 1kb pamieci
    initial $readmemh("pixel_SSD1306.dat", mem);
    
    always@(posedge clk)
        if (en) dout <= mem[addr];
        
        
endmodule
