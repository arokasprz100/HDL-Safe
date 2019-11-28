`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 02:41:52 PM
// Design Name: 
// Module Name: TbMasterFsm
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


module TbMasterFsm();
    
    reg clk, rst;
    wire gsr = glbl.GSR;
    
    reg isDirectionChanged, isDirectionClockwise, knobCounterEnable, doorCls, open, lock, eq;
    wire enableCounter, clearCounter, blank, triggerLock, isLockClosing;
    wire [1:0] numberSelector;
    
    MasterFsm MASTER_FSM(
        .clk(clk), .rst(rst),
        .isDirectionChanged(isDirectionChanged), .isDirectionClockwise(isDirectionClockwise), .knobCounterEnable(knobCounterEnable), .doorCls(doorCls), .open(open), .lock(lock), .eq(eq),
        .enableCounter(enableCounter), .clearCounter(clearCounter), .blank(blank), .triggerLock(triggerLock), .isLockClosing(isLockClosing),
        .numberSelector(numberSelector)
        );
    
    initial begin
        clk = 'b0;
        @(negedge gsr);
        forever #4 clk  = ~clk;
    end
    
    initial begin 
        rst = 'b0;
        @(negedge gsr);
        rst = 'b1;
        #4 rst  = 'b0;
    end
    
    initial begin
    
        isDirectionChanged = 'b0;
        isDirectionClockwise = 'b0;
        knobCounterEnable = 'b0;
        doorCls = 'b0;
        open = 'b0;
        lock = 'b0;
        eq = 'b0;
        
        @(negedge gsr);
        //locked
        #20 open = 'b1;
        #8 open = 'b0;
        //start
        #20 knobCounterEnable = 'b1;
        isDirectionClockwise = 'b1;
        //cw
        #20 eq = 'b1;
        isDirectionChanged = 'b1;
        #8 eq = 'b0;
        isDirectionChanged = 'b0;
        //first_ok
        #20 eq = 'b1;
        isDirectionChanged = 'b1;
        #8 eq = 'b0;
        isDirectionChanged = 'b0;
        //second_ok
        #20 open = 1'b1;
        eq = 'b1;
        #8 open = 'b0;
        eq = 'b0;
        //third_ok
        //unlocked
        #40 lock = 'b1;
        doorCls = 'b1;
        #8 lock = 'b0;
        //lock_ok
        //locked
        #8 doorCls = 'b0;
        
        
    end

endmodule
