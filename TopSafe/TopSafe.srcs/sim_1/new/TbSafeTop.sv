`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 16:17:43
// Design Name: 
// Module Name: TbSafeTop
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


module TbSafeTop();

    // UUT parameters
    localparam slowClockPeriodLength = 6; // real: 100 000
    localparam debouncerClockPeriodLength = 100000; // unused during behavioral sim.
    localparam areDebouncersUsed = 0; // disabled during sim - real: 1
    localparam firstCodeNumber = 15; // first part of code
    localparam secondCodeNumber = 30; // second part of code
    localparam thirdCodeNumber = 22; // third part of code
    
    
    // UUT inputs declaration
    reg clk; // clock
    reg rst; // reset
    reg a, b; // encoder input
    reg open, lock; // buttons
    reg doorCls; // closed door sensor - switch
    
    // UUT outputs declaration
    reg [7:0] diodes;
    reg triggerLock; // actuateLock - trigger lock position change
    reg isLockBeingOpened; // openCls - lock movement directory
    
    // outputs for OLED declaration
    reg sclk, sdo, dc;
    reg vdd, vbat, res;

    // GSR
    wire gsr = glbl.GSR;
    
    
    
    // UUT
    safeTop #(
        .slowClockPeriodLength(slowClockPeriodLength),
        .debouncerClockPeriodLength(debouncerClockPeriodLength),
        .areDebouncersUsed(areDebouncersUsed),
        .firstCodeNumber(firstCodeNumber),
        .secondCodeNumber(secondCodeNumber),
        .thirdCodeNumber(thirdCodeNumber)
    )
    SAFE_TOP (
        // inputs
        .clk(clk), .rst(rst),
        .a(a), .b(b),
        .open(open), .lock(lock),
        .doorCls(doorCls),
        // outputs
        .diodes(diodes),
        .triggerLock(triggerLock),
        .isLockBeingOpened(isLockBeingOpened),
        // OLED outputs
        .sclk(sclk), .sdo(sdo), .dc(dc),
        .vdd(vdd), .vbat(vbat), .res(res)
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
 

    // lock
    initial begin
        lock = 1'b0; // for now, do not try it
    end
 
    // doorCls
    initial begin
        doorCls = 1'b0; // doe now, do not try it
    end
 
    // a, b + open
    initial begin
        // initial state
        a = 1'b0; 
        b = 1'b0;
        open = 1'b0;
        @(negedge gsr);
        
        #200 open = 1'b1; // here we expect changing MasterFsm state to start
        #20 open = 1'b0;
        
        // first part of code - clockwise
        repeat(15) begin
            #220 a = 'b1;
            #30 b = 'b1;
            #60 a = 'b0;
            #30 b = 'b0;
        end
        
        // second part of code - counter clockwise
        repeat(17) begin // change to for example 15 to check if safe fails to unlock as it should
            #220 b = 'b1;
            #30 a = 'b1;
            #60 b = 'b0;
            #30 a = 'b0;
        end
        
        // third part of code - clockwise
        repeat(24) begin
            #220 a = 'b1;
            #30 b = 'b1;
            #60 a = 'b0;
            #30 b = 'b0;
        end
        
        #200 open = 1'b1; // after giving proper code
        #20 open = 1'b0;
        
        
    end

endmodule
