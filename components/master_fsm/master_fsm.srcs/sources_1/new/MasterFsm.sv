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
    output reg enableCounter, clearCounter, blank, numberSelector, triggerLock, isLockClosing,
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
    safeLockOn
    } statesE;
    
    statesE currentState, nextState;
    
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
                if(lock==1 && doorCls ==1) nextState = safeLockOn;
                else nextState = safeUnlocked;
                
            wrongNumber:
                nextState = safeLocked; //else na rysunku?
            
        endcase
    end
    
endmodule
