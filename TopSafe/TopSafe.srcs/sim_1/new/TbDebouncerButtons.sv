`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 21:03:41
// Design Name: 
// Module Name: TbDebouncerButtons
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


module TbDebouncerButtons();

    localparam registerSize = 3;

    reg clk, rst, in;
    reg out;
    
    wire gsr = glbl.GSR;
    
    // UUT
    DebouncerButtons #(.registerSize(registerSize)) DEBOUNCER (
        .clk(clk), .rst(rst), .in(in), .out(out)
    );
    
    // clock
    initial begin
        clk = 1'b1;
        @(negedge gsr);
        forever #5 clk = ~clk;
    end 
   
    // reset 
    initial begin
        rst = 1'b1;
        @(negedge gsr);
        #5 rst = 1'b0;
    end

    // in
    always@(negedge clk)
        in <= {$random} % 2;

endmodule
