`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 03:47:19 PM
// Design Name: 
// Module Name: spi
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


module spi #(parameter nb = 8)(input clk, rst, en, input[nb-1:0] indata, output sclk, fin, reg sdo);

    localparam bcs = $clog2(nb);

    reg[nb-1:0] shr; // rejestr przesuwny 
    reg last_bit, sh;
    reg tm; // bedzie sclk przesunietym 
    reg[4:0] div; // 5 bitow zeby moc dzielic przez 32
    reg [bcs:0] bit_counter; //licznik bit�w transmitowanych

   

    typedef enum{idle, send, hold1, done} states_e;
    
    states_e st, nst; // aktualny i nastepny stan
    
    // rejestr stanow
    // jesli reset, to zmieniamy na idle, w przeciwnym
    // razie przelaczamy na nastepny stan
    always @(posedge clk, posedge rst)
        if (rst) st <= idle;
        else st <= nst;
    
    
    // logika stanu nast�pnego
    always @* begin 
        nst = idle;
        case (st)
            idle: nst = en ? send : idle;
            send: nst = last_bit ? hold1 : send;
            hold1: nst = done;
            done: nst = en ? done : idle;
        endcase
    end
    
    // rejestr przesuwny
    always @(posedge clk, posedge rst)
        if (rst) shr <= {nb{1'b0}};
        else if (st == idle & en) shr <= indata;
        else if (st == send & sh) // raz na okres dlugiego zegara 
            shr <= {shr[nb - 2 : 0], 1'b0};
            
    // przerzutnik wyjsciowy
    always @ (posedge clk, posedge rst)
        if (rst) sdo <= 1'b0;
        else if (st == send & sh) sdo <= shr[nb-1];
        
    // generator sygnalu zakonczenia
    // ustawiamy wyjscie na true jesli stan jest done - to
    // znaczy ze skonczylismy
    assign fin = (st == done);
    
    // sclk - robimy za pomoc� dzielnika zegara
    always @(posedge clk, posedge rst)
        if(rst) div <= 5'b0;
        else if(st == send)
            div <= div + 1; // liczy od 0 do 31 w k�lko, modulo robi sam rozmiar rejestru
        else div <= 5'b0;
        
    assign sclk = ~div[4]; // ten najwolniej zmieniajacy sie bit - dziala jak dzielnik zegara
    
    always @(posedge clk, posedge rst)
        if(rst) tm <= 1'b0; // pomocniczy przerzutnik tm
        else tm <= sclk;
    
    // detektor zbocza opadajacego
    assign sh = ~sclk & tm; // zbocze opadajace - tm trzyma stara wartosc sclk
    
    // licznik bitow
    always @(posedge clk, posedge rst)
        if(rst) bit_counter <= {(bcs+1){1'b0}};
        else if (st == idle) bit_counter <= {(bcs+1){1'b0}};
        else if(st == send & sh) begin 
            bit_counter <= bit_counter + 1;
        end 
        
    assign last_bit = (bit_counter == nb);
    
endmodule
