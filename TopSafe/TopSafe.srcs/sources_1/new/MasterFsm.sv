`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2019 21:29:14
// Design Name: 
// Module Name: MasterFsm
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


module MasterFsm(
    input clk, rst,
    input isDirectionChanged, isDirectionClockwise, knobCounterEnable, doorCls, open, lock, eq,
    output reg enableCounter, clearCounter, blank, triggerLock, isLockClosing,
    output reg [1:0] numberSelector
    );
    
    
    typedef enum {
    safeLocked,
    startOpening,
    waitKnobCounterEnable,
    firstNumberGood,
    secondNumberGood,
    thirdNumberGood,
    wrongNumber,
    safeUnlocked,
    safeLockGood
    } statesE;
    
    statesE currentState, nextState;
    
    always @(posedge clk, posedge rst)
        if(rst) currentState <= safeLocked;
        else currentState <= nextState;
    
    always @* begin
        nextState = safeLocked;
        
        case (currentState)
            
            safeLocked:
                if(open == 1) nextState = startOpening;
                else nextState = safeLocked;
                
            startOpening:
                if(knobCounterEnable == 1 && isDirectionClockwise == 1) nextState = waitKnobCounterEnable;
                else nextState = startOpening;
                
            waitKnobCounterEnable:
                if(isDirectionChanged == 1 && eq == 1) nextState = firstNumberGood;
                else if(isDirectionChanged == 1 && eq == 0) nextState = wrongNumber;
                else nextState = waitKnobCounterEnable;
            
            firstNumberGood:
                if(isDirectionChanged == 1 && eq == 1) nextState = secondNumberGood;
                else if(isDirectionChanged == 1 && eq == 0) nextState = wrongNumber;
                else nextState = firstNumberGood;
            
            secondNumberGood:
                if(open == 1 && eq == 1) nextState = thirdNumberGood;
                else if(isDirectionChanged == 1 && eq == 0) nextState = wrongNumber;
                else nextState = secondNumberGood;
                
            thirdNumberGood:
                nextState = safeUnlocked;
                
            safeUnlocked:
                if(lock==1 && doorCls ==1) nextState = safeLockGood;
                else nextState = safeUnlocked;
            
            safeLockGood:
                nextState = safeLocked;
                
            wrongNumber:
                nextState = safeLocked; //else na rysunku?
            
        endcase
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) triggerLock <= 'b0;
        else if(currentState == safeLocked) triggerLock <= 'b0;
        else if(currentState == thirdNumberGood) triggerLock <= 'b1;
        else if(currentState == safeLockGood)
            if(doorCls == 1)
                triggerLock <= 'b1;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) blank <= 'b1;
        else if(currentState == startOpening) blank <= 'b0;
        else if(currentState == safeLocked) blank <= 'b1;
        else if(currentState == safeUnlocked) blank <= 'b1;
        else if(currentState == safeLockGood) blank <= 'b1;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) enableCounter <= 'b0;
        else if(currentState == safeLocked) enableCounter <= 'b0;
        else if(currentState == startOpening) enableCounter <= 'b1;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) clearCounter <= 'b1;
        else if(currentState == safeLocked) clearCounter <= 'b1;
        else if(currentState == startOpening) clearCounter <= 'b0; 
        else if(currentState == safeUnlocked) clearCounter <= 'b1;
        else if(currentState == safeLockGood) clearCounter <= 'b0;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) isLockClosing <= 'b0;
        else if(currentState == safeLocked) isLockClosing <= 'b0;
        else if(currentState == thirdNumberGood) isLockClosing <= 'b1;
        else if(currentState == safeLockGood) isLockClosing <= 'b0;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) numberSelector <= 'b00;
        else if(currentState == safeLocked) numberSelector <= 'b00;
        else if(currentState == firstNumberGood) numberSelector <= 'b01;
        else if(currentState == secondNumberGood) numberSelector <= 'b10;
        else if(currentState == thirdNumberGood) numberSelector <= 'b00;
    end
    
endmodule
