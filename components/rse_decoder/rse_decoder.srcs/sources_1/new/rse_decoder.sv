`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2019 21:07:57
// Design Name: 
// Module Name: rse_decoder
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


module rse_decoder(
    input clk, rst,
    // signals from knob
    // if a precedees b then knob was turned clockwise
    // otherwise it was turned counter clockwise
    // diferences between a and b signal in both cases are 1/4 of period
    input a, b,
    //knobCounterEnable - signals that knob was turned
    //isDirectionClockwise - true if turn direction is clockwise, false if counter clockwise
    //isDirectionChanged - true if turn direction is opposite to the previous one
    output reg knobCounterEnable, isDirectionClockwise, isDirectionChanged
    );
    
    typedef enum {
    clockwiseWaitADown, 
    clockwiseWaitAUp, 
    clockwiseAPosedge, 
    clockwiseCounter, 
    counterClockwiseWaitADown, 
    counterClockwiseWaitAUp, 
    counterClockwiseAPosedge,
    counterClockwiseCounter}
    statesE;
    
    statesE currentState, nextState;
    
    always @(posedge clk, posedge rst)
        if(rst) currentState <= clockwiseWaitADown;
        else currentState <= nextState;
    
    always @* begin
        if (currentState inside {counterClockwiseWaitADown, 
                                counterClockwiseWaitAUp, 
                                counterClockwiseAPosedge, 
                                counterClockwiseCounter})
            nextState = counterClockwiseWaitADown;
        else
            nextState = clockwiseWaitADown;
            
        case (currentState)
        
            clockwiseWaitADown: 
                if(a == 0) nextState = clockwiseWaitAUp;
                else nextState = clockwiseWaitADown;
            
            clockwiseWaitAUp:
                if(a == 1) nextState = clockwiseAPosedge;
                else nextState = clockwiseWaitAUp;
                
            clockwiseAPosedge:
                if(b == 1) nextState = counterClockwiseCounter;
                else nextState = clockwiseCounter;
                
            clockwiseCounter: nextState = clockwiseWaitADown;
                
            counterClockwiseWaitADown:
                if(a == 0) nextState = counterClockwiseWaitAUp;
                else nextState = counterClockwiseWaitADown;
            
            counterClockwiseWaitAUp:
                if(a == 1) nextState = counterClockwiseAPosedge;
                else nextState = counterClockwiseWaitAUp;
                
            counterClockwiseAPosedge:
                if(b == 0) nextState = clockwiseCounter;
                else nextState = counterClockwiseCounter;
                
            counterClockwiseCounter: nextState = counterClockwiseWaitADown;
        endcase
    end
        
    always @(posedge clk, posedge rst) 
    begin
        if(rst) knobCounterEnable <= 0;
        else if(currentState == counterClockwiseCounter || currentState == clockwiseCounter)
            knobCounterEnable <= 1;
        else
            knobCounterEnable <= 0;
    end
    
    always @(posedge clk, posedge rst)
    begin
        if(rst) isDirectionClockwise <= 0;
        else if(currentState == clockwiseCounter)
            isDirectionClockwise <= 1;
        else
            isDirectionClockwise <= 0;
    end
    
    always @(posedge clk, posedge rst)
    begin
        if(rst) isDirectionChanged <= 0;
        else if(currentState == counterClockwiseAPosedge)
        begin
            if(b==0)
                isDirectionChanged <= 1;
            else
                isDirectionChanged <= 0;
        end
        else if(currentState == clockwiseAPosedge)
        begin
            if(b==0)
                isDirectionChanged <= 0;
            else
                isDirectionChanged <= 1;
        end
        else
            isDirectionChanged <= 0;
    end
        
            
endmodule
