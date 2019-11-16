`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2019 17:24:51
// Design Name: 
// Module Name: tb_digit_compare
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


module tb_digit_compare();

    reg [3:0] bcd1, bcd0; // dziesiatki, jednostki
    reg [1:0] sel; // wybor cyfry szyfru
    reg eq; // czy rowne
    
    // UUT
    digit_compare DC (.bcd1(bcd1), .bcd0(bcd0),
        .sel(sel), .eq(eq));
    
    initial begin 
        bcd1 = 4'd0;
        bcd0 = 4'd0;
        sel = 4'd0;
        
        // pierwsza cyfra      
        #100 bcd1 = 4'd1;
        bcd0 = 4'd5;
        
        // druga cyfra
        #10 sel = 4'd1;
        #100 bcd1 = 4'd3;
        bcd0 = 4'd0;
        
        // trzecia cyfra
        #10 sel = 4'd2;
        #100 bcd1 = 4'd2;
        bcd0 = 4'd0;
        #100 bcd1 = 4'd2;
        bcd0 = 4'd2;
        
    end

endmodule
