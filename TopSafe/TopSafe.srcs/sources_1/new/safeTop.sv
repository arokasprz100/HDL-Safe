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
        parameter debouncerClockPeriodLength = 300007, // deb_div - must be high to remove glitches
        parameter areDebouncersUsed = 1, // deb
        parameter firstCodeNumber = 15, // first
        parameter secondCodeNumber = 30, // second
        parameter thirdCodeNumber = 9 // third
    )
    (
        input clk, rst, 
        a, b, // encoder 
        open, lock, // buttons
        doorCls, // closed door sensor - switch
        output reg [7:0] diodes,
        // OLED data
        output sclk, sdo, dc,
        output reg vdd, vbat, res
    );
    
    /////////////////////////////////////////////////
    // wires
    /////////////////////////////////////////////////
    
    // RseDecoder output
    wire knobCounterEnable; // cnten (cnten1)
    wire isDirectionClockwise; // up
    wire isDirectionChanged; // dirch
    
    // MasterFsm output
    wire enableCounter; // cntEn (cnten2)
    wire clearCounter; // clrCount
    wire blank; // blank
    wire [1:0] numberSelector; // sel
    wire triggerLock;
    wire isLockBeingOpened;
    
    // Bcd2Decades outputs
    wire [3:0] bcd0; // units
    wire [3:0] bcd1; // tens
    
    // DigitCompare outputs
    wire eq; // eq
    
    // Debouncers outputs
    wire aKnob, bKnob; // debounced a and b
    wire lockDeb, openDeb; // debounced lock and open
    
    // ClockDiv output
    wire slowClk;
    
    
    
    /////////////////////////////////////////////////
    // debouncers
    /////////////////////////////////////////////////
    
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
            filter #(.N(3)) ADEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(a), .out(aKnob)
            );
            
            // b signal debouncer 
            filter #(.N(3)) BDEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(b), .out(bKnob)
            );
            
            // open signal debouncer
            Debouncer #(.registerSize(3)) OPENDEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(open), .out(openDeb)
            );
            
            // lock signal debouncer
            Debouncer #(.registerSize(3)) LOCKDEBOUNCER (
                .clk(debSlowClk), .rst(rst), .in(lock), .out(lockDeb)
            );
            
        end
        else begin : debNoGen
            assign aKnob = a;
            assign bKnob = b;
            assign openDeb = open;
            assign lockDeb = lock;
        end
    endgenerate
    
    
    
    /////////////////////////////////////////////////
    // instances
    /////////////////////////////////////////////////
    
    
    // clock divider
    ClockDiv #(.clockPeriodLength(slowClockPeriodLength)) CLK_DIV (
        .clk(clk), .rst(rst), 
        .slowClk(slowClk)
    );
    
    
    MasterFsm MASTER_FSM (
        .clk(slowClk), .rst(rst),
        .isDirectionChanged(isDirectionChanged), // dirch
        .isDirectionClockwise(isDirectionClockwise), // up
        .knobCounterEnable(knobCounterEnable), // cnten (cnten1)
        .enableCounter(enableCounter), // countEn (cnten2)
        .clearCounter(clearCounter), // clrCount
        .doorCls(doorCls), // doorCls
        .eq(eq), // eq
        .blank(blank), // blank
        .numberSelector(numberSelector), // sel
        .open(openDeb), // open
        .lock(lockDeb), // lock
        .triggerLock(triggerLock), // actuateLock
        .isLockBeingOpened(isLockBeingOpened) // openCls
    );
    
    
    // rse_decoder_fsm
    RseDecoder RSE_DECODER (
        .clk(slowClk), .rst(rst),
        .a(aKnob), .b(bKnob),
        .knobCounterEnable(knobCounterEnable),
        .isDirectionClockwise(isDirectionClockwise),
        .isDirectionChanged(isDirectionChanged)
    );


    Bcd2Decades BCD2DEC (
        .clk(slowClk), .rst(rst),
        .cnten1(knobCounterEnable), 
        .cnten2(enableCounter), 
        .up(isDirectionClockwise), 
        .clrCount(clearCounter),
        .bcd0(bcd0), .bcd1(bcd1)
    );
    
    
    // dig_compare
    DigitCompare #(
        .firstCodeNumber(firstCodeNumber), 
        .secondCodeNumber(secondCodeNumber), 
        .thirdCodeNumber(thirdCodeNumber)) 
    DIGIT_COMPARE (
        .bcd1(bcd1), .bcd0(bcd0),
        .sel(numberSelector), 
        .eq(eq)
    );
    
    
    // placeholder to show status
    LedDriver LED_DRIVER(
        .clk(slowClk), .rst(rst), 
        .bcd1({3'b000, isLockBeingOpened}), .bcd0({3'b000, triggerLock}), 
        .diodes(diodes)
    );
    
    
    OledDriver #(.mod(100_000), .dvbat(100)) OLED_DRIVER (
        .clk(clk), .rst(rst),
        .blank(blank), 
        .bcdData({bcd1, bcd0}),
        .sclk(sclk), .sdo(sdo), .dc(dc),
        .vdd(vdd), .vbat(vbat), .res(res)
    );
    
endmodule
