`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2019 02:07:10 PM
// Design Name: 
// Module Name: delay
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


module delay #(parameter nbits = 4, mod = 100000) (input clk, rst, en, input [nbits-1:0] del_ms, output reg fin);
    
    reg [nbits-1:0] cnt_ms;
    localparam n = $clog2(mod); // system verilog udostepnia juz taka funkcje
    reg[n-1:0] cnt1ms;
    
    typedef enum {idle, hold, done} states_e; // system verilog
    
    states_e st, nst; // state, next state
    
    // maszyna stanow: rejestr stanow, logika stanu nastepnego, 
    
    always @(posedge clk, posedge rst)
        if(rst) st <= idle;
        else st <= nst;
        
    always @* begin
        nst = idle;
        fin = 1'b0;
        case (st)
            idle: if(en) nst = hold; else nst = idle;
            hold: if(cnt_ms == del_ms) nst = done; else nst = hold;
            done: if(en) begin nst = done; fin = 1'b1; end else nst = idle;
        endcase
    end
    
    always @(posedge clk, posedge rst)
        if(rst) cnt1ms <= {n{1'b0}};
        else if(st == hold) 
            if(cnt1ms != mod - 1) cnt1ms <= cnt1ms + 1;
            else cnt1ms <= {n{1'b0}};
        else cnt1ms <= {n{1'b0}};

    always @(posedge clk, posedge rst)
        if (rst) cnt_ms <= {nbits{1'b0}};
        else if(st == hold) begin
            if(cnt1ms == mod - 1)
                cnt_ms <= cnt_ms + 1;
        end
        else cnt_ms <= {nbits{1'b0}};

endmodule
