`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2019 01:28:35
// Design Name: 
// Module Name: Bcd2Decades
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

// Licznik BCD, dwucyfrowy, modulo 32
module Bcd2Decades #(parameter mod = 32, // max + 1 wartosc w liczniku
                parameter bits = $clog2(mod)) // liczba bitow na licznik - dla 32 powinno byc to 5
    (input clk, rst, up, cnten1, cnten2,
    output reg [3:0] bcd0, reg [3:0] bcd1);
    
    // licznik modulo 32 - zapisywany w zwyklym kodzie binarnym
    reg [bits-1:0] binary_counter;
    always@(posedge clk, posedge rst)
        if (rst) begin 
            binary_counter <= {bits{1'b0}};
        end
        else if (cnten1 & cnten2) begin // jesli liczenie wlaczone
            if (up) begin 
                binary_counter <= (binary_counter == mod - 1 ? {bits{1'b0}} : binary_counter + 1); // zliczanie w gore
            end
            else begin 
                binary_counter <= (binary_counter == 0 ? mod-1 : binary_counter - 1); // zliczenie w dol
            end
        end
        else begin 
            binary_counter <= binary_counter;
        end
        
        
    // konwersja wartosci binarnej licznika na kod BCD
    // bcd1 - dziesiatki
    // bcd0 - jednostki
    reg [3:0] bcd0tmp;
    reg [3:0] bcd1tmp;
    always@* begin // algorytm: https://my.eng.utah.edu/~nmcdonal/Tutorials/BCDTutorial/BCDConversion.html
        automatic integer i = 0;
        bcd0tmp = 4'b0000;
        bcd1tmp = 4'b0000;
        for (i = 0; i < 5; i = i + 1) begin
            bcd0tmp = (bcd0tmp >= 5 ? bcd0tmp + 4'd3 : bcd0tmp);
            bcd1tmp = (bcd1tmp >= 5 ? bcd1tmp + 4'd3 : bcd1tmp);
            
            bcd1tmp = bcd1tmp << 1;
            bcd1tmp[0] = bcd0tmp[3];
            bcd0tmp = bcd0tmp << 1;
            bcd0tmp[0] = binary_counter[bits-i-1];
        end
    end
    
    
    // przerzutnik dla wartosci kodu BCD
    always@(posedge clk, posedge rst)
        if(rst) begin
            bcd0 <= 4'b0000;
            bcd1 <= 4'b0000;
        end
        else begin
            bcd0 <= bcd0tmp;
            bcd1 <= bcd1tmp;
        end
        

endmodule
