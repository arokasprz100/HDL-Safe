`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 14:57:48
// Design Name: 
// Module Name: TbOledSafe
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


module TbOledSafe();

    reg rst, clk;
    wire gsr = glbl.GSR;
    reg blank;
    reg [7:0] bcdData;
        
    OledSafe #(.dvbat(2)) TOP(
        .clk(clk),
        .rst(rst),
        .blank(blank), .bcdData(bcdData),
        .sclk(sclk), .sdo(sdo), .dc(dc),
        .vdd(vdd), .vbat(vbat), .res(res)
    );
    
    // zegar
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    // reset
    initial begin
        rst = 1'b0;
        @(negedge gsr);
        #1 rst = 1'b1;
        #3 rst = 1'b0;
    end
    
    // data
    initial begin
        blank = 1'b1;
        bcdData = 8'b00000000;
        @(negedge gsr);
        #500 blank = 1'b0;
        bcdData = 8'b00010110;
    end

endmodule
