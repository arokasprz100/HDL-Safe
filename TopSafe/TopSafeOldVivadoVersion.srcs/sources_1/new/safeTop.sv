`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 16:16:28
// Design Name: 
// Module Name: safeTop
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


module safeTop 
    #(
        parameter slowClockPeriodLength = 100000, // div
        parameter debouncerClockPeriodLength = 100000, // deb_div
        parameter areDebouncersUsed = 1, // deb
        parameter firstCodeNumber = 15, // first
        parameter secondCodeNumber = 30, // second
        parameter thirdCodeNumber = 22 // third
    )
    (
        input clk, rst, 
//        cnten2, // TODO: replace with master_fsm signal
        a, b, // encoder 
//        [1:0] sel, // TODO: replace with master_fsm signal 
//        output eq, // TODO: remove when master_fsm present
        output reg [7:0] diodes
    );
    
    wire [1:0] sel;
    assign cnten2 = 1'b1;
    assign sel = 2'b00;
    assign eq = 1'b0;
    
    // clock divider
    wire slowClk;
    ClockDiv #(.clockPeriodLength(slowClockPeriodLength)) CLKDIV (
        .clk(clk), .rst(rst), 
        .slowClk(slowClk)
    );
    
    wire aKnob, bKnob;
    // debouncers only if areDebouncersUsed = 1
    generate 
        if (areDebouncersUsed) begin : debGen
        
            // clock divider for debouncers
            wire debSlowClk;
            ClockDiv #(.clockPeriodLength(debouncerClockPeriodLength)) DEBCLKDIV (
                .clk(clk), .rst(rst), 
                .slowClk(debSlowClk)
            );
            
            // a signal debouncer 
            Debouncer #(.registerSize(3)) ADEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(a), .out(aKnob)
            );
            
            // b signal debouncer 
            Debouncer #(.registerSize(3)) BDEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(b), .out(bKnob)
            );
            
        end
        else begin : debNoGen
            assign aKnob = a;
            assign bKnob = b;
        end
    endgenerate
    
    // rse_decoder_fsm
    wire knobCounterEnable; // cnten (cnten1)
    wire isDirectionClockwise; // up
    wire isDirectionChanged; // dirch
    RseDecoder RSE_DECODER (
        .clk(slowClk), .rst(rst),
        .a(aKnob), .b(bKnob),
        .knobCounterEnable(knobCounterEnable),
        .isDirectionClockwise(isDirectionClockwise),
        .isDirectionChanged(isDirectionChanged)
    );

    // bcd_2dec
    wire [3:0] bcd0; 
    wire [3:0] bcd1;
    Bcd2Decades BCD2DEC (
        .clk(slowClk), .rst(rst),
        .cnten1(knobCounterEnable), .cnten2(cnten2), 
        .up(isDirectionClockwise), 
        .bcd0(bcd0), .bcd1(bcd1)
    );
    
    // dig_compare
    DigitCompare #(
        .firstCodeNumber(firstCodeNumber), 
        .secondCodeNumber(secondCodeNumber), 
        .thirdCodeNumber(thirdCodeNumber)) 
    DIGIT_COMPARE (
        .bcd1(bcd1), .bcd0(bcd0),
        .sel(sel), .eq(eq)
    );
    
    // placeholder to show status
    LedDriver LEDDRIVER(
        .clk(slowClk), .rst(rst), 
        .bcd1(bcd1), .bcd0(bcd0), 
        .diodes(diodes)
    );
    
endmodule
