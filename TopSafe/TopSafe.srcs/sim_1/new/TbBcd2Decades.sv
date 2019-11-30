`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2019 01:25:29
// Design Name: 
// Module Name: TbBcd2Decades
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


module TbBcd2Decades();
    
    // inputs
    reg clk, rst;
    reg cnten1, cnten2;
    reg up;
    reg clrCount;
    
    // outputs
    reg [3:0] bcd0; 
    reg [3:0] bcd1;

    // GSR
    wire gsr = glbl.GSR;


    // UUT
    Bcd2Decades #(.mod(32)) BCD2DEC (
        // inputs
        .clk(clk), .rst(rst),
        .cnten1(cnten1), .cnten2(cnten2), 
        .up(up),
        .clrCount(clrCount), 
        // outputs
        .bcd0(bcd0), .bcd1(bcd1)
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
    
    // cnten2 (from MasterFsm)
    initial begin 
        cnten2 = 1'b0;
        @(negedge gsr);
        #20 cnten2 = 1'b1;
    end
    
    // cnten1 (from RseDecoder - those are the counted impulses)
    // + up - counting direction
    // + clrCount - zeroes the counter
    integer i = 0;
    initial begin
        cnten1 = 1'b0;
        up = 1'b0;
        clrCount = 1'b0;
        @(negedge gsr);
        for (i = 0; i < 10; ++i) begin
            #10 up = {$random} % 2;
            #30 cnten1 = 1'b1;
            #10 cnten1 = 1'b0;
        end
        
        #500 clrCount = 1'b1;
        #20 clrCount = 1'b0;
        
    end
    
endmodule
