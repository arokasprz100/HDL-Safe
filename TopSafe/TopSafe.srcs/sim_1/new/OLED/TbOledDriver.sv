`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 22:42:52
// Design Name: 
// Module Name: TbOledDriver
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


module TbOledDriver();
    
    
    
    reg rst, clk;
    wire gsr = glbl.GSR;
    reg blank;
    reg [7:0] bcdData;
    wire sclk, sdo, dc, vdd, vbat, res;
        
    OledDriver #(.mod(1), .dvbat(100)) TOP (
        .clk(clk),
        .rst(rst),
        .blank(blank),
        .bcdData(bcdData),
        .sclk(sclk), .sdo(sdo), .dc(dc),
        .vdd(vdd), .vbat(vbat), .res(res)
    );
    
    // clock
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
        bcdData = {4'd0, 4'd0};
        @(negedge gsr);
        @(negedge vbat);
        
        // first screen change
        #2000000 blank = 1'b0;
        
        // second screen change
        #2000000 blank = 1'b1;
        
        // third screen change
        bcdData = {4'd1, 4'd5};
        #2000000 blank = 1'b0;
        
        // fourth screen change
        #2000000 bcdData = {4'd2, 4'd2};
        
    end
    
    
endmodule
