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


module delay #(parameter nbits = 4) (
        input clk, rst, en, 
        input [nbits-1:0] del_ms, 
        output reg fin
    );
    
    reg [nbits-1:0] cnt_ms;
    
    typedef enum {idle, hold, done} states_e; // system verilog
    states_e st, nst; // state, next state
    
    
    // state register
    always @(posedge clk, posedge rst)
        if(rst) st <= idle;
        else st <= nst;
    
    // next state logic
    always @* begin
        nst = idle;
        fin = 1'b0;
        case (st)
            idle: if(en) nst = hold; else nst = idle;
            hold: if(cnt_ms == del_ms) nst = done; else nst = hold;
            done: if(en) begin nst = done; fin = 1'b1; end else nst = idle;
        endcase
    end
    
    // we assume here that clocks period is 1ms
    // we increment the counter on every positive
    // clock edge
    always @(posedge clk, posedge rst)
        if (rst) cnt_ms <= {nbits{1'b0}};
        else if(st == hold) cnt_ms <= cnt_ms + 1;
        else cnt_ms <= {nbits{1'b0}};

endmodule
