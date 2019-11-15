`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2019 01:28:35
// Design Name: 
// Module Name: bcd2dec
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
module bcd2dec #(parameter mod = 32, // max + 1 wartosc w liczniku
                parameter bits = $clog2(mod)) // liczba bitow na licznik - dla 32 powinno byc to 5
    (input clk, rst, up, cnten1, cnten2,
    output reg [3:0] bcd0, reg [3:0] bcd1);
    
    // licznik modulo 32 - zapisywany w zwyklym kodzie binarnym
    reg [bits-1:0] binary_counter;
    always@(posedge clk, posedge rst)
        if (rst) binary_counter <= {bits{1'b0}};
        else if (cnten1 & cnten2) begin // jesli liczenie wlaczone (TODO: sprawdzic czy to napewno tak dziala)
            if (up) binary_counter <= (binary_counter == mod - 1 ? {bits{1'b0}} : binary_counter + 1); // zliczanie w gore
            else binary_counter <= (binary_counter == 0 ? mod-1 : binary_counter - 1); // zliczenie w dol
        end
        else binary_counter <= binary_counter;
        
    
    // konwersja wartosci binarnej licznika na kod BCD

endmodule
