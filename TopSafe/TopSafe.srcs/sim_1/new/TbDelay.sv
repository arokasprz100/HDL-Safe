`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2019 19:45:08
// Design Name: 
// Module Name: TbDelay
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


module TbDelay();

    // module parameters
    localparam nbits = 4;

    // inputs 
    reg clk, rst, en;
    reg [nbits-1:0] delayLength; // in clock cycles * mod
    
    // outputs
    reg fin;
    
    // GSR
    wire gsr = glbl.GSR;
    
    // UUT
    Delay #(.nbits(nbits), .mod(10)) UUT (
        .clk(clk), .rst(rst),
        .en(en), .del_ms(delayLength),
        .fin(fin)
    );
    
    
    // inputs generation
    
    // clock
    initial begin
        clk = 1'b0;
        @(negedge gsr);
        forever #5 clk = ~clk;
    end
    
    // reset
    initial begin
        rst = 1'b1;
        @(negedge gsr);
        #5 rst = 1'b0;
    end
    
    // delayLength + en
    initial begin
        delayLength = 'b1;
        en = 1'b0;
        @(negedge gsr);
        #20 en = 1'b1;
        #300 en = 1'b0;
        
        #5 delayLength = 10;
        #20 en = 1'b1;
        #5000 en = 1'b0; 
    end

endmodule
