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
                begin
                    knobCounterEnable <= 0;
                    isDirectionChanged <= 0; // a moze tutaj zerowanie
                    if(a == 0) 
                        nextState = clockwiseWaitAUp;
                    else nextState = clockwiseWaitADown;
                end
            
            clockwiseWaitAUp:
                if(a == 1) nextState = clockwiseAPosedge;
                else nextState = clockwiseWaitAUp;
                
            clockwiseAPosedge:
                if(b == 1) begin
                    isDirectionChanged <= 1; // kiedy wyzerowac?
                    nextState = counterClockwiseCounter;
                end
                else begin
                    isDirectionChanged <= 0; // czy to tutaj powinno byc?
                    nextState = clockwiseCounter;
                end
                
            clockwiseCounter:
                begin
                   isDirectionClockwise <= 1; //na rysunku jest 0, ale to przecie¿ clockwise wiec powinno byc 1
                   knobCounterEnable <= 1; 
                   nextState <= clockwiseWaitADown;
                end
                
            counterClockwiseWaitADown:
                begin
                    knobCounterEnable <= 0;
                    isDirectionChanged <= 0; // a moze tutaj zerowanie
                    if(a == 0) 
                        nextState = counterClockwiseWaitAUp;
                    else nextState = counterClockwiseWaitADown;
                end
            
            counterClockwiseWaitAUp:
                if(a == 1) nextState = counterClockwiseAPosedge;
                else nextState = counterClockwiseWaitAUp;
                
            counterClockwiseAPosedge:
                if(b == 0) begin
                    isDirectionChanged <= 1; // kiedy wyzerowac?
                    nextState = clockwiseCounter;
                end
                else begin
                    isDirectionChanged <= 0; // czy to tutaj powinno byc?
                    nextState = counterClockwiseCounter;
                end
                
            counterClockwiseCounter:
                 begin
                   isDirectionClockwise <= 0; //na rysunku jest 1, ale to przecie¿ counterClockwise wiec powinno byc 0
                   knobCounterEnable <= 1; 
                   nextState <= counterClockwiseWaitADown;
                end
        endcase
        
    end
            
endmodule
