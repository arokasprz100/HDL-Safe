`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2019 02:48:49
// Design Name: 
// Module Name: tb_oled_top
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


module tb_oled_top();

    reg rst, clk;
    wire gsr = glbl.GSR;
integer di, ci;
    reg [7:0] data, cmd;
        
    oled_top #(.dvbat(2)) TOP(
        .clk(clk),
        .rst(rst),
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
        #1 di = 7; ci = 7;
    end
    
//model OLED 
always @(posedge sclk)
        if (dc) begin
            data[di] = sdo;
            if (di > 0)
                di = di - 1;
            else begin
                di = 7;
                $display($time, " nsData: %h", data);
            end
         end
    always @(posedge sclk)
             if (~dc) begin
                 cmd[ci] = sdo;
                 if (ci > 0)
                     ci = ci - 1;
                 else begin
                     ci = 7;
                     $display($time, " ns Command: %h (%h) (%h)", cmd, tb_oled_top.TOP.INIT.SPIInstance.indata, tb_oled_top.TOP.OPER.SPI_COMP.indata);
                 end
                 end
endmodule
