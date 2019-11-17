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

    reg [3:0] bcd1, bcd0; 
    reg [1:0] sel; // digit selection
    reg eq;
    
    // UUT
    digit_compare uut (.bcd1(bcd1), .bcd0(bcd0),
        .sel(sel), .eq(eq));
    
    initial begin 
        bcd1 = 4'd0;
        bcd0 = 4'd0;
        sel = 4'd0;
        
        // first digit    
        #100 bcd1 = 4'd1;
        bcd0 = 4'd5;
        
        // second digit
        #10 sel = 4'd1;
        #100 bcd1 = 4'd3;
        bcd0 = 4'd0;
        
        // third digit
        #10 sel = 4'd2;
        #100 bcd1 = 4'd2;
        bcd0 = 4'd0;
        #100 bcd1 = 4'd2;
        bcd0 = 4'd2;
        
    end

endmodule
