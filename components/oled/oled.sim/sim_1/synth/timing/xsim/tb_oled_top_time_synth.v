// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Nov 13 17:45:36 2019
// Host        : DESKTOP-0UFI2AD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/arkad/Desktop/HDL_laboratorium/oled/oled.sim/sim_1/synth/timing/xsim/tb_oled_top_time_synth.v
// Design      : oled_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module delay
   (D,
    \FSM_onehot_current_reg[6] ,
    Q,
    \FSM_onehot_current_reg[6]_0 ,
    \FSM_sequential_st_reg[0]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [1:0]D;
  input \FSM_onehot_current_reg[6] ;
  input [2:0]Q;
  input [0:0]\FSM_onehot_current_reg[6]_0 ;
  input [1:0]\FSM_sequential_st_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire \FSM_onehot_current[6]_i_3_n_0 ;
  wire \FSM_onehot_current_reg[6] ;
  wire [0:0]\FSM_onehot_current_reg[6]_0 ;
  wire \FSM_sequential_st[1]_i_2_n_0 ;
  wire \FSM_sequential_st[1]_i_3_n_0 ;
  wire \FSM_sequential_st[1]_i_4_n_0 ;
  wire [1:0]\FSM_sequential_st_reg[0]_0 ;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [16:0]cnt1ms;
  wire [16:1]cnt1ms0;
  wire cnt1ms0_carry__0_n_0;
  wire cnt1ms0_carry__0_n_1;
  wire cnt1ms0_carry__0_n_2;
  wire cnt1ms0_carry__0_n_3;
  wire cnt1ms0_carry__1_n_0;
  wire cnt1ms0_carry__1_n_1;
  wire cnt1ms0_carry__1_n_2;
  wire cnt1ms0_carry__1_n_3;
  wire cnt1ms0_carry__2_n_1;
  wire cnt1ms0_carry__2_n_2;
  wire cnt1ms0_carry__2_n_3;
  wire cnt1ms0_carry_n_0;
  wire cnt1ms0_carry_n_1;
  wire cnt1ms0_carry_n_2;
  wire cnt1ms0_carry_n_3;
  wire \cnt1ms[16]_i_2_n_0 ;
  wire \cnt1ms[16]_i_3_n_0 ;
  wire \cnt1ms[16]_i_4_n_0 ;
  wire \cnt1ms_reg_n_0_[0] ;
  wire \cnt1ms_reg_n_0_[10] ;
  wire \cnt1ms_reg_n_0_[11] ;
  wire \cnt1ms_reg_n_0_[12] ;
  wire \cnt1ms_reg_n_0_[13] ;
  wire \cnt1ms_reg_n_0_[14] ;
  wire \cnt1ms_reg_n_0_[15] ;
  wire \cnt1ms_reg_n_0_[16] ;
  wire \cnt1ms_reg_n_0_[1] ;
  wire \cnt1ms_reg_n_0_[2] ;
  wire \cnt1ms_reg_n_0_[3] ;
  wire \cnt1ms_reg_n_0_[4] ;
  wire \cnt1ms_reg_n_0_[5] ;
  wire \cnt1ms_reg_n_0_[6] ;
  wire \cnt1ms_reg_n_0_[7] ;
  wire \cnt1ms_reg_n_0_[8] ;
  wire \cnt1ms_reg_n_0_[9] ;
  wire [0:0]cnt_ms;
  wire \cnt_ms[1]_i_1__0_n_0 ;
  wire \cnt_ms[2]_i_1__0_n_0 ;
  wire \cnt_ms[3]_i_1__0_n_0 ;
  wire \cnt_ms[4]_i_1__0_n_0 ;
  wire \cnt_ms[4]_i_2_n_0 ;
  wire \cnt_ms[5]_i_1__0_n_0 ;
  wire \cnt_ms[5]_i_2_n_0 ;
  wire \cnt_ms[6]_i_1__0_n_0 ;
  wire \cnt_ms[7]_i_1__0_n_0 ;
  wire \cnt_ms[7]_i_2_n_0 ;
  wire \cnt_ms[7]_i_3_n_0 ;
  wire \cnt_ms_reg_n_0_[0] ;
  wire \cnt_ms_reg_n_0_[1] ;
  wire \cnt_ms_reg_n_0_[2] ;
  wire \cnt_ms_reg_n_0_[3] ;
  wire \cnt_ms_reg_n_0_[4] ;
  wire \cnt_ms_reg_n_0_[5] ;
  wire \cnt_ms_reg_n_0_[6] ;
  wire \cnt_ms_reg_n_0_[7] ;
  wire [1:0]nst;
  wire [1:0]st;
  wire [3:3]NLW_cnt1ms0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hC4FFC4C4)) 
    \FSM_onehot_current[4]_i_1 
       (.I0(st[1]),
        .I1(Q[1]),
        .I2(st[0]),
        .I3(\FSM_onehot_current_reg[6] ),
        .I4(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \FSM_onehot_current[6]_i_1 
       (.I0(\FSM_onehot_current_reg[6] ),
        .I1(Q[0]),
        .I2(\FSM_onehot_current[6]_i_3_n_0 ),
        .I3(\FSM_onehot_current_reg[6]_0 ),
        .I4(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_current[6]_i_3 
       (.I0(st[1]),
        .I1(Q[1]),
        .I2(st[0]),
        .O(\FSM_onehot_current[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h003A)) 
    \FSM_sequential_st[0]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_sequential_st[1]_i_2_n_0 ),
        .I2(st[0]),
        .I3(st[1]),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2C20)) 
    \FSM_sequential_st[1]_i_1__0 
       (.I0(Q[1]),
        .I1(st[0]),
        .I2(st[1]),
        .I3(\FSM_sequential_st[1]_i_2_n_0 ),
        .O(nst[1]));
  LUT5 #(
    .INIT(32'h00004004)) 
    \FSM_sequential_st[1]_i_2 
       (.I0(\FSM_sequential_st[1]_i_3_n_0 ),
        .I1(\FSM_sequential_st[1]_i_4_n_0 ),
        .I2(\cnt_ms_reg_n_0_[6] ),
        .I3(\FSM_sequential_st_reg[0]_0 [1]),
        .I4(\cnt_ms_reg_n_0_[7] ),
        .O(\FSM_sequential_st[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \FSM_sequential_st[1]_i_3 
       (.I0(\FSM_sequential_st_reg[0]_0 [0]),
        .I1(\cnt_ms_reg_n_0_[0] ),
        .I2(\cnt_ms_reg_n_0_[2] ),
        .I3(\FSM_sequential_st_reg[0]_0 [1]),
        .I4(\cnt_ms_reg_n_0_[1] ),
        .O(\FSM_sequential_st[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0041)) 
    \FSM_sequential_st[1]_i_4 
       (.I0(\cnt_ms_reg_n_0_[3] ),
        .I1(\cnt_ms_reg_n_0_[5] ),
        .I2(\FSM_sequential_st_reg[0]_0 [1]),
        .I3(\cnt_ms_reg_n_0_[4] ),
        .O(\FSM_sequential_st[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "hold:01,idle:00,done:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[0]),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "hold:01,idle:00,done:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(st[1]));
  CARRY4 cnt1ms0_carry
       (.CI(1'b0),
        .CO({cnt1ms0_carry_n_0,cnt1ms0_carry_n_1,cnt1ms0_carry_n_2,cnt1ms0_carry_n_3}),
        .CYINIT(\cnt1ms_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[4:1]),
        .S({\cnt1ms_reg_n_0_[4] ,\cnt1ms_reg_n_0_[3] ,\cnt1ms_reg_n_0_[2] ,\cnt1ms_reg_n_0_[1] }));
  CARRY4 cnt1ms0_carry__0
       (.CI(cnt1ms0_carry_n_0),
        .CO({cnt1ms0_carry__0_n_0,cnt1ms0_carry__0_n_1,cnt1ms0_carry__0_n_2,cnt1ms0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[8:5]),
        .S({\cnt1ms_reg_n_0_[8] ,\cnt1ms_reg_n_0_[7] ,\cnt1ms_reg_n_0_[6] ,\cnt1ms_reg_n_0_[5] }));
  CARRY4 cnt1ms0_carry__1
       (.CI(cnt1ms0_carry__0_n_0),
        .CO({cnt1ms0_carry__1_n_0,cnt1ms0_carry__1_n_1,cnt1ms0_carry__1_n_2,cnt1ms0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[12:9]),
        .S({\cnt1ms_reg_n_0_[12] ,\cnt1ms_reg_n_0_[11] ,\cnt1ms_reg_n_0_[10] ,\cnt1ms_reg_n_0_[9] }));
  CARRY4 cnt1ms0_carry__2
       (.CI(cnt1ms0_carry__1_n_0),
        .CO({NLW_cnt1ms0_carry__2_CO_UNCONNECTED[3],cnt1ms0_carry__2_n_1,cnt1ms0_carry__2_n_2,cnt1ms0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[16:13]),
        .S({\cnt1ms_reg_n_0_[16] ,\cnt1ms_reg_n_0_[15] ,\cnt1ms_reg_n_0_[14] ,\cnt1ms_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000000000EF0000)) 
    \cnt1ms[0]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(\cnt1ms_reg_n_0_[0] ),
        .O(cnt1ms[0]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[10]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[10]),
        .O(cnt1ms[10]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[11]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[11]),
        .O(cnt1ms[11]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[12]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[12]),
        .O(cnt1ms[12]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[13]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[13]),
        .O(cnt1ms[13]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[14]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[14]),
        .O(cnt1ms[14]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[15]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[15]),
        .O(cnt1ms[15]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[16]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[16]),
        .O(cnt1ms[16]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt1ms[16]_i_2 
       (.I0(\cnt1ms_reg_n_0_[4] ),
        .I1(\cnt1ms_reg_n_0_[2] ),
        .I2(\cnt1ms_reg_n_0_[0] ),
        .I3(\cnt1ms_reg_n_0_[1] ),
        .I4(\cnt1ms_reg_n_0_[3] ),
        .O(\cnt1ms[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \cnt1ms[16]_i_3 
       (.I0(\cnt1ms_reg_n_0_[12] ),
        .I1(\cnt1ms_reg_n_0_[13] ),
        .I2(\cnt1ms_reg_n_0_[14] ),
        .I3(\cnt1ms_reg_n_0_[10] ),
        .I4(\cnt1ms_reg_n_0_[11] ),
        .I5(\cnt1ms_reg_n_0_[16] ),
        .O(\cnt1ms[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \cnt1ms[16]_i_4 
       (.I0(\cnt1ms_reg_n_0_[5] ),
        .I1(\cnt1ms_reg_n_0_[15] ),
        .I2(\cnt1ms_reg_n_0_[9] ),
        .I3(\cnt1ms_reg_n_0_[8] ),
        .I4(\cnt1ms_reg_n_0_[6] ),
        .I5(\cnt1ms_reg_n_0_[7] ),
        .O(\cnt1ms[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[1]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[1]),
        .O(cnt1ms[1]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[2]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[2]),
        .O(cnt1ms[2]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[3]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[3]),
        .O(cnt1ms[3]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[4]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[4]),
        .O(cnt1ms[4]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[5]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[5]),
        .O(cnt1ms[5]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[6]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[6]),
        .O(cnt1ms[6]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[7]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[7]),
        .O(cnt1ms[7]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[8]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[8]),
        .O(cnt1ms[8]));
  LUT6 #(
    .INIT(64'h00EF000000000000)) 
    \cnt1ms[9]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .I5(cnt1ms0[9]),
        .O(cnt1ms[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[0]),
        .Q(\cnt1ms_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[10]),
        .Q(\cnt1ms_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[11]),
        .Q(\cnt1ms_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[12]),
        .Q(\cnt1ms_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[13]),
        .Q(\cnt1ms_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[14]),
        .Q(\cnt1ms_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[15]),
        .Q(\cnt1ms_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[16]),
        .Q(\cnt1ms_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[1]),
        .Q(\cnt1ms_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[2]),
        .Q(\cnt1ms_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[3]),
        .Q(\cnt1ms_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[4]),
        .Q(\cnt1ms_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[5]),
        .Q(\cnt1ms_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[6]),
        .Q(\cnt1ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[7]),
        .Q(\cnt1ms_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[8]),
        .Q(\cnt1ms_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[9]),
        .Q(\cnt1ms_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_ms[0]_i_1 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[0] ),
        .O(cnt_ms));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \cnt_ms[1]_i_1__0 
       (.I0(st[1]),
        .I1(\cnt_ms_reg_n_0_[0] ),
        .I2(\cnt_ms_reg_n_0_[1] ),
        .I3(st[0]),
        .O(\cnt_ms[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \cnt_ms[2]_i_1__0 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[2] ),
        .I3(\cnt_ms_reg_n_0_[1] ),
        .I4(\cnt_ms_reg_n_0_[0] ),
        .O(\cnt_ms[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \cnt_ms[3]_i_1__0 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[3] ),
        .I3(\cnt_ms_reg_n_0_[2] ),
        .I4(\cnt_ms_reg_n_0_[0] ),
        .I5(\cnt_ms_reg_n_0_[1] ),
        .O(\cnt_ms[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \cnt_ms[4]_i_1__0 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[4] ),
        .I3(\cnt_ms[4]_i_2_n_0 ),
        .O(\cnt_ms[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_ms[4]_i_2 
       (.I0(\cnt_ms_reg_n_0_[2] ),
        .I1(\cnt_ms_reg_n_0_[0] ),
        .I2(\cnt_ms_reg_n_0_[1] ),
        .I3(\cnt_ms_reg_n_0_[3] ),
        .O(\cnt_ms[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4004)) 
    \cnt_ms[5]_i_1__0 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[5] ),
        .I3(\cnt_ms[5]_i_2_n_0 ),
        .O(\cnt_ms[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_ms[5]_i_2 
       (.I0(\cnt_ms_reg_n_0_[3] ),
        .I1(\cnt_ms_reg_n_0_[1] ),
        .I2(\cnt_ms_reg_n_0_[0] ),
        .I3(\cnt_ms_reg_n_0_[2] ),
        .I4(\cnt_ms_reg_n_0_[4] ),
        .O(\cnt_ms[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \cnt_ms[6]_i_1__0 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(\cnt_ms_reg_n_0_[6] ),
        .I3(\cnt_ms[7]_i_3_n_0 ),
        .O(\cnt_ms[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF10FFFF)) 
    \cnt_ms[7]_i_1__0 
       (.I0(\cnt1ms[16]_i_2_n_0 ),
        .I1(\cnt1ms[16]_i_3_n_0 ),
        .I2(\cnt1ms[16]_i_4_n_0 ),
        .I3(st[1]),
        .I4(st[0]),
        .O(\cnt_ms[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h14440000)) 
    \cnt_ms[7]_i_2 
       (.I0(st[1]),
        .I1(\cnt_ms_reg_n_0_[7] ),
        .I2(\cnt_ms_reg_n_0_[6] ),
        .I3(\cnt_ms[7]_i_3_n_0 ),
        .I4(st[0]),
        .O(\cnt_ms[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_ms[7]_i_3 
       (.I0(\cnt_ms_reg_n_0_[5] ),
        .I1(\cnt_ms_reg_n_0_[4] ),
        .I2(\cnt_ms_reg_n_0_[2] ),
        .I3(\cnt_ms_reg_n_0_[0] ),
        .I4(\cnt_ms_reg_n_0_[1] ),
        .I5(\cnt_ms_reg_n_0_[3] ),
        .O(\cnt_ms[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(cnt_ms),
        .Q(\cnt_ms_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[1]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[2]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[3]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[4]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[5]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[6]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ms[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(\cnt_ms[7]_i_2_n_0 ),
        .Q(\cnt_ms_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module delay__parameterized0
   (D,
    \FSM_onehot_st_reg[8] ,
    delay_en_reg,
    delay_en,
    Q,
    \FSM_onehot_st_reg[8]_0 ,
    \FSM_onehot_st_reg[1] ,
    \FSM_onehot_st_reg[1]_0 ,
    p_0_in0,
    nst1_carry_0,
    nst1_carry_1,
    nst1_carry_2,
    clk_IBUF_BUFG,
    AR);
  output [1:0]D;
  output \FSM_onehot_st_reg[8] ;
  input delay_en_reg;
  input delay_en;
  input [1:0]Q;
  input \FSM_onehot_st_reg[8]_0 ;
  input [1:0]\FSM_onehot_st_reg[1] ;
  input \FSM_onehot_st_reg[1]_0 ;
  input p_0_in0;
  input nst1_carry_0;
  input nst1_carry_1;
  input nst1_carry_2;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire \FSM_onehot_st[1]_i_2__0_n_0 ;
  wire [1:0]\FSM_onehot_st_reg[1] ;
  wire \FSM_onehot_st_reg[1]_0 ;
  wire \FSM_onehot_st_reg[8] ;
  wire \FSM_onehot_st_reg[8]_0 ;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [16:0]cnt1ms;
  wire [16:1]cnt1ms0;
  wire cnt1ms0_carry__0_n_0;
  wire cnt1ms0_carry__0_n_1;
  wire cnt1ms0_carry__0_n_2;
  wire cnt1ms0_carry__0_n_3;
  wire cnt1ms0_carry__1_n_0;
  wire cnt1ms0_carry__1_n_1;
  wire cnt1ms0_carry__1_n_2;
  wire cnt1ms0_carry__1_n_3;
  wire cnt1ms0_carry__2_n_1;
  wire cnt1ms0_carry__2_n_2;
  wire cnt1ms0_carry__2_n_3;
  wire cnt1ms0_carry_n_0;
  wire cnt1ms0_carry_n_1;
  wire cnt1ms0_carry_n_2;
  wire cnt1ms0_carry_n_3;
  wire \cnt1ms[16]_i_2__0_n_0 ;
  wire \cnt1ms[16]_i_3__0_n_0 ;
  wire \cnt1ms[16]_i_4__0_n_0 ;
  wire \cnt1ms_reg_n_0_[0] ;
  wire \cnt1ms_reg_n_0_[10] ;
  wire \cnt1ms_reg_n_0_[11] ;
  wire \cnt1ms_reg_n_0_[12] ;
  wire \cnt1ms_reg_n_0_[13] ;
  wire \cnt1ms_reg_n_0_[14] ;
  wire \cnt1ms_reg_n_0_[15] ;
  wire \cnt1ms_reg_n_0_[16] ;
  wire \cnt1ms_reg_n_0_[1] ;
  wire \cnt1ms_reg_n_0_[2] ;
  wire \cnt1ms_reg_n_0_[3] ;
  wire \cnt1ms_reg_n_0_[4] ;
  wire \cnt1ms_reg_n_0_[5] ;
  wire \cnt1ms_reg_n_0_[6] ;
  wire \cnt1ms_reg_n_0_[7] ;
  wire \cnt1ms_reg_n_0_[8] ;
  wire \cnt1ms_reg_n_0_[9] ;
  wire [11:1]cnt_ms;
  wire \cnt_ms[0]_i_1__0_n_0 ;
  wire cnt_ms_0;
  wire \cnt_ms_reg[11]_i_3_n_2 ;
  wire \cnt_ms_reg[11]_i_3_n_3 ;
  wire \cnt_ms_reg[11]_i_3_n_5 ;
  wire \cnt_ms_reg[11]_i_3_n_6 ;
  wire \cnt_ms_reg[11]_i_3_n_7 ;
  wire \cnt_ms_reg[4]_i_2_n_0 ;
  wire \cnt_ms_reg[4]_i_2_n_1 ;
  wire \cnt_ms_reg[4]_i_2_n_2 ;
  wire \cnt_ms_reg[4]_i_2_n_3 ;
  wire \cnt_ms_reg[4]_i_2_n_4 ;
  wire \cnt_ms_reg[4]_i_2_n_5 ;
  wire \cnt_ms_reg[4]_i_2_n_6 ;
  wire \cnt_ms_reg[4]_i_2_n_7 ;
  wire \cnt_ms_reg[8]_i_2_n_0 ;
  wire \cnt_ms_reg[8]_i_2_n_1 ;
  wire \cnt_ms_reg[8]_i_2_n_2 ;
  wire \cnt_ms_reg[8]_i_2_n_3 ;
  wire \cnt_ms_reg[8]_i_2_n_4 ;
  wire \cnt_ms_reg[8]_i_2_n_5 ;
  wire \cnt_ms_reg[8]_i_2_n_6 ;
  wire \cnt_ms_reg[8]_i_2_n_7 ;
  wire \cnt_ms_reg_n_0_[0] ;
  wire \cnt_ms_reg_n_0_[10] ;
  wire \cnt_ms_reg_n_0_[11] ;
  wire \cnt_ms_reg_n_0_[1] ;
  wire \cnt_ms_reg_n_0_[2] ;
  wire \cnt_ms_reg_n_0_[3] ;
  wire \cnt_ms_reg_n_0_[4] ;
  wire \cnt_ms_reg_n_0_[5] ;
  wire \cnt_ms_reg_n_0_[6] ;
  wire \cnt_ms_reg_n_0_[7] ;
  wire \cnt_ms_reg_n_0_[8] ;
  wire \cnt_ms_reg_n_0_[9] ;
  wire delay_en;
  wire delay_en_reg;
  wire [1:0]nst;
  wire nst1_carry_0;
  wire nst1_carry_1;
  wire nst1_carry_2;
  wire nst1_carry_i_1_n_0;
  wire nst1_carry_i_2_n_0;
  wire nst1_carry_i_3_n_0;
  wire nst1_carry_i_4_n_0;
  wire nst1_carry_n_0;
  wire nst1_carry_n_1;
  wire nst1_carry_n_2;
  wire nst1_carry_n_3;
  wire p_0_in0;
  wire [1:0]st;
  wire [3:3]NLW_cnt1ms0_carry__2_CO_UNCONNECTED;
  wire [3:2]\NLW_cnt_ms_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_ms_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_nst1_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h08FFFFFF08080808)) 
    \FSM_onehot_st[1]_i_1__1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_st_reg[1] [1]),
        .I2(\FSM_onehot_st_reg[1] [0]),
        .I3(\FSM_onehot_st_reg[1]_0 ),
        .I4(p_0_in0),
        .I5(\FSM_onehot_st[1]_i_2__0_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_st[1]_i_2__0 
       (.I0(st[0]),
        .I1(delay_en),
        .I2(st[1]),
        .I3(Q[1]),
        .O(\FSM_onehot_st[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFBFAAAA)) 
    \FSM_onehot_st[8]_i_1 
       (.I0(delay_en_reg),
        .I1(st[1]),
        .I2(delay_en),
        .I3(st[0]),
        .I4(Q[1]),
        .I5(\FSM_onehot_st_reg[8]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0232)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(delay_en),
        .I1(st[1]),
        .I2(st[0]),
        .I3(nst1_carry_n_0),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(delay_en),
        .I1(st[1]),
        .I2(st[0]),
        .I3(nst1_carry_n_0),
        .O(nst[1]));
  (* FSM_ENCODED_STATES = "hold:01,idle:00,done:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[0]),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "hold:01,idle:00,done:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(st[1]));
  CARRY4 cnt1ms0_carry
       (.CI(1'b0),
        .CO({cnt1ms0_carry_n_0,cnt1ms0_carry_n_1,cnt1ms0_carry_n_2,cnt1ms0_carry_n_3}),
        .CYINIT(\cnt1ms_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[4:1]),
        .S({\cnt1ms_reg_n_0_[4] ,\cnt1ms_reg_n_0_[3] ,\cnt1ms_reg_n_0_[2] ,\cnt1ms_reg_n_0_[1] }));
  CARRY4 cnt1ms0_carry__0
       (.CI(cnt1ms0_carry_n_0),
        .CO({cnt1ms0_carry__0_n_0,cnt1ms0_carry__0_n_1,cnt1ms0_carry__0_n_2,cnt1ms0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[8:5]),
        .S({\cnt1ms_reg_n_0_[8] ,\cnt1ms_reg_n_0_[7] ,\cnt1ms_reg_n_0_[6] ,\cnt1ms_reg_n_0_[5] }));
  CARRY4 cnt1ms0_carry__1
       (.CI(cnt1ms0_carry__0_n_0),
        .CO({cnt1ms0_carry__1_n_0,cnt1ms0_carry__1_n_1,cnt1ms0_carry__1_n_2,cnt1ms0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[12:9]),
        .S({\cnt1ms_reg_n_0_[12] ,\cnt1ms_reg_n_0_[11] ,\cnt1ms_reg_n_0_[10] ,\cnt1ms_reg_n_0_[9] }));
  CARRY4 cnt1ms0_carry__2
       (.CI(cnt1ms0_carry__1_n_0),
        .CO({NLW_cnt1ms0_carry__2_CO_UNCONNECTED[3],cnt1ms0_carry__2_n_1,cnt1ms0_carry__2_n_2,cnt1ms0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt1ms0[16:13]),
        .S({\cnt1ms_reg_n_0_[16] ,\cnt1ms_reg_n_0_[15] ,\cnt1ms_reg_n_0_[14] ,\cnt1ms_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000000022202222)) 
    \cnt1ms[0]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(\cnt1ms_reg_n_0_[0] ),
        .O(cnt1ms[0]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[10]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[10]),
        .O(cnt1ms[10]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[11]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[11]),
        .O(cnt1ms[11]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[12]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[12]),
        .O(cnt1ms[12]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[13]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[13]),
        .O(cnt1ms[13]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[14]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[14]),
        .O(cnt1ms[14]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[15]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[15]),
        .O(cnt1ms[15]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[16]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[16]),
        .O(cnt1ms[16]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt1ms[16]_i_2__0 
       (.I0(\cnt1ms_reg_n_0_[4] ),
        .I1(\cnt1ms_reg_n_0_[2] ),
        .I2(\cnt1ms_reg_n_0_[0] ),
        .I3(\cnt1ms_reg_n_0_[1] ),
        .I4(\cnt1ms_reg_n_0_[3] ),
        .O(\cnt1ms[16]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \cnt1ms[16]_i_3__0 
       (.I0(\cnt1ms_reg_n_0_[12] ),
        .I1(\cnt1ms_reg_n_0_[13] ),
        .I2(\cnt1ms_reg_n_0_[14] ),
        .I3(\cnt1ms_reg_n_0_[10] ),
        .I4(\cnt1ms_reg_n_0_[11] ),
        .I5(\cnt1ms_reg_n_0_[16] ),
        .O(\cnt1ms[16]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \cnt1ms[16]_i_4__0 
       (.I0(\cnt1ms_reg_n_0_[5] ),
        .I1(\cnt1ms_reg_n_0_[15] ),
        .I2(\cnt1ms_reg_n_0_[9] ),
        .I3(\cnt1ms_reg_n_0_[8] ),
        .I4(\cnt1ms_reg_n_0_[6] ),
        .I5(\cnt1ms_reg_n_0_[7] ),
        .O(\cnt1ms[16]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[1]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[1]),
        .O(cnt1ms[1]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[2]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[2]),
        .O(cnt1ms[2]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[3]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[3]),
        .O(cnt1ms[3]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[4]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[4]),
        .O(cnt1ms[4]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[5]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[5]),
        .O(cnt1ms[5]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[6]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[6]),
        .O(cnt1ms[6]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[7]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[7]),
        .O(cnt1ms[7]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[8]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[8]),
        .O(cnt1ms[8]));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \cnt1ms[9]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .I5(cnt1ms0[9]),
        .O(cnt1ms[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[0]),
        .Q(\cnt1ms_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[10]),
        .Q(\cnt1ms_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[11]),
        .Q(\cnt1ms_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[12]),
        .Q(\cnt1ms_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[13]),
        .Q(\cnt1ms_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[14]),
        .Q(\cnt1ms_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[15]),
        .Q(\cnt1ms_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[16]),
        .Q(\cnt1ms_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[1]),
        .Q(\cnt1ms_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[2]),
        .Q(\cnt1ms_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[3]),
        .Q(\cnt1ms_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[4]),
        .Q(\cnt1ms_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[5]),
        .Q(\cnt1ms_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[6]),
        .Q(\cnt1ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[7]),
        .Q(\cnt1ms_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[8]),
        .Q(\cnt1ms_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt1ms_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(cnt1ms[9]),
        .Q(\cnt1ms_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_ms[0]_i_1__0 
       (.I0(\cnt_ms_reg_n_0_[0] ),
        .I1(st[0]),
        .I2(st[1]),
        .O(\cnt_ms[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[10]_i_1 
       (.I0(\cnt_ms_reg[11]_i_3_n_6 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[10]));
  LUT5 #(
    .INIT(32'hDDDFDDDD)) 
    \cnt_ms[11]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(\cnt1ms[16]_i_2__0_n_0 ),
        .I3(\cnt1ms[16]_i_3__0_n_0 ),
        .I4(\cnt1ms[16]_i_4__0_n_0 ),
        .O(cnt_ms_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[11]_i_2 
       (.I0(\cnt_ms_reg[11]_i_3_n_5 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[1]_i_1 
       (.I0(\cnt_ms_reg[4]_i_2_n_7 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[2]_i_1 
       (.I0(\cnt_ms_reg[4]_i_2_n_6 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[3]_i_1 
       (.I0(\cnt_ms_reg[4]_i_2_n_5 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[4]_i_1 
       (.I0(\cnt_ms_reg[4]_i_2_n_4 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[5]_i_1 
       (.I0(\cnt_ms_reg[8]_i_2_n_7 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[6]_i_1 
       (.I0(\cnt_ms_reg[8]_i_2_n_6 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[7]_i_1 
       (.I0(\cnt_ms_reg[8]_i_2_n_5 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[8]_i_1 
       (.I0(\cnt_ms_reg[8]_i_2_n_4 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ms[9]_i_1 
       (.I0(\cnt_ms_reg[11]_i_3_n_7 ),
        .I1(st[0]),
        .I2(st[1]),
        .O(cnt_ms[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(\cnt_ms[0]_i_1__0_n_0 ),
        .Q(\cnt_ms_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[10]),
        .Q(\cnt_ms_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[11]),
        .Q(\cnt_ms_reg_n_0_[11] ));
  CARRY4 \cnt_ms_reg[11]_i_3 
       (.CI(\cnt_ms_reg[8]_i_2_n_0 ),
        .CO({\NLW_cnt_ms_reg[11]_i_3_CO_UNCONNECTED [3:2],\cnt_ms_reg[11]_i_3_n_2 ,\cnt_ms_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_ms_reg[11]_i_3_O_UNCONNECTED [3],\cnt_ms_reg[11]_i_3_n_5 ,\cnt_ms_reg[11]_i_3_n_6 ,\cnt_ms_reg[11]_i_3_n_7 }),
        .S({1'b0,\cnt_ms_reg_n_0_[11] ,\cnt_ms_reg_n_0_[10] ,\cnt_ms_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[1]),
        .Q(\cnt_ms_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[2]),
        .Q(\cnt_ms_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[3]),
        .Q(\cnt_ms_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[4]),
        .Q(\cnt_ms_reg_n_0_[4] ));
  CARRY4 \cnt_ms_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_ms_reg[4]_i_2_n_0 ,\cnt_ms_reg[4]_i_2_n_1 ,\cnt_ms_reg[4]_i_2_n_2 ,\cnt_ms_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_ms_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_ms_reg[4]_i_2_n_4 ,\cnt_ms_reg[4]_i_2_n_5 ,\cnt_ms_reg[4]_i_2_n_6 ,\cnt_ms_reg[4]_i_2_n_7 }),
        .S({\cnt_ms_reg_n_0_[4] ,\cnt_ms_reg_n_0_[3] ,\cnt_ms_reg_n_0_[2] ,\cnt_ms_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[5]),
        .Q(\cnt_ms_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[6]),
        .Q(\cnt_ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[7]),
        .Q(\cnt_ms_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[8]),
        .Q(\cnt_ms_reg_n_0_[8] ));
  CARRY4 \cnt_ms_reg[8]_i_2 
       (.CI(\cnt_ms_reg[4]_i_2_n_0 ),
        .CO({\cnt_ms_reg[8]_i_2_n_0 ,\cnt_ms_reg[8]_i_2_n_1 ,\cnt_ms_reg[8]_i_2_n_2 ,\cnt_ms_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_ms_reg[8]_i_2_n_4 ,\cnt_ms_reg[8]_i_2_n_5 ,\cnt_ms_reg[8]_i_2_n_6 ,\cnt_ms_reg[8]_i_2_n_7 }),
        .S({\cnt_ms_reg_n_0_[8] ,\cnt_ms_reg_n_0_[7] ,\cnt_ms_reg_n_0_[6] ,\cnt_ms_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ms_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_ms_0),
        .CLR(AR),
        .D(cnt_ms[9]),
        .Q(\cnt_ms_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFAABFAA)) 
    delay_en_i_1
       (.I0(delay_en_reg),
        .I1(Q[1]),
        .I2(st[1]),
        .I3(delay_en),
        .I4(st[0]),
        .O(\FSM_onehot_st_reg[8] ));
  CARRY4 nst1_carry
       (.CI(1'b0),
        .CO({nst1_carry_n_0,nst1_carry_n_1,nst1_carry_n_2,nst1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_nst1_carry_O_UNCONNECTED[3:0]),
        .S({nst1_carry_i_1_n_0,nst1_carry_i_2_n_0,nst1_carry_i_3_n_0,nst1_carry_i_4_n_0}));
  LUT5 #(
    .INIT(32'h81000081)) 
    nst1_carry_i_1
       (.I0(\cnt_ms_reg_n_0_[10] ),
        .I1(nst1_carry_2),
        .I2(\cnt_ms_reg_n_0_[11] ),
        .I3(nst1_carry_0),
        .I4(\cnt_ms_reg_n_0_[9] ),
        .O(nst1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h81000081)) 
    nst1_carry_i_2
       (.I0(\cnt_ms_reg_n_0_[7] ),
        .I1(nst1_carry_0),
        .I2(\cnt_ms_reg_n_0_[8] ),
        .I3(nst1_carry_1),
        .I4(\cnt_ms_reg_n_0_[6] ),
        .O(nst1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    nst1_carry_i_3
       (.I0(\cnt_ms_reg_n_0_[5] ),
        .I1(nst1_carry_0),
        .I2(\cnt_ms_reg_n_0_[4] ),
        .I3(nst1_carry_1),
        .I4(\cnt_ms_reg_n_0_[3] ),
        .O(nst1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    nst1_carry_i_4
       (.I0(\cnt_ms_reg_n_0_[0] ),
        .I1(\cnt_ms_reg_n_0_[1] ),
        .I2(\cnt_ms_reg_n_0_[2] ),
        .O(nst1_carry_i_4_n_0));
endmodule

module fsm_init
   (vdd_OBUF,
    res_OBUF,
    vbat_OBUF,
    sclk_OBUF,
    sdo_OBUF,
    \FSM_onehot_current_reg[7]_0 ,
    D,
    clk_IBUF_BUFG,
    AR,
    Q,
    sclk,
    sdo_oper);
  output vdd_OBUF;
  output res_OBUF;
  output vbat_OBUF;
  output sclk_OBUF;
  output sdo_OBUF;
  output [0:0]\FSM_onehot_current_reg[7]_0 ;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [1:0]Q;
  input [0:0]sclk;
  input sdo_oper;

  wire [0:0]AR;
  wire [0:0]D;
  wire \FSM_onehot_current[0]_i_2_n_0 ;
  wire \FSM_onehot_current[0]_i_3_n_0 ;
  wire \FSM_onehot_current[1]_i_2_n_0 ;
  wire \FSM_onehot_current[1]_i_3_n_0 ;
  wire \FSM_onehot_current[6]_i_2_n_0 ;
  wire \FSM_onehot_current[7]_i_2_n_0 ;
  wire [0:0]\FSM_onehot_current_reg[7]_0 ;
  wire \FSM_onehot_current_reg_n_0_[0] ;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \cmd[8]_i_1_n_0 ;
  wire \cmd[8]_i_2_n_0 ;
  wire \cmd_reg_n_0_[0] ;
  wire \cmd_reg_n_0_[1] ;
  wire \cmd_reg_n_0_[2] ;
  wire \cmd_reg_n_0_[3] ;
  wire \cmd_reg_n_0_[4] ;
  wire \cmd_reg_n_0_[5] ;
  wire \cmd_reg_n_0_[6] ;
  wire \cmd_reg_n_0_[7] ;
  wire cnt_cmd;
  wire \cnt_cmd[0]_i_1_n_0 ;
  wire \cnt_cmd[3]_i_1_n_0 ;
  wire [3:0]cnt_cmd_reg;
  wire [3:1]current;
  wire [5:0]del_ms;
  wire \del_ms[5]_i_1_n_0 ;
  wire delay_en;
  wire [7:0]list_cmd;
  wire [7:0]next;
  wire [2:1]p_0_in;
  wire p_0_in_0;
  wire res_OBUF;
  wire res_i_1_n_0;
  wire [0:0]sclk;
  wire sclk_OBUF;
  wire sdo_OBUF;
  wire sdo_oper;
  wire spi_en;
  wire spi_fin;
  wire vbat_OBUF;
  wire vbat_i_1_n_0;
  wire vdd_OBUF;
  wire vdd_i_1_n_0;
  wire vdd_i_2_n_0;

  delay DelayInstance
       (.AR(AR),
        .D({next[6],next[4]}),
        .\FSM_onehot_current_reg[6] (\FSM_onehot_current[6]_i_2_n_0 ),
        .\FSM_onehot_current_reg[6]_0 (spi_fin),
        .\FSM_sequential_st_reg[0]_0 ({del_ms[5],del_ms[0]}),
        .Q({spi_en,delay_en,current[3]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \FSM_onehot_current[0]_i_1 
       (.I0(\FSM_onehot_current[1]_i_2_n_0 ),
        .I1(\FSM_onehot_current_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_reg[7]_0 ),
        .I3(\FSM_onehot_current[0]_i_2_n_0 ),
        .I4(cnt_cmd),
        .I5(\FSM_onehot_current[0]_i_3_n_0 ),
        .O(next[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_onehot_current[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_current[0]_i_3 
       (.I0(cnt_cmd_reg[3]),
        .I1(cnt_cmd_reg[1]),
        .I2(cnt_cmd_reg[0]),
        .I3(cnt_cmd_reg[2]),
        .O(\FSM_onehot_current[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current[1]_i_1 
       (.I0(\FSM_onehot_current_reg_n_0_[0] ),
        .I1(\FSM_onehot_current[1]_i_2_n_0 ),
        .O(next[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current[1]_i_2 
       (.I0(\FSM_onehot_current[1]_i_3_n_0 ),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(\cmd_reg_n_0_[1] ),
        .I3(\cmd_reg_n_0_[2] ),
        .I4(p_0_in_0),
        .I5(\FSM_onehot_current[0]_i_2_n_0 ),
        .O(\FSM_onehot_current[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_current[1]_i_3 
       (.I0(\cmd_reg_n_0_[6] ),
        .I1(\cmd_reg_n_0_[5] ),
        .I2(\cmd_reg_n_0_[4] ),
        .I3(\cmd_reg_n_0_[7] ),
        .I4(\cmd_reg_n_0_[3] ),
        .O(\FSM_onehot_current[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current[2]_i_1 
       (.I0(p_0_in_0),
        .I1(current[1]),
        .O(next[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_current[6]_i_2 
       (.I0(\cmd_reg_n_0_[2] ),
        .I1(vdd_i_2_n_0),
        .I2(\cmd_reg_n_0_[1] ),
        .I3(\cmd_reg_n_0_[0] ),
        .O(\FSM_onehot_current[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20FF202020202020)) 
    \FSM_onehot_current[7]_i_1 
       (.I0(cnt_cmd_reg[3]),
        .I1(\FSM_onehot_current[7]_i_2_n_0 ),
        .I2(cnt_cmd),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_onehot_current_reg[7]_0 ),
        .O(next[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_current[7]_i_2 
       (.I0(cnt_cmd_reg[2]),
        .I1(cnt_cmd_reg[0]),
        .I2(cnt_cmd_reg[1]),
        .O(\FSM_onehot_current[7]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[0]),
        .Q(\FSM_onehot_current_reg_n_0_[0] ),
        .S(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[1]),
        .Q(current[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[2]),
        .Q(current[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(current[2]),
        .Q(current[3]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[4]),
        .Q(delay_en),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[5]),
        .Q(spi_en),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[6]),
        .Q(cnt_cmd),
        .R(AR));
  (* FSM_ENCODED_STATES = "WaitPre:00001000,Decision:00000010,Power:00000100,Spi:00100000,Delay:00010000,Clear:01000000,Idle:00000001,Done:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[7]),
        .Q(\FSM_onehot_current_reg[7]_0 ),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_current[1]_i_1 
       (.I0(\FSM_onehot_current_reg[7]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D));
  spi_0 SPIInstance
       (.AR(AR),
        .D(next[5]),
        .\FSM_onehot_current_reg[5] ({p_0_in_0,\cmd_reg_n_0_[7] ,\cmd_reg_n_0_[6] ,\cmd_reg_n_0_[5] ,\cmd_reg_n_0_[4] ,\cmd_reg_n_0_[3] ,\cmd_reg_n_0_[2] ,\cmd_reg_n_0_[1] ,\cmd_reg_n_0_[0] }),
        .\FSM_onehot_st_reg[3]_0 (spi_fin),
        .Q({spi_en,current[1]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sclk(sclk),
        .sclk_OBUF(sclk_OBUF),
        .sdo(Q),
        .sdo_OBUF(sdo_OBUF),
        .sdo_oper(sdo_oper));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCBE8)) 
    \cmd[0]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[0]),
        .I2(cnt_cmd_reg[3]),
        .I3(cnt_cmd_reg[2]),
        .O(list_cmd[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h820E)) 
    \cmd[1]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[0]),
        .I2(cnt_cmd_reg[2]),
        .I3(cnt_cmd_reg[3]),
        .O(list_cmd[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD11C)) 
    \cmd[2]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[3]),
        .I2(cnt_cmd_reg[2]),
        .I3(cnt_cmd_reg[0]),
        .O(list_cmd[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA718)) 
    \cmd[3]_i_1 
       (.I0(cnt_cmd_reg[3]),
        .I1(cnt_cmd_reg[1]),
        .I2(cnt_cmd_reg[0]),
        .I3(cnt_cmd_reg[2]),
        .O(list_cmd[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \cmd[4]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[0]),
        .I2(cnt_cmd_reg[2]),
        .I3(cnt_cmd_reg[3]),
        .O(list_cmd[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE890)) 
    \cmd[5]_i_1 
       (.I0(cnt_cmd_reg[3]),
        .I1(cnt_cmd_reg[1]),
        .I2(cnt_cmd_reg[0]),
        .I3(cnt_cmd_reg[2]),
        .O(list_cmd[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2060)) 
    \cmd[6]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[3]),
        .I2(cnt_cmd_reg[2]),
        .I3(cnt_cmd_reg[0]),
        .O(list_cmd[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB8DA)) 
    \cmd[7]_i_1 
       (.I0(cnt_cmd_reg[0]),
        .I1(cnt_cmd_reg[3]),
        .I2(cnt_cmd_reg[2]),
        .I3(cnt_cmd_reg[1]),
        .O(list_cmd[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \cmd[8]_i_1 
       (.I0(\FSM_onehot_current_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\cmd[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0145)) 
    \cmd[8]_i_2 
       (.I0(cnt_cmd_reg[2]),
        .I1(cnt_cmd_reg[1]),
        .I2(cnt_cmd_reg[0]),
        .I3(cnt_cmd_reg[3]),
        .O(\cmd[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[0]),
        .Q(\cmd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[1]),
        .Q(\cmd_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[2]),
        .Q(\cmd_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[3]),
        .Q(\cmd_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[4]),
        .Q(\cmd_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[5]),
        .Q(\cmd_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[6]),
        .Q(\cmd_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(list_cmd[7]),
        .Q(\cmd_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\cmd[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\cmd[8]_i_2_n_0 ),
        .Q(p_0_in_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_cmd[0]_i_1 
       (.I0(cnt_cmd_reg[0]),
        .O(\cnt_cmd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_cmd[1]_i_1 
       (.I0(cnt_cmd_reg[1]),
        .I1(cnt_cmd_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_cmd[2]_i_1 
       (.I0(cnt_cmd_reg[2]),
        .I1(cnt_cmd_reg[0]),
        .I2(cnt_cmd_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_cmd[3]_i_1 
       (.I0(cnt_cmd_reg[3]),
        .I1(cnt_cmd_reg[1]),
        .I2(cnt_cmd_reg[0]),
        .I3(cnt_cmd_reg[2]),
        .O(\cnt_cmd[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_cmd),
        .CLR(AR),
        .D(\cnt_cmd[0]_i_1_n_0 ),
        .Q(cnt_cmd_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_cmd),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(cnt_cmd_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_cmd),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(cnt_cmd_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_cmd),
        .CLR(AR),
        .D(\cnt_cmd[3]_i_1_n_0 ),
        .Q(cnt_cmd_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \del_ms[5]_i_1 
       (.I0(vbat_OBUF),
        .O(\del_ms[5]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \del_ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vbat_OBUF),
        .PRE(AR),
        .Q(del_ms[0]));
  FDCE #(
    .INIT(1'b0)) 
    \del_ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\del_ms[5]_i_1_n_0 ),
        .Q(del_ms[5]));
  LUT3 #(
    .INIT(8'h08)) 
    res_i_1
       (.I0(\cmd_reg_n_0_[1] ),
        .I1(vdd_i_2_n_0),
        .I2(\cmd_reg_n_0_[2] ),
        .O(res_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    res_reg
       (.C(clk_IBUF_BUFG),
        .CE(res_i_1_n_0),
        .D(\cmd_reg_n_0_[0] ),
        .PRE(AR),
        .Q(res_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    vbat_i_1
       (.I0(vbat_OBUF),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(\cmd_reg_n_0_[1] ),
        .I3(\cmd_reg_n_0_[2] ),
        .I4(vdd_i_2_n_0),
        .O(vbat_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    vbat_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(vbat_i_1_n_0),
        .PRE(AR),
        .Q(vbat_OBUF));
  LUT4 #(
    .INIT(16'h0010)) 
    vdd_i_1
       (.I0(\cmd_reg_n_0_[0] ),
        .I1(\cmd_reg_n_0_[1] ),
        .I2(vdd_i_2_n_0),
        .I3(\cmd_reg_n_0_[2] ),
        .O(vdd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    vdd_i_2
       (.I0(p_0_in_0),
        .I1(\cmd_reg_n_0_[3] ),
        .I2(\cmd_reg_n_0_[7] ),
        .I3(\cmd_reg_n_0_[4] ),
        .I4(\cmd_reg_n_0_[5] ),
        .I5(\cmd_reg_n_0_[6] ),
        .O(vdd_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    vdd_reg
       (.C(clk_IBUF_BUFG),
        .CE(vdd_i_1_n_0),
        .D(1'b0),
        .PRE(AR),
        .Q(vdd_OBUF));
endmodule

module fsm_oper
   (sdo_oper,
    dc_OBUF,
    \div_reg[4] ,
    D,
    clk_IBUF_BUFG,
    AR,
    Q,
    \FSM_sequential_current_reg[0] );
  output sdo_oper;
  output dc_OBUF;
  output [0:0]\div_reg[4] ;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [1:0]Q;
  input [0:0]\FSM_sequential_current_reg[0] ;

  wire [0:0]AR;
  wire [0:0]D;
  wire DELAY_COMP_n_2;
  wire \FSM_onehot_st[10]_i_2_n_0 ;
  wire \FSM_onehot_st[2]_i_3_n_0 ;
  wire \FSM_onehot_st[8]_i_2_n_0 ;
  wire \FSM_onehot_st[8]_i_3_n_0 ;
  wire \FSM_onehot_st_reg_n_0_[0] ;
  wire \FSM_onehot_st_reg_n_0_[10] ;
  wire \FSM_onehot_st_reg_n_0_[1] ;
  wire \FSM_onehot_st_reg_n_0_[5] ;
  wire \FSM_onehot_st_reg_n_0_[6] ;
  wire \FSM_onehot_st_reg_n_0_[7] ;
  wire \FSM_onehot_st_reg_n_0_[8] ;
  wire [0:0]\FSM_sequential_current_reg[0] ;
  wire [1:0]Q;
  wire SPI_COMP_n_3;
  wire SPI_COMP_n_6;
  wire SPI_COMP_n_7;
  wire SPI_COMP_n_8;
  wire SPI_COMP_n_9;
  wire addr;
  wire \addr[3]_i_10_n_0 ;
  wire \addr[3]_i_11_n_0 ;
  wire \addr[3]_i_12_n_0 ;
  wire \addr[3]_i_13_n_0 ;
  wire \addr[3]_i_2_n_0 ;
  wire \addr[3]_i_3_n_0 ;
  wire \addr[3]_i_4_n_0 ;
  wire \addr[3]_i_5_n_0 ;
  wire \addr[3]_i_6_n_0 ;
  wire \addr[3]_i_7_n_0 ;
  wire \addr[3]_i_8_n_0 ;
  wire \addr[3]_i_9_n_0 ;
  wire \addr[4]_i_10_n_0 ;
  wire \addr[4]_i_11_n_0 ;
  wire \addr[4]_i_2_n_0 ;
  wire \addr[4]_i_3_n_0 ;
  wire \addr[4]_i_4_n_0 ;
  wire \addr[4]_i_5_n_0 ;
  wire \addr[4]_i_6_n_0 ;
  wire \addr[4]_i_7_n_0 ;
  wire \addr[4]_i_8_n_0 ;
  wire \addr[4]_i_9_n_0 ;
  wire \addr[5]_i_2_n_0 ;
  wire \addr[5]_i_5_n_0 ;
  wire \addr[5]_i_6_n_0 ;
  wire \addr[5]_i_7_n_0 ;
  wire \addr[5]_i_8_n_0 ;
  wire \addr[5]_i_9_n_0 ;
  wire \addr[6]_i_10_n_0 ;
  wire \addr[6]_i_11_n_0 ;
  wire \addr[6]_i_12_n_0 ;
  wire \addr[6]_i_13_n_0 ;
  wire \addr[6]_i_14_n_0 ;
  wire \addr[6]_i_15_n_0 ;
  wire \addr[6]_i_16_n_0 ;
  wire \addr[6]_i_17_n_0 ;
  wire \addr[6]_i_2_n_0 ;
  wire \addr[6]_i_3_n_0 ;
  wire \addr[6]_i_4_n_0 ;
  wire \addr[6]_i_5_n_0 ;
  wire \addr[6]_i_6_n_0 ;
  wire \addr[6]_i_7_n_0 ;
  wire \addr[6]_i_8_n_0 ;
  wire \addr[6]_i_9_n_0 ;
  wire \addr[7]_i_10_n_0 ;
  wire \addr[7]_i_11_n_0 ;
  wire \addr[7]_i_12_n_0 ;
  wire \addr[7]_i_13_n_0 ;
  wire \addr[7]_i_14_n_0 ;
  wire \addr[7]_i_3_n_0 ;
  wire \addr[7]_i_4_n_0 ;
  wire \addr[7]_i_5_n_0 ;
  wire \addr[7]_i_6_n_0 ;
  wire \addr[7]_i_7_n_0 ;
  wire \addr[7]_i_8_n_0 ;
  wire \addr[7]_i_9_n_0 ;
  wire \addr[8]_i_10_n_0 ;
  wire \addr[8]_i_2_n_0 ;
  wire \addr[8]_i_3_n_0 ;
  wire \addr[8]_i_4_n_0 ;
  wire \addr[8]_i_5_n_0 ;
  wire \addr[8]_i_6_n_0 ;
  wire \addr[8]_i_8_n_0 ;
  wire \addr[8]_i_9_n_0 ;
  wire \addr[9]_i_10_n_0 ;
  wire \addr[9]_i_11_n_0 ;
  wire \addr[9]_i_12_n_0 ;
  wire \addr[9]_i_13_n_0 ;
  wire \addr[9]_i_3_n_0 ;
  wire \addr[9]_i_4_n_0 ;
  wire \addr[9]_i_5_n_0 ;
  wire \addr[9]_i_6_n_0 ;
  wire \addr[9]_i_7_n_0 ;
  wire \addr[9]_i_8_n_0 ;
  wire \addr[9]_i_9_n_0 ;
  wire [9:0]addr__0;
  wire \addr_reg[5]_i_3_n_0 ;
  wire \addr_reg[5]_i_4_n_0 ;
  wire \addr_reg[7]_i_2_n_0 ;
  wire \addr_reg[8]_i_7_n_0 ;
  wire \addr_reg[9]_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \cnt_clm[0]_i_1_n_0 ;
  wire \cnt_clm[1]_i_1_n_0 ;
  wire \cnt_clm[2]_i_1_n_0 ;
  wire \cnt_ind[4]_i_1_n_0 ;
  wire \cnt_ind[4]_i_3_n_0 ;
  wire [4:0]cnt_ind_reg;
  wire \cnt_page[0]_i_1_n_0 ;
  wire \cnt_page[1]_i_1_n_0 ;
  wire \cnt_page[2]_i_1_n_0 ;
  wire \cnt_page[2]_i_2_n_0 ;
  wire \cnt_page_reg_n_0_[0] ;
  wire \cnt_page_reg_n_0_[1] ;
  wire \cnt_screen[0]_i_1_n_0 ;
  wire \cnt_screen[1]_i_1_n_0 ;
  wire \cnt_screen_reg_n_0_[1] ;
  wire current_screen;
  wire \current_screen[1][1][5]_i_1_n_0 ;
  wire \current_screen[3][0][6]_i_1_n_0 ;
  wire \current_screen[3][15][6]_i_1_n_0 ;
  wire \current_screen[3][3][6]_i_2_n_0 ;
  wire [5:5]\current_screen_reg[1][0]_2 ;
  wire [5:5]\current_screen_reg[1][1]_5 ;
  wire [6:6]\current_screen_reg[3][0]_4 ;
  wire [6:6]\current_screen_reg[3][15]_1 ;
  wire [6:6]\current_screen_reg[3][3]_0 ;
  wire [6:6]\current_screen_reg[3][4]_3 ;
  wire dc_OBUF;
  wire dc_oper;
  wire delay_en;
  wire \delay_ms[11]_i_1_n_0 ;
  wire \delay_ms[6]_i_1_n_0 ;
  wire \delay_ms[9]_i_1_n_0 ;
  wire \delay_ms_reg_n_0_[11] ;
  wire \delay_ms_reg_n_0_[6] ;
  wire \delay_ms_reg_n_0_[9] ;
  wire [0:0]\div_reg[4] ;
  wire [7:0]dout_reg__0;
  wire [10:0]nst;
  wire oper_done;
  wire p_0_in;
  wire p_0_in0;
  wire [4:0]p_0_in__0;
  wire [5:0]p_1_in;
  wire [2:0]p_45_out;
  wire [9:3]p_45_out__0;
  wire page_en_reg_n_0;
  wire page_row_n_5;
  wire page_row_n_8;
  wire page_row_n_9;
  wire sdo_oper;
  wire spi_data_data;
  wire [7:0]spi_data_data__0;
  wire spi_en_data_reg_n_0;
  wire spi_fin;
  wire [2:2]st;
  wire up_spi_en;

  rom CHAR_LIB_COM
       (.D(dout_reg__0),
        .Q(spi_data_data),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dout_reg_0(addr__0));
  delay__parameterized0 DELAY_COMP
       (.AR(AR),
        .D({nst[8],nst[1]}),
        .\FSM_onehot_st_reg[1] (Q),
        .\FSM_onehot_st_reg[1]_0 (\cnt_screen_reg_n_0_[1] ),
        .\FSM_onehot_st_reg[8] (DELAY_COMP_n_2),
        .\FSM_onehot_st_reg[8]_0 (\FSM_onehot_st[8]_i_3_n_0 ),
        .Q({\FSM_onehot_st_reg_n_0_[8] ,\FSM_onehot_st_reg_n_0_[0] }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .delay_en(delay_en),
        .delay_en_reg(\FSM_onehot_st[8]_i_2_n_0 ),
        .nst1_carry_0(\delay_ms_reg_n_0_[9] ),
        .nst1_carry_1(\delay_ms_reg_n_0_[6] ),
        .nst1_carry_2(\delay_ms_reg_n_0_[11] ),
        .p_0_in0(p_0_in0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \FSM_onehot_st[0]_i_1__1 
       (.I0(oper_done),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h88888808)) 
    \FSM_onehot_st[10]_i_1 
       (.I0(\FSM_onehot_st[10]_i_2_n_0 ),
        .I1(\FSM_onehot_st_reg_n_0_[7] ),
        .I2(p_0_in),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .O(nst[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_st[10]_i_2 
       (.I0(cnt_ind_reg[4]),
        .I1(cnt_ind_reg[2]),
        .I2(cnt_ind_reg[3]),
        .I3(cnt_ind_reg[0]),
        .I4(cnt_ind_reg[1]),
        .O(\FSM_onehot_st[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_st[2]_i_3 
       (.I0(\cnt_page_reg_n_0_[0] ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .O(\FSM_onehot_st[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_st[8]_i_2 
       (.I0(\cnt_page_reg_n_0_[0] ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_st_reg_n_0_[7] ),
        .O(\FSM_onehot_st[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_st[8]_i_3 
       (.I0(\cnt_screen_reg_n_0_[1] ),
        .I1(p_0_in0),
        .O(\FSM_onehot_st[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080FF8080808080)) 
    \FSM_onehot_st[9]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[8] ),
        .I1(\cnt_screen_reg_n_0_[1] ),
        .I2(p_0_in0),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(oper_done),
        .O(nst[9]));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nst[0]),
        .PRE(AR),
        .Q(\FSM_onehot_st_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[10]),
        .Q(\FSM_onehot_st_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(\FSM_onehot_st_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[2]),
        .Q(st));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[3]),
        .Q(addr));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(addr),
        .Q(spi_data_data));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_data_data),
        .Q(\FSM_onehot_st_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[6]),
        .Q(\FSM_onehot_st_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[7]),
        .Q(\FSM_onehot_st_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[8]),
        .Q(\FSM_onehot_st_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "back:00010000000,spi2:00001000000,spi1:00000100000,timeDisp:00100000000,readMem:00000010000,page:00000000100,sendChar:00000001000,pageInit:10000000000,done:01000000000,screen:00000000010,idle:00000000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[9]),
        .Q(oper_done));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h223F)) 
    \FSM_sequential_current[0]_i_1 
       (.I0(oper_done),
        .I1(Q[0]),
        .I2(\FSM_sequential_current_reg[0] ),
        .I3(Q[1]),
        .O(D));
  spi SPI_COMP
       (.AR(AR),
        .D({p_1_in[5:4],p_1_in[1:0]}),
        .\FSM_onehot_st_reg[3]_0 ({spi_fin,SPI_COMP_n_3}),
        .\FSM_onehot_st_reg[5] (SPI_COMP_n_6),
        .\FSM_onehot_st_reg[6] (nst[7:6]),
        .\FSM_onehot_st_reg[7] ({\FSM_onehot_st_reg_n_0_[10] ,\FSM_onehot_st_reg_n_0_[6] ,\FSM_onehot_st_reg_n_0_[5] }),
        .\FSM_onehot_st_reg[7]_0 (\cnt_page_reg_n_0_[1] ),
        .\FSM_onehot_st_reg[7]_1 (\cnt_page_reg_n_0_[0] ),
        .Q(\div_reg[4] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dc_oper(dc_oper),
        .p_0_in(p_0_in),
        .sdo_oper(sdo_oper),
        .\shr_reg[0]_0 (page_row_n_5),
        .\shr_reg[4]_0 ({SPI_COMP_n_7,SPI_COMP_n_8,SPI_COMP_n_9}),
        .\shr_reg[7]_0 ({spi_data_data__0[7:6],spi_data_data__0[3:2]}),
        .spi_en_data_reg(spi_en_data_reg_n_0),
        .up_spi_en(up_spi_en));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \addr[3]_i_1 
       (.I0(\addr[3]_i_2_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\addr[3]_i_3_n_0 ),
        .I3(cnt_ind_reg[3]),
        .I4(\addr[3]_i_4_n_0 ),
        .I5(\addr[3]_i_5_n_0 ),
        .O(p_45_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr[3]_i_10 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\current_screen_reg[3][3]_0 ),
        .O(\addr[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8800800000008000)) 
    \addr[3]_i_11 
       (.I0(cnt_ind_reg[1]),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[1][0]_2 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h3030BB88)) 
    \addr[3]_i_12 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\current_screen_reg[3][0]_4 ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .O(\addr[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h04400000)) 
    \addr[3]_i_13 
       (.I0(cnt_ind_reg[1]),
        .I1(cnt_ind_reg[0]),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][4]_3 ),
        .O(\addr[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3030FF00BBB8CC00)) 
    \addr[3]_i_2 
       (.I0(\current_screen_reg[3][15]_1 ),
        .I1(cnt_ind_reg[1]),
        .I2(\addr[7]_i_12_n_0 ),
        .I3(\current_screen_reg[3][3]_0 ),
        .I4(cnt_ind_reg[0]),
        .I5(\addr[3]_i_6_n_0 ),
        .O(\addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCF05FFFFC005)) 
    \addr[3]_i_3 
       (.I0(\addr[3]_i_7_n_0 ),
        .I1(\addr[6]_i_16_n_0 ),
        .I2(cnt_ind_reg[0]),
        .I3(cnt_ind_reg[1]),
        .I4(\addr[3]_i_8_n_0 ),
        .I5(\addr[9]_i_10_n_0 ),
        .O(\addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAEEFFFFFFFF)) 
    \addr[3]_i_4 
       (.I0(\addr[3]_i_9_n_0 ),
        .I1(\addr[7]_i_14_n_0 ),
        .I2(\addr[9]_i_13_n_0 ),
        .I3(\addr[3]_i_10_n_0 ),
        .I4(\addr[3]_i_11_n_0 ),
        .I5(cnt_ind_reg[2]),
        .O(\addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011113303)) 
    \addr[3]_i_5 
       (.I0(\addr[3]_i_12_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(cnt_ind_reg[0]),
        .I4(cnt_ind_reg[1]),
        .I5(\addr[3]_i_13_n_0 ),
        .O(\addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \addr[3]_i_6 
       (.I0(\cnt_page_reg_n_0_[0] ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .O(\addr[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0535F535)) 
    \addr[3]_i_7 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\current_screen_reg[3][15]_1 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[3][4]_3 ),
        .O(\addr[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4400400000004000)) 
    \addr[3]_i_8 
       (.I0(cnt_ind_reg[1]),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][4]_3 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][15]_1 ),
        .O(\addr[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000EA2ABF830000)) 
    \addr[3]_i_9 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][3]_0 ),
        .I4(cnt_ind_reg[1]),
        .I5(cnt_ind_reg[0]),
        .O(\addr[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4F7F00004F7F4F7F)) 
    \addr[4]_i_1 
       (.I0(\addr[4]_i_2_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(cnt_ind_reg[3]),
        .I3(\addr[4]_i_3_n_0 ),
        .I4(\addr[4]_i_4_n_0 ),
        .I5(\addr[4]_i_5_n_0 ),
        .O(p_45_out__0[4]));
  LUT6 #(
    .INIT(64'h00BB05BBFFBBAFBB)) 
    \addr[4]_i_10 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(\current_screen_reg[3][4]_3 ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(\current_screen_reg[3][3]_0 ),
        .O(\addr[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \addr[4]_i_11 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][0]_4 ),
        .O(\addr[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55FF5AFF5AFFB7B7)) 
    \addr[4]_i_2 
       (.I0(cnt_ind_reg[1]),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(cnt_ind_reg[0]),
        .I3(\current_screen_reg[3][3]_0 ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\cnt_page_reg_n_0_[0] ),
        .O(\addr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005F775F5F)) 
    \addr[4]_i_3 
       (.I0(\addr[7]_i_14_n_0 ),
        .I1(\current_screen_reg[3][3]_0 ),
        .I2(\current_screen_reg[3][4]_3 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\addr[4]_i_6_n_0 ),
        .O(\addr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1111FF0F)) 
    \addr[4]_i_4 
       (.I0(\addr[4]_i_7_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\addr[4]_i_8_n_0 ),
        .I3(\addr[4]_i_9_n_0 ),
        .I4(cnt_ind_reg[1]),
        .O(\addr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFFFF3)) 
    \addr[4]_i_5 
       (.I0(\addr[4]_i_10_n_0 ),
        .I1(\addr[4]_i_11_n_0 ),
        .I2(cnt_ind_reg[0]),
        .I3(cnt_ind_reg[1]),
        .I4(cnt_ind_reg[2]),
        .I5(cnt_ind_reg[3]),
        .O(\addr[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE0808A4840808048)) 
    \addr[4]_i_6 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][3]_0 ),
        .I2(cnt_ind_reg[1]),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3FCC33473FFFFF47)) 
    \addr[4]_i_7 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \addr[4]_i_8 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(cnt_ind_reg[0]),
        .O(\addr[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCC08000000080000)) 
    \addr[4]_i_9 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(cnt_ind_reg[2]),
        .I2(cnt_ind_reg[0]),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][4]_3 ),
        .O(\addr[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addr[5]_i_1 
       (.I0(\addr[5]_i_2_n_0 ),
        .I1(\addr_reg[5]_i_3_n_0 ),
        .I2(cnt_ind_reg[3]),
        .I3(\addr_reg[5]_i_4_n_0 ),
        .I4(cnt_ind_reg[2]),
        .I5(\addr[5]_i_5_n_0 ),
        .O(p_45_out__0[5]));
  LUT6 #(
    .INIT(64'hFFF400040AAD0008)) 
    \addr[5]_i_2 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][3]_0 ),
        .I5(cnt_ind_reg[1]),
        .O(\addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44EADD4444408844)) 
    \addr[5]_i_5 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][4]_3 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(cnt_ind_reg[1]),
        .I5(\current_screen_reg[3][3]_0 ),
        .O(\addr[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hD7C41300)) 
    \addr[5]_i_6 
       (.I0(cnt_ind_reg[0]),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\current_screen_reg[3][4]_3 ),
        .I4(\current_screen_reg[3][3]_0 ),
        .O(\addr[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB80000BBB8000088)) 
    \addr[5]_i_7 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][4]_3 ),
        .O(\addr[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC04040)) 
    \addr[5]_i_8 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][4]_3 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][0]_4 ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(\current_screen_reg[3][3]_0 ),
        .O(\addr[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00BBFC3000883030)) 
    \addr[5]_i_9 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \addr[6]_i_1 
       (.I0(\addr[6]_i_2_n_0 ),
        .I1(cnt_ind_reg[3]),
        .I2(\addr[6]_i_3_n_0 ),
        .I3(\addr[6]_i_4_n_0 ),
        .I4(\addr[6]_i_5_n_0 ),
        .I5(\addr[6]_i_6_n_0 ),
        .O(p_45_out__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \addr[6]_i_10 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\current_screen_reg[3][4]_3 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .O(\addr[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \addr[6]_i_11 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\current_screen_reg[3][4]_3 ),
        .O(\addr[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \addr[6]_i_12 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\current_screen_reg[1][0]_2 ),
        .O(\addr[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \addr[6]_i_13 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\current_screen_reg[3][3]_0 ),
        .O(\addr[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr[6]_i_14 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .O(\addr[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hDCDF)) 
    \addr[6]_i_15 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][4]_3 ),
        .O(\addr[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr[6]_i_16 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .O(\addr[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \addr[6]_i_17 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\current_screen_reg[3][4]_3 ),
        .O(\addr[6]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addr[6]_i_2 
       (.I0(\addr[6]_i_7_n_0 ),
        .I1(cnt_ind_reg[1]),
        .I2(\addr[6]_i_8_n_0 ),
        .I3(cnt_ind_reg[2]),
        .I4(\addr[6]_i_9_n_0 ),
        .O(\addr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10131313)) 
    \addr[6]_i_3 
       (.I0(\addr[6]_i_10_n_0 ),
        .I1(cnt_ind_reg[1]),
        .I2(cnt_ind_reg[0]),
        .I3(\addr[6]_i_11_n_0 ),
        .I4(\addr[6]_i_12_n_0 ),
        .I5(cnt_ind_reg[2]),
        .O(\addr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0000FF0F0000)) 
    \addr[6]_i_4 
       (.I0(\addr[6]_i_13_n_0 ),
        .I1(\addr[6]_i_14_n_0 ),
        .I2(\addr[6]_i_15_n_0 ),
        .I3(\addr[6]_i_16_n_0 ),
        .I4(cnt_ind_reg[1]),
        .I5(cnt_ind_reg[0]),
        .O(\addr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FDFDF0F0FFF0F)) 
    \addr[6]_i_5 
       (.I0(\addr[9]_i_8_n_0 ),
        .I1(\addr[7]_i_12_n_0 ),
        .I2(cnt_ind_reg[2]),
        .I3(\addr[6]_i_17_n_0 ),
        .I4(cnt_ind_reg[1]),
        .I5(cnt_ind_reg[0]),
        .O(\addr[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F475577FFFFFFFF)) 
    \addr[6]_i_6 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][4]_3 ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(cnt_ind_reg[1]),
        .O(\addr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000F00C000C)) 
    \addr[6]_i_7 
       (.I0(\current_screen_reg[3][15]_1 ),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][3]_0 ),
        .I5(cnt_ind_reg[0]),
        .O(\addr[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hD00E8004)) 
    \addr[6]_i_8 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][3]_0 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][0]_4 ),
        .O(\addr[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h001155FA00000050)) 
    \addr[6]_i_9 
       (.I0(cnt_ind_reg[1]),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][0]_4 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][3]_0 ),
        .O(\addr[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB88888BBB8BBB8)) 
    \addr[7]_i_1 
       (.I0(\addr_reg[7]_i_2_n_0 ),
        .I1(cnt_ind_reg[3]),
        .I2(\addr[7]_i_3_n_0 ),
        .I3(\addr[7]_i_4_n_0 ),
        .I4(\addr[7]_i_5_n_0 ),
        .I5(\addr[7]_i_6_n_0 ),
        .O(p_45_out__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr[7]_i_10 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .O(\addr[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr[7]_i_11 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .O(\addr[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr[7]_i_12 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .O(\addr[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr[7]_i_13 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .O(\addr[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \addr[7]_i_14 
       (.I0(cnt_ind_reg[0]),
        .I1(cnt_ind_reg[1]),
        .O(\addr[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFBBBFBBBBBBB)) 
    \addr[7]_i_3 
       (.I0(\addr[7]_i_9_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(cnt_ind_reg[1]),
        .I3(cnt_ind_reg[0]),
        .I4(\addr[7]_i_10_n_0 ),
        .I5(\addr[7]_i_11_n_0 ),
        .O(\addr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5500000045004000)) 
    \addr[7]_i_4 
       (.I0(cnt_ind_reg[1]),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[3][3]_0 ),
        .I5(cnt_ind_reg[0]),
        .O(\addr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFFAFFFAEAAA)) 
    \addr[7]_i_5 
       (.I0(cnt_ind_reg[2]),
        .I1(\addr[7]_i_12_n_0 ),
        .I2(cnt_ind_reg[0]),
        .I3(cnt_ind_reg[1]),
        .I4(\addr[7]_i_13_n_0 ),
        .I5(\addr[7]_i_11_n_0 ),
        .O(\addr[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50535F53FFFFFFFF)) 
    \addr[7]_i_6 
       (.I0(\current_screen_reg[3][3]_0 ),
        .I1(\current_screen_reg[1][1]_5 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][4]_3 ),
        .I5(\addr[7]_i_14_n_0 ),
        .O(\addr[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000EAD04080)) 
    \addr[7]_i_7 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[3][0]_4 ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\current_screen_reg[3][3]_0 ),
        .I5(cnt_ind_reg[1]),
        .O(\addr[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF00C080000000)) 
    \addr[7]_i_8 
       (.I0(\current_screen_reg[3][15]_1 ),
        .I1(cnt_ind_reg[0]),
        .I2(cnt_ind_reg[1]),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][3]_0 ),
        .O(\addr[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40444000)) 
    \addr[7]_i_9 
       (.I0(cnt_ind_reg[0]),
        .I1(cnt_ind_reg[1]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[3][4]_3 ),
        .O(\addr[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFBFF0)) 
    \addr[8]_i_10 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(cnt_ind_reg[0]),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[1][1]_5 ),
        .O(\addr[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F044440040)) 
    \addr[8]_i_2 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\current_screen_reg[1][1]_5 ),
        .I2(\addr[8]_i_4_n_0 ),
        .I3(\addr[8]_i_5_n_0 ),
        .I4(cnt_ind_reg[2]),
        .I5(\addr[8]_i_6_n_0 ),
        .O(\addr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888B8BBBBBBBB)) 
    \addr[8]_i_3 
       (.I0(\addr_reg[8]_i_7_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\current_screen_reg[1][0]_2 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\addr[8]_i_8_n_0 ),
        .O(\addr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDF7FFFFFDF75555)) 
    \addr[8]_i_4 
       (.I0(cnt_ind_reg[1]),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\current_screen_reg[3][15]_1 ),
        .I3(cnt_ind_reg[0]),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[1][1]_5 ),
        .O(\addr[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100010301030103)) 
    \addr[8]_i_5 
       (.I0(\current_screen_reg[3][15]_1 ),
        .I1(cnt_ind_reg[0]),
        .I2(cnt_ind_reg[1]),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(\current_screen_reg[1][0]_2 ),
        .O(\addr[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4DFF45454545)) 
    \addr[8]_i_6 
       (.I0(cnt_ind_reg[2]),
        .I1(cnt_ind_reg[1]),
        .I2(cnt_ind_reg[0]),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[3][15]_1 ),
        .I5(\cnt_page_reg_n_0_[1] ),
        .O(\addr[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h03C303C3070707C7)) 
    \addr[8]_i_8 
       (.I0(\current_screen_reg[1][1]_5 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][15]_1 ),
        .I4(cnt_ind_reg[0]),
        .I5(cnt_ind_reg[1]),
        .O(\addr[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFAFFCFC)) 
    \addr[8]_i_9 
       (.I0(cnt_ind_reg[0]),
        .I1(\current_screen_reg[1][1]_5 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][15]_1 ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .O(\addr[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \addr[9]_i_1 
       (.I0(\addr_reg[9]_i_2_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\addr[9]_i_3_n_0 ),
        .I3(cnt_ind_reg[3]),
        .I4(\addr[9]_i_4_n_0 ),
        .I5(\addr[9]_i_5_n_0 ),
        .O(p_45_out__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hCFFAC00A)) 
    \addr[9]_i_10 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\current_screen_reg[3][4]_3 ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\current_screen_reg[3][3]_0 ),
        .O(\addr[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8088888880000000)) 
    \addr[9]_i_11 
       (.I0(cnt_ind_reg[1]),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][3]_0 ),
        .I3(\cnt_page_reg_n_0_[0] ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \addr[9]_i_12 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][3]_0 ),
        .O(\addr[9]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \addr[9]_i_13 
       (.I0(\current_screen_reg[3][4]_3 ),
        .I1(\cnt_page_reg_n_0_[0] ),
        .I2(\cnt_page_reg_n_0_[1] ),
        .I3(\current_screen_reg[3][0]_4 ),
        .O(\addr[9]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF1500)) 
    \addr[9]_i_3 
       (.I0(cnt_ind_reg[1]),
        .I1(\addr[9]_i_8_n_0 ),
        .I2(\addr[9]_i_9_n_0 ),
        .I3(cnt_ind_reg[0]),
        .I4(\addr[9]_i_10_n_0 ),
        .O(\addr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFFFFFEEEEEEEF)) 
    \addr[9]_i_4 
       (.I0(\addr[9]_i_11_n_0 ),
        .I1(cnt_ind_reg[2]),
        .I2(\FSM_onehot_st[2]_i_3_n_0 ),
        .I3(cnt_ind_reg[0]),
        .I4(cnt_ind_reg[1]),
        .I5(\current_screen_reg[3][0]_4 ),
        .O(\addr[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1030301010000010)) 
    \addr[9]_i_5 
       (.I0(\addr[9]_i_12_n_0 ),
        .I1(\addr[9]_i_13_n_0 ),
        .I2(cnt_ind_reg[2]),
        .I3(cnt_ind_reg[1]),
        .I4(cnt_ind_reg[0]),
        .I5(\addr[9]_i_9_n_0 ),
        .O(\addr[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030FF00FF00BB88)) 
    \addr[9]_i_6 
       (.I0(\current_screen_reg[3][0]_4 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][4]_3 ),
        .I3(\current_screen_reg[3][3]_0 ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\cnt_page_reg_n_0_[0] ),
        .O(\addr[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB88FF00FF00FC30)) 
    \addr[9]_i_7 
       (.I0(\current_screen_reg[3][15]_1 ),
        .I1(cnt_ind_reg[0]),
        .I2(\current_screen_reg[3][0]_4 ),
        .I3(\current_screen_reg[3][3]_0 ),
        .I4(\cnt_page_reg_n_0_[1] ),
        .I5(\cnt_page_reg_n_0_[0] ),
        .O(\addr[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \addr[9]_i_8 
       (.I0(\cnt_page_reg_n_0_[0] ),
        .I1(\cnt_page_reg_n_0_[1] ),
        .I2(\current_screen_reg[3][3]_0 ),
        .O(\addr[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr[9]_i_9 
       (.I0(\cnt_page_reg_n_0_[1] ),
        .I1(\current_screen_reg[3][0]_4 ),
        .O(\addr[9]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out[0]),
        .Q(addr__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out[1]),
        .Q(addr__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out[2]),
        .Q(addr__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[3]),
        .Q(addr__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[4]),
        .Q(addr__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[5]),
        .Q(addr__0[5]));
  MUXF7 \addr_reg[5]_i_3 
       (.I0(\addr[5]_i_6_n_0 ),
        .I1(\addr[5]_i_7_n_0 ),
        .O(\addr_reg[5]_i_3_n_0 ),
        .S(cnt_ind_reg[1]));
  MUXF7 \addr_reg[5]_i_4 
       (.I0(\addr[5]_i_8_n_0 ),
        .I1(\addr[5]_i_9_n_0 ),
        .O(\addr_reg[5]_i_4_n_0 ),
        .S(cnt_ind_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[6]),
        .Q(addr__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[7]),
        .Q(addr__0[7]));
  MUXF7 \addr_reg[7]_i_2 
       (.I0(\addr[7]_i_7_n_0 ),
        .I1(\addr[7]_i_8_n_0 ),
        .O(\addr_reg[7]_i_2_n_0 ),
        .S(cnt_ind_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[8]),
        .Q(addr__0[8]));
  MUXF7 \addr_reg[8]_i_1 
       (.I0(\addr[8]_i_2_n_0 ),
        .I1(\addr[8]_i_3_n_0 ),
        .O(p_45_out__0[8]),
        .S(cnt_ind_reg[3]));
  MUXF7 \addr_reg[8]_i_7 
       (.I0(\addr[8]_i_9_n_0 ),
        .I1(\addr[8]_i_10_n_0 ),
        .O(\addr_reg[8]_i_7_n_0 ),
        .S(cnt_ind_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(addr),
        .CLR(AR),
        .D(p_45_out__0[9]),
        .Q(addr__0[9]));
  MUXF7 \addr_reg[9]_i_2 
       (.I0(\addr[9]_i_6_n_0 ),
        .I1(\addr[9]_i_7_n_0 ),
        .O(\addr_reg[9]_i_2_n_0 ),
        .S(cnt_ind_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \cnt_clm[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[7] ),
        .I2(p_45_out[0]),
        .O(\cnt_clm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1320)) 
    \cnt_clm[1]_i_1 
       (.I0(p_45_out[0]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(\FSM_onehot_st_reg_n_0_[7] ),
        .I3(p_45_out[1]),
        .O(\cnt_clm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h070F0800)) 
    \cnt_clm[2]_i_1 
       (.I0(p_45_out[0]),
        .I1(p_45_out[1]),
        .I2(\FSM_onehot_st_reg_n_0_[0] ),
        .I3(\FSM_onehot_st_reg_n_0_[7] ),
        .I4(p_45_out[2]),
        .O(\cnt_clm[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clm_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_clm[0]_i_1_n_0 ),
        .Q(p_45_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clm_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_clm[1]_i_1_n_0 ),
        .Q(p_45_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clm_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_clm[2]_i_1_n_0 ),
        .Q(p_45_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt_ind[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(\FSM_onehot_st_reg_n_0_[10] ),
        .I2(\FSM_onehot_st_reg_n_0_[0] ),
        .I3(cnt_ind_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    \cnt_ind[1]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(\FSM_onehot_st_reg_n_0_[10] ),
        .I2(\FSM_onehot_st_reg_n_0_[0] ),
        .I3(cnt_ind_reg[1]),
        .I4(cnt_ind_reg[0]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h0001010101000000)) 
    \cnt_ind[2]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(\FSM_onehot_st_reg_n_0_[10] ),
        .I2(\FSM_onehot_st_reg_n_0_[0] ),
        .I3(cnt_ind_reg[0]),
        .I4(cnt_ind_reg[1]),
        .I5(cnt_ind_reg[2]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_ind[3]_i_1 
       (.I0(\cnt_ind[4]_i_3_n_0 ),
        .I1(cnt_ind_reg[0]),
        .I2(cnt_ind_reg[2]),
        .I3(cnt_ind_reg[1]),
        .I4(cnt_ind_reg[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \cnt_ind[4]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[7] ),
        .I1(p_45_out[2]),
        .I2(p_45_out[1]),
        .I3(p_45_out[0]),
        .I4(\cnt_ind[4]_i_3_n_0 ),
        .O(\cnt_ind[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_ind[4]_i_2 
       (.I0(\cnt_ind[4]_i_3_n_0 ),
        .I1(cnt_ind_reg[3]),
        .I2(cnt_ind_reg[1]),
        .I3(cnt_ind_reg[2]),
        .I4(cnt_ind_reg[0]),
        .I5(cnt_ind_reg[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_ind[4]_i_3 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[10] ),
        .I2(\FSM_onehot_st_reg_n_0_[1] ),
        .O(\cnt_ind[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ind_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ind[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(cnt_ind_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ind_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ind[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(cnt_ind_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ind_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ind[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(cnt_ind_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ind_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ind[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(cnt_ind_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ind_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_ind[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(cnt_ind_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \cnt_page[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\FSM_onehot_st[10]_i_2_n_0 ),
        .I3(\FSM_onehot_st_reg_n_0_[7] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .O(\cnt_page[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0103030302000000)) 
    \cnt_page[1]_i_1 
       (.I0(\cnt_page_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(\FSM_onehot_st_reg_n_0_[1] ),
        .I3(\FSM_onehot_st[10]_i_2_n_0 ),
        .I4(\FSM_onehot_st_reg_n_0_[7] ),
        .I5(\cnt_page_reg_n_0_[1] ),
        .O(\cnt_page[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111FFFF10000000)) 
    \cnt_page[2]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\cnt_page_reg_n_0_[0] ),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page[2]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\cnt_page[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \cnt_page[2]_i_2 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\FSM_onehot_st[10]_i_2_n_0 ),
        .I3(\FSM_onehot_st_reg_n_0_[7] ),
        .O(\cnt_page[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_page_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_page[0]_i_1_n_0 ),
        .Q(\cnt_page_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_page_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_page[1]_i_1_n_0 ),
        .Q(\cnt_page_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_page_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_page[2]_i_1_n_0 ),
        .Q(p_0_in));
  LUT6 #(
    .INIT(64'h5555551500000040)) 
    \cnt_screen[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_st_reg_n_0_[7] ),
        .I2(p_0_in),
        .I3(\cnt_page_reg_n_0_[1] ),
        .I4(\cnt_page_reg_n_0_[0] ),
        .I5(p_0_in0),
        .O(\cnt_screen[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333133300002000)) 
    \cnt_screen[1]_i_1 
       (.I0(p_0_in0),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(\FSM_onehot_st_reg_n_0_[7] ),
        .I3(p_0_in),
        .I4(\FSM_onehot_st[2]_i_3_n_0 ),
        .I5(\cnt_screen_reg_n_0_[1] ),
        .O(\cnt_screen[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_screen_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_screen[0]_i_1_n_0 ),
        .Q(p_0_in0));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_screen_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt_screen[1]_i_1_n_0 ),
        .Q(\cnt_screen_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_screen[1][1][5]_i_1 
       (.I0(p_0_in0),
        .I1(\cnt_screen_reg_n_0_[1] ),
        .O(\current_screen[1][1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_screen[3][0][6]_i_1 
       (.I0(p_0_in0),
        .O(\current_screen[3][0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \current_screen[3][15][6]_i_1 
       (.I0(\cnt_screen_reg_n_0_[1] ),
        .O(\current_screen[3][15][6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \current_screen[3][3][6]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(p_0_in0),
        .I2(\cnt_screen_reg_n_0_[1] ),
        .O(current_screen));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_screen[3][3][6]_i_2 
       (.I0(\cnt_screen_reg_n_0_[1] ),
        .I1(p_0_in0),
        .O(\current_screen[3][3][6]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \current_screen_reg[1][0][5] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .D(p_0_in0),
        .PRE(AR),
        .Q(\current_screen_reg[1][0]_2 ));
  FDPE #(
    .INIT(1'b1)) 
    \current_screen_reg[1][1][5] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .D(\current_screen[1][1][5]_i_1_n_0 ),
        .PRE(AR),
        .Q(\current_screen_reg[1][1]_5 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_screen_reg[3][0][6] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .CLR(AR),
        .D(\current_screen[3][0][6]_i_1_n_0 ),
        .Q(\current_screen_reg[3][0]_4 ));
  FDPE #(
    .INIT(1'b1)) 
    \current_screen_reg[3][15][6] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .D(\current_screen[3][15][6]_i_1_n_0 ),
        .PRE(AR),
        .Q(\current_screen_reg[3][15]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_screen_reg[3][3][6] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .CLR(AR),
        .D(\current_screen[3][3][6]_i_2_n_0 ),
        .Q(\current_screen_reg[3][3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_screen_reg[3][4][6] 
       (.C(clk_IBUF_BUFG),
        .CE(current_screen),
        .CLR(AR),
        .D(\cnt_screen_reg_n_0_[1] ),
        .Q(\current_screen_reg[3][4]_3 ));
  LUT3 #(
    .INIT(8'h8A)) 
    dc_OBUF_inst_i_1
       (.I0(dc_oper),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(dc_OBUF));
  FDPE #(
    .INIT(1'b1)) 
    dc_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(page_row_n_9),
        .PRE(AR),
        .Q(dc_oper));
  FDCE #(
    .INIT(1'b0)) 
    delay_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(DELAY_COMP_n_2),
        .Q(delay_en));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF704)) 
    \delay_ms[11]_i_1 
       (.I0(p_0_in0),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\cnt_screen_reg_n_0_[1] ),
        .I3(\delay_ms_reg_n_0_[11] ),
        .O(\delay_ms[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \delay_ms[6]_i_1 
       (.I0(p_0_in0),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\cnt_screen_reg_n_0_[1] ),
        .I3(\delay_ms_reg_n_0_[6] ),
        .O(\delay_ms[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \delay_ms[9]_i_1 
       (.I0(\cnt_screen_reg_n_0_[1] ),
        .I1(\FSM_onehot_st_reg_n_0_[1] ),
        .I2(\delay_ms_reg_n_0_[9] ),
        .O(\delay_ms[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \delay_ms_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\delay_ms[11]_i_1_n_0 ),
        .Q(\delay_ms_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \delay_ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\delay_ms[6]_i_1_n_0 ),
        .Q(\delay_ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \delay_ms_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\delay_ms[9]_i_1_n_0 ),
        .Q(\delay_ms_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    page_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(page_row_n_8),
        .Q(page_en_reg_n_0));
  update_page page_row
       (.AR(AR),
        .D({p_1_in[5:4],p_1_in[1:0]}),
        .\FSM_onehot_st_reg[10] (page_row_n_8),
        .\FSM_onehot_st_reg[10]_0 (page_row_n_9),
        .\FSM_onehot_st_reg[2] (\FSM_onehot_st[2]_i_3_n_0 ),
        .\FSM_onehot_st_reg[3] (\cnt_page_reg_n_0_[1] ),
        .\FSM_onehot_st_reg[3]_0 (\FSM_onehot_st[10]_i_2_n_0 ),
        .\FSM_sequential_st_reg[0]_0 ({spi_fin,SPI_COMP_n_3}),
        .Q({spi_data_data__0[5:4],spi_data_data__0[1:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cnt_page_reg[0] (nst[3:2]),
        .dc_oper(dc_oper),
        .p_0_in(p_0_in),
        .page_en_reg({\FSM_onehot_st_reg_n_0_[10] ,\FSM_onehot_st_reg_n_0_[7] ,st,\FSM_onehot_st_reg_n_0_[1] }),
        .page_en_reg_0(page_en_reg_n_0),
        .\shr_reg[0] (\cnt_page_reg_n_0_[0] ),
        .\shr_reg[1] (spi_en_data_reg_n_0),
        .\shr_reg[5] ({SPI_COMP_n_7,SPI_COMP_n_8,SPI_COMP_n_9}),
        .spi_en_reg_0(page_row_n_5),
        .up_spi_en(up_spi_en));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[0]),
        .Q(spi_data_data__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[1]),
        .Q(spi_data_data__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[2]),
        .Q(spi_data_data__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[3]),
        .Q(spi_data_data__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[4]),
        .Q(spi_data_data__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[5]),
        .Q(spi_data_data__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[6]),
        .Q(spi_data_data__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_data_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_data_data),
        .CLR(AR),
        .D(dout_reg__0[7]),
        .Q(spi_data_data__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    spi_en_data_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(SPI_COMP_n_6),
        .Q(spi_en_data_reg_n_0));
endmodule

(* NotValidForBitStream *)
module oled_top
   (clk,
    rst,
    sclk,
    sdo,
    dc,
    vdd,
    vbat,
    res);
  input clk;
  input rst;
  output sclk;
  output sdo;
  output dc;
  output vdd;
  output vbat;
  output res;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]current;
  wire dc;
  wire dc_OBUF;
  wire [4:4]div;
  wire init_done;
  wire [1:0]next;
  wire res;
  wire res_OBUF;
  wire rst;
  wire rst_IBUF;
  wire sclk;
  wire sclk_OBUF;
  wire sdo;
  wire sdo_OBUF;
  wire sdo_oper;
  wire vbat;
  wire vbat_OBUF;
  wire vdd;
  wire vdd_OBUF;

initial begin
 $sdf_annotate("tb_oled_top_time_synth.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "idle:00,hold:01,oper:10,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[0]),
        .Q(current[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "idle:00,hold:01,oper:10,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next[1]),
        .Q(current[1]),
        .R(rst_IBUF));
  fsm_init INIT
       (.AR(rst_IBUF),
        .D(next[1]),
        .\FSM_onehot_current_reg[7]_0 (init_done),
        .Q(current),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .res_OBUF(res_OBUF),
        .sclk(div),
        .sclk_OBUF(sclk_OBUF),
        .sdo_OBUF(sdo_OBUF),
        .sdo_oper(sdo_oper),
        .vbat_OBUF(vbat_OBUF),
        .vdd_OBUF(vdd_OBUF));
  fsm_oper OPER
       (.AR(rst_IBUF),
        .D(next[0]),
        .\FSM_sequential_current_reg[0] (init_done),
        .Q(current),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dc_OBUF(dc_OBUF),
        .\div_reg[4] (div),
        .sdo_oper(sdo_oper));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dc_OBUF_inst
       (.I(dc_OBUF),
        .O(dc));
  OBUF res_OBUF_inst
       (.I(res_OBUF),
        .O(res));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  OBUF sdo_OBUF_inst
       (.I(sdo_OBUF),
        .O(sdo));
  OBUF vbat_OBUF_inst
       (.I(vbat_OBUF),
        .O(vbat));
  OBUF vdd_OBUF_inst
       (.I(vdd_OBUF),
        .O(vdd));
endmodule

module rom
   (D,
    clk_IBUF_BUFG,
    Q,
    dout_reg_0);
  output [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]Q;
  input [9:0]dout_reg_0;

  wire [7:0]D;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [9:0]dout_reg_0;
  wire [15:8]NLW_dout_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "CHAR_LIB_COM/dout" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h000000000000005F000000000000000000000000000000000000000000000000),
    .INIT_11(256'h00240026003C00640026003C0064000000000000000300000003000000000000),
    .INIT_12(256'h00210052002400080012002500420000003200490049007F0049004900260000),
    .INIT_13(256'h000000000000000300000000000000000028005800220055004E005000200000),
    .INIT_14(256'h0000001C0022004100000000000000000000000000410022001C000000000000),
    .INIT_15(256'h000000080008003E000800080000000000150015000E000E0015001500000000),
    .INIT_16(256'h0000000800080008000800080000000000000000003000500000000000000000),
    .INIT_17(256'h0001000200040008001000200040000000000000000000400000000000000000),
    .INIT_18(256'h000000000040007F00410000000000000000003E004100410041003E00000000),
    .INIT_19(256'h000000360049004900410022000000000000006E004900510061004200000000),
    .INIT_1A(256'h0000007100490049004900270000000000000010007F00120014001800000000),
    .INIT_1B(256'h00000003000D001100210043000000000000007000480049004A003C00000000),
    .INIT_1C(256'h0000001E00290049000900060000000000000036004900490049003600000000),
    .INIT_1D(256'h0000000000300052000000000000000000000000000000120000000000000000),
    .INIT_1E(256'h0014001400140014001400140000000000000022001400140008000000000000),
    .INIT_1F(256'h0000000200050059000100020000000000000008001400140022000000000000),
    .INIT_20(256'h0040007C004A0009004A007C00400000002E0051004D0055005D0041003E0000),
    .INIT_21(256'h002200410041004100410022001C000000360049004900490049007F00410000),
    .INIT_22(256'h00630041005D00490049007F00410000001C0022004100410041007F00410000),
    .INIT_23(256'h0008003A0049004900410022001C000000030001001D00090049007F00410000),
    .INIT_24(256'h000000410041007F00410041000000000041007F000800080008007F00410000),
    .INIT_25(256'h004100610012000C0008007F0041000000010001003F00410041004000300000),
    .INIT_26(256'h0041007F0042000C0042007F0041000000600040004000400041007F00410000),
    .INIT_27(256'h001C00220041004100410022001C00000001007F0011000C0042007F00410000),
    .INIT_28(256'h004C00520061002100210012000C000000060009000900090049007F00410000),
    .INIT_29(256'h0033004900490049004900490066000000460069001900090009007F00410000),
    .INIT_2A(256'h0001003F004100400041003F00010000000300010041007F0041000100030000),
    .INIT_2B(256'h0001001F006100140061001F000100000001000F003100400031000F00010000),
    .INIT_2C(256'h0001000300440078004400030001000000410041003600080036004100410000),
    .INIT_2D(256'h0000000000410041007F00000000000000610043004500490051006100430000),
    .INIT_2E(256'h00000000007F0041004100000000000000400020001000080004000200010000),
    .INIT_2F(256'h0040004000400040004000400000000000040002000100010002000400000000),
    .INIT_30(256'h0040003C004A004A004A00340000000000000000000000000002000100000000),
    .INIT_31(256'h00000024004200420042003C000000000030004800480048003F004100000000),
    .INIT_32(256'h0000002C004A004A004A003C000000000040003F004900480048003000000000),
    .INIT_33(256'h0001003F004900490049002600000000000000090049007E0048000000000000),
    .INIT_34(256'h000000000040007D004400000000000000400078004400040048007F00410000),
    .INIT_35(256'h00420042002400180010007F0041000000000000003D00440040000000000000),
    .INIT_36(256'h0040007E0002007C0002007E00420000000000400040007F0041004000000000),
    .INIT_37(256'h0000003C004200420042003C000000000040007C004200020044007E00420000),
    .INIT_38(256'h0041007F0049000900090006000000000006000900090049007F004100000000),
    .INIT_39(256'h00000036004A004A004A0064000000000004000200020044007E004200000000),
    .INIT_3A(256'h007E002200400040003E0002000000000000002000440044003F000400000000),
    .INIT_3B(256'h0002001E006200180062001E000200000002000E003200400032000E00020040),
    .INIT_3C(256'h0001000300050038004500430001000000420062001400080014006200420000),
    .INIT_3D(256'h0000000000410036000800000000000000620046004A00520062004600000000),
    .INIT_3E(256'h00000008003600410000000000000000000000000000007F0000000000000000),
    .INIT_3F(256'h00AA005500AA005500AA005500AA000000180010001000080008001800000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dout_reg
       (.ADDRARDADDR({dout_reg_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dout_reg_DOADO_UNCONNECTED[15:8],D}),
        .DOBDO(NLW_dout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(Q),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module spi
   (sdo_oper,
    Q,
    \FSM_onehot_st_reg[3]_0 ,
    \FSM_onehot_st_reg[6] ,
    \FSM_onehot_st_reg[5] ,
    \shr_reg[4]_0 ,
    clk_IBUF_BUFG,
    AR,
    \shr_reg[0]_0 ,
    D,
    \shr_reg[7]_0 ,
    up_spi_en,
    dc_oper,
    spi_en_data_reg,
    \FSM_onehot_st_reg[7] ,
    p_0_in,
    \FSM_onehot_st_reg[7]_0 ,
    \FSM_onehot_st_reg[7]_1 );
  output sdo_oper;
  output [0:0]Q;
  output [1:0]\FSM_onehot_st_reg[3]_0 ;
  output [1:0]\FSM_onehot_st_reg[6] ;
  output \FSM_onehot_st_reg[5] ;
  output [2:0]\shr_reg[4]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \shr_reg[0]_0 ;
  input [3:0]D;
  input [3:0]\shr_reg[7]_0 ;
  input up_spi_en;
  input dc_oper;
  input spi_en_data_reg;
  input [2:0]\FSM_onehot_st_reg[7] ;
  input p_0_in;
  input \FSM_onehot_st_reg[7]_0 ;
  input \FSM_onehot_st_reg[7]_1 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire [1:0]\FSM_onehot_st_reg[3]_0 ;
  wire \FSM_onehot_st_reg[5] ;
  wire [1:0]\FSM_onehot_st_reg[6] ;
  wire [2:0]\FSM_onehot_st_reg[7] ;
  wire \FSM_onehot_st_reg[7]_0 ;
  wire \FSM_onehot_st_reg[7]_1 ;
  wire \FSM_onehot_st_reg_n_0_[1] ;
  wire [0:0]Q;
  wire [2:0]bit_counter;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire bit_counter_0;
  wire clk_IBUF_BUFG;
  wire dc_oper;
  wire [3:0]div;
  wire [4:0]div_1;
  wire [3:0]nst;
  wire p_0_in;
  wire p_0_in__0_6;
  wire [7:2]p_1_in;
  wire sclk_oper;
  wire sdo_oper;
  wire \shr[7]_i_1__0_n_0 ;
  wire \shr_reg[0]_0 ;
  wire [2:0]\shr_reg[4]_0 ;
  wire [3:0]\shr_reg[7]_0 ;
  wire \shr_reg_n_0_[1] ;
  wire \shr_reg_n_0_[2] ;
  wire \shr_reg_n_0_[5] ;
  wire \shr_reg_n_0_[6] ;
  wire spi_en_data_reg;
  wire [2:2]st;
  wire tm;
  wire up_spi_en;

  LUT5 #(
    .INIT(32'h000EEE0E)) 
    \FSM_onehot_st[0]_i_1 
       (.I0(\FSM_onehot_st_reg[3]_0 [1]),
        .I1(\FSM_onehot_st_reg[3]_0 [0]),
        .I2(up_spi_en),
        .I3(dc_oper),
        .I4(spi_en_data_reg),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_st[1]_i_1__0 
       (.I0(\shr_reg[0]_0 ),
        .I1(bit_counter[1]),
        .I2(bit_counter[0]),
        .I3(bit_counter[2]),
        .I4(\FSM_onehot_st_reg_n_0_[1] ),
        .O(nst[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_st[2]_i_1__1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .O(nst[2]));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \FSM_onehot_st[3]_i_1 
       (.I0(st),
        .I1(spi_en_data_reg),
        .I2(dc_oper),
        .I3(up_spi_en),
        .I4(\FSM_onehot_st_reg[3]_0 [1]),
        .O(nst[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_st[6]_i_1 
       (.I0(\FSM_onehot_st_reg[7] [0]),
        .I1(\FSM_onehot_st_reg[3]_0 [1]),
        .I2(\FSM_onehot_st_reg[7] [1]),
        .O(\FSM_onehot_st_reg[6] [0]));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \FSM_onehot_st[7]_i_1 
       (.I0(\FSM_onehot_st_reg[7] [1]),
        .I1(\FSM_onehot_st_reg[3]_0 [1]),
        .I2(p_0_in),
        .I3(\FSM_onehot_st_reg[7]_0 ),
        .I4(\FSM_onehot_st_reg[7]_1 ),
        .I5(\FSM_onehot_st_reg[7] [2]),
        .O(\FSM_onehot_st_reg[6] [1]));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nst[0]),
        .PRE(AR),
        .Q(\FSM_onehot_st_reg[3]_0 [0]));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(\FSM_onehot_st_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[2]),
        .Q(st));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[3]),
        .Q(\FSM_onehot_st_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \bit_counter[0]_i_1 
       (.I0(\FSM_onehot_st_reg[3]_0 [0]),
        .I1(Q),
        .I2(tm),
        .I3(\FSM_onehot_st_reg_n_0_[1] ),
        .I4(bit_counter[0]),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1333333320000000)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter[0]),
        .I1(\FSM_onehot_st_reg[3]_0 [0]),
        .I2(Q),
        .I3(tm),
        .I4(\FSM_onehot_st_reg_n_0_[1] ),
        .I5(bit_counter[1]),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h15FF4000)) 
    \bit_counter[2]_i_1 
       (.I0(\FSM_onehot_st_reg[3]_0 [0]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter_0),
        .I4(bit_counter[2]),
        .O(\bit_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \bit_counter[2]_i_2__0 
       (.I0(\FSM_onehot_st_reg[3]_0 [0]),
        .I1(Q),
        .I2(tm),
        .I3(\FSM_onehot_st_reg_n_0_[1] ),
        .O(bit_counter_0));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \div[0]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[0]),
        .O(div_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \div[1]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[1]),
        .I2(div[0]),
        .O(div_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \div[2]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[0]),
        .I2(div[1]),
        .I3(div[2]),
        .O(div_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \div[3]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[1]),
        .I2(div[0]),
        .I3(div[2]),
        .I4(div[3]),
        .O(div_1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \div[4]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[2]),
        .I2(div[0]),
        .I3(div[1]),
        .I4(div[3]),
        .I5(Q),
        .O(div_1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[0]),
        .Q(div[0]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[1]),
        .Q(div[1]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[2]),
        .Q(div[2]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[3]),
        .Q(div[3]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[4]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    sdo_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0_6),
        .Q(sdo_oper));
  LUT6 #(
    .INIT(64'hA3F3FFFFA0000000)) 
    \shr[2]_i_1__0 
       (.I0(\shr_reg[7]_0 [0]),
        .I1(up_spi_en),
        .I2(dc_oper),
        .I3(spi_en_data_reg),
        .I4(\FSM_onehot_st_reg[3]_0 [0]),
        .I5(\shr_reg_n_0_[1] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hA3F3FFFFA0000000)) 
    \shr[3]_i_1__0 
       (.I0(\shr_reg[7]_0 [1]),
        .I1(up_spi_en),
        .I2(dc_oper),
        .I3(spi_en_data_reg),
        .I4(\FSM_onehot_st_reg[3]_0 [0]),
        .I5(\shr_reg_n_0_[2] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hA3F3FFFFA0000000)) 
    \shr[6]_i_1__0 
       (.I0(\shr_reg[7]_0 [2]),
        .I1(up_spi_en),
        .I2(dc_oper),
        .I3(spi_en_data_reg),
        .I4(\FSM_onehot_st_reg[3]_0 [0]),
        .I5(\shr_reg_n_0_[5] ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \shr[7]_i_1__0 
       (.I0(Q),
        .I1(tm),
        .I2(\FSM_onehot_st_reg_n_0_[1] ),
        .I3(\shr_reg[0]_0 ),
        .O(\shr[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA3F3FFFFA0000000)) 
    \shr[7]_i_2__0 
       (.I0(\shr_reg[7]_0 [3]),
        .I1(up_spi_en),
        .I2(dc_oper),
        .I3(spi_en_data_reg),
        .I4(\FSM_onehot_st_reg[3]_0 [0]),
        .I5(\shr_reg_n_0_[6] ),
        .O(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(\shr_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(\shr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(\shr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(\shr_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\shr_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(\shr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(\shr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(p_0_in__0_6));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    spi_en_data_i_1
       (.I0(\FSM_onehot_st_reg[7] [0]),
        .I1(\FSM_onehot_st_reg[7] [1]),
        .I2(\FSM_onehot_st_reg[3]_0 [1]),
        .I3(spi_en_data_reg),
        .O(\FSM_onehot_st_reg[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    tm_i_1__0
       (.I0(Q),
        .O(sclk_oper));
  FDCE #(
    .INIT(1'b0)) 
    tm_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_oper),
        .Q(tm));
endmodule

(* ORIG_REF_NAME = "spi" *) 
module spi_0
   (sclk_OBUF,
    sdo_OBUF,
    \FSM_onehot_st_reg[3]_0 ,
    D,
    clk_IBUF_BUFG,
    AR,
    Q,
    \FSM_onehot_current_reg[5] ,
    sdo,
    sclk,
    sdo_oper);
  output sclk_OBUF;
  output sdo_OBUF;
  output [0:0]\FSM_onehot_st_reg[3]_0 ;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [1:0]Q;
  input [8:0]\FSM_onehot_current_reg[5] ;
  input [1:0]sdo;
  input [0:0]sclk;
  input sdo_oper;

  wire [0:0]AR;
  wire [0:0]D;
  wire [8:0]\FSM_onehot_current_reg[5] ;
  wire [0:0]\FSM_onehot_st_reg[3]_0 ;
  wire \FSM_onehot_st_reg_n_0_[0] ;
  wire \FSM_onehot_st_reg_n_0_[1] ;
  wire [1:0]Q;
  wire [2:0]bit_counter;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire bit_counter_0;
  wire clk_IBUF_BUFG;
  wire [4:0]div;
  wire [4:0]div_1;
  wire [3:0]nst;
  wire p_0_in__0;
  wire [7:1]p_1_in;
  wire [0:0]sclk;
  wire sclk_OBUF;
  wire sclk_init;
  wire [1:0]sdo;
  wire sdo_OBUF;
  wire sdo_init;
  wire sdo_oper;
  wire \shr[0]_i_1__0_n_0 ;
  wire \shr[7]_i_1_n_0 ;
  wire \shr_reg_n_0_[0] ;
  wire \shr_reg_n_0_[1] ;
  wire \shr_reg_n_0_[2] ;
  wire \shr_reg_n_0_[3] ;
  wire \shr_reg_n_0_[4] ;
  wire \shr_reg_n_0_[5] ;
  wire \shr_reg_n_0_[6] ;
  wire [2:2]st;
  wire tm;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current[5]_i_1 
       (.I0(\FSM_onehot_st_reg[3]_0 ),
        .I1(Q[1]),
        .I2(\FSM_onehot_current_reg[5] [8]),
        .I3(Q[0]),
        .O(D));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_st[0]_i_1__0 
       (.I0(\FSM_onehot_st_reg[3]_0 ),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .O(nst[0]));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \FSM_onehot_st[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(bit_counter[2]),
        .I3(bit_counter[1]),
        .I4(bit_counter[0]),
        .I5(\FSM_onehot_st_reg_n_0_[1] ),
        .O(nst[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_st[2]_i_1__0 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[2]),
        .O(nst[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_st[3]_i_1__1 
       (.I0(st),
        .I1(Q[1]),
        .I2(\FSM_onehot_st_reg[3]_0 ),
        .O(nst[3]));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(nst[0]),
        .PRE(AR),
        .Q(\FSM_onehot_st_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(\FSM_onehot_st_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[2]),
        .Q(st));
  (* FSM_ENCODED_STATES = "send:0010,hold1:0100,idle:0001,done:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_st_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[3]),
        .Q(\FSM_onehot_st_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \bit_counter[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(div[4]),
        .I2(tm),
        .I3(\FSM_onehot_st_reg_n_0_[1] ),
        .I4(bit_counter[0]),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1333333320000000)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter[0]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(div[4]),
        .I3(tm),
        .I4(\FSM_onehot_st_reg_n_0_[1] ),
        .I5(bit_counter[1]),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07FF0800)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .I2(\FSM_onehot_st_reg_n_0_[0] ),
        .I3(bit_counter_0),
        .I4(bit_counter[2]),
        .O(\bit_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \bit_counter[2]_i_2 
       (.I0(\FSM_onehot_st_reg_n_0_[0] ),
        .I1(div[4]),
        .I2(tm),
        .I3(\FSM_onehot_st_reg_n_0_[1] ),
        .O(bit_counter_0));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \div[0]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[0]),
        .O(div_1[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \div[1]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[1]),
        .I2(div[0]),
        .O(div_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \div[2]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[0]),
        .I2(div[1]),
        .I3(div[2]),
        .O(div_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \div[3]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[1]),
        .I2(div[0]),
        .I3(div[2]),
        .I4(div[3]),
        .O(div_1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \div[4]_i_1 
       (.I0(\FSM_onehot_st_reg_n_0_[1] ),
        .I1(div[2]),
        .I2(div[0]),
        .I3(div[1]),
        .I4(div[3]),
        .I5(div[4]),
        .O(div_1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[0]),
        .Q(div[0]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[1]),
        .Q(div[1]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[2]),
        .Q(div[2]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[3]),
        .Q(div[3]));
  FDCE #(
    .INIT(1'b0)) 
    \div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(div_1[4]),
        .Q(div[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h04F7)) 
    sclk_OBUF_inst_i_1
       (.I0(div[4]),
        .I1(sdo[0]),
        .I2(sdo[1]),
        .I3(sclk),
        .O(sclk_OBUF));
  LUT4 #(
    .INIT(16'hFB08)) 
    sdo_OBUF_inst_i_1
       (.I0(sdo_init),
        .I1(sdo[0]),
        .I2(sdo[1]),
        .I3(sdo_oper),
        .O(sdo_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    sdo_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0),
        .Q(sdo_init));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \shr[0]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_reg[5] [0]),
        .O(\shr[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[1]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [1]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[2]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [2]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[1] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[3]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [3]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[2] ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[4]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [4]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[3] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[5]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [5]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[4] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[6]_i_1 
       (.I0(\FSM_onehot_current_reg[5] [6]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[5] ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \shr[7]_i_1 
       (.I0(div[4]),
        .I1(tm),
        .I2(\FSM_onehot_st_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\FSM_onehot_st_reg_n_0_[0] ),
        .O(\shr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \shr[7]_i_2 
       (.I0(\FSM_onehot_current_reg[5] [7]),
        .I1(\FSM_onehot_st_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(\shr_reg_n_0_[6] ),
        .O(p_1_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\shr[0]_i_1__0_n_0 ),
        .Q(\shr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(\shr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(\shr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(\shr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(\shr_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(\shr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(\shr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shr[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tm_i_1
       (.I0(div[4]),
        .O(sclk_init));
  FDCE #(
    .INIT(1'b0)) 
    tm_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sclk_init),
        .Q(tm));
endmodule

module update_page
   (up_spi_en,
    D,
    spi_en_reg_0,
    \cnt_page_reg[0] ,
    \FSM_onehot_st_reg[10] ,
    \FSM_onehot_st_reg[10]_0 ,
    clk_IBUF_BUFG,
    AR,
    Q,
    dc_oper,
    \shr_reg[5] ,
    \shr_reg[1] ,
    \FSM_sequential_st_reg[0]_0 ,
    \shr_reg[0] ,
    \FSM_onehot_st_reg[3] ,
    p_0_in,
    page_en_reg,
    \FSM_onehot_st_reg[3]_0 ,
    \FSM_onehot_st_reg[2] ,
    page_en_reg_0);
  output up_spi_en;
  output [3:0]D;
  output spi_en_reg_0;
  output [1:0]\cnt_page_reg[0] ;
  output \FSM_onehot_st_reg[10] ;
  output \FSM_onehot_st_reg[10]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [3:0]Q;
  input dc_oper;
  input [2:0]\shr_reg[5] ;
  input \shr_reg[1] ;
  input [1:0]\FSM_sequential_st_reg[0]_0 ;
  input \shr_reg[0] ;
  input \FSM_onehot_st_reg[3] ;
  input p_0_in;
  input [3:0]page_en_reg;
  input \FSM_onehot_st_reg[3]_0 ;
  input \FSM_onehot_st_reg[2] ;
  input page_en_reg_0;

  wire [0:0]AR;
  wire [3:0]D;
  wire \FSM_onehot_st[2]_i_2_n_0 ;
  wire \FSM_onehot_st[3]_i_2_n_0 ;
  wire \FSM_onehot_st_reg[10] ;
  wire \FSM_onehot_st_reg[10]_0 ;
  wire \FSM_onehot_st_reg[2] ;
  wire \FSM_onehot_st_reg[3] ;
  wire \FSM_onehot_st_reg[3]_0 ;
  wire [1:0]\FSM_sequential_st_reg[0]_0 ;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [2:0]cmd_cnt;
  wire \cmd_cnt[0]_i_1_n_0 ;
  wire \cmd_cnt[1]_i_1_n_0 ;
  wire \cmd_cnt[2]_i_1_n_0 ;
  wire [1:0]\cnt_page_reg[0] ;
  wire dc_oper;
  wire [2:0]nst;
  wire p_0_in;
  wire [3:0]page_en_reg;
  wire page_en_reg_0;
  wire \shr[0]_i_2_n_0 ;
  wire \shr[1]_i_2_n_0 ;
  wire \shr_reg[0] ;
  wire \shr_reg[1] ;
  wire [2:0]\shr_reg[5] ;
  wire spi_en_i_1_n_0;
  wire spi_en_reg_0;
  wire [2:0]st;
  wire up_spi_en;

  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_onehot_st[1]_i_2 
       (.I0(up_spi_en),
        .I1(dc_oper),
        .I2(\shr_reg[1] ),
        .I3(\FSM_sequential_st_reg[0]_0 [0]),
        .O(spi_en_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF444F4F4)) 
    \FSM_onehot_st[2]_i_1 
       (.I0(\FSM_onehot_st[2]_i_2_n_0 ),
        .I1(page_en_reg[1]),
        .I2(page_en_reg[3]),
        .I3(\FSM_onehot_st_reg[2] ),
        .I4(p_0_in),
        .I5(page_en_reg[0]),
        .O(\cnt_page_reg[0] [0]));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_st[2]_i_2 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(st[0]),
        .O(\FSM_onehot_st[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEFFAAAA)) 
    \FSM_onehot_st[3]_i_1__0 
       (.I0(\FSM_onehot_st[3]_i_2_n_0 ),
        .I1(\shr_reg[0] ),
        .I2(\FSM_onehot_st_reg[3] ),
        .I3(p_0_in),
        .I4(page_en_reg[2]),
        .I5(\FSM_onehot_st_reg[3]_0 ),
        .O(\cnt_page_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_st[3]_i_2 
       (.I0(page_en_reg[1]),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .O(\FSM_onehot_st[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \FSM_sequential_st[0]_i_1__1 
       (.I0(page_en_reg_0),
        .I1(st[2]),
        .I2(\FSM_sequential_st_reg[0]_0 [1]),
        .I3(st[1]),
        .I4(cmd_cnt[2]),
        .I5(st[0]),
        .O(nst[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \FSM_sequential_st[1]_i_1__1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .O(nst[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h302C)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(cmd_cnt[2]),
        .I1(st[2]),
        .I2(st[1]),
        .I3(st[0]),
        .O(nst[2]));
  (* FSM_ENCODED_STATES = "SendCmd:010,idle:000,ClearDC:001,SetDC:110,Transition1:011,Transition2:100,Transition5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[0]),
        .Q(st[0]));
  (* FSM_ENCODED_STATES = "SendCmd:010,idle:000,ClearDC:001,SetDC:110,Transition1:011,Transition2:100,Transition5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[1]),
        .Q(st[1]));
  (* FSM_ENCODED_STATES = "SendCmd:010,idle:000,ClearDC:001,SetDC:110,Transition1:011,Transition2:100,Transition5:101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_st_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(nst[2]),
        .Q(st[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h9D20)) 
    \cmd_cnt[0]_i_1 
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .I3(cmd_cnt[0]),
        .O(\cmd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hC7F30800)) 
    \cmd_cnt[1]_i_1 
       (.I0(cmd_cnt[0]),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(cmd_cnt[1]),
        .O(\cmd_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF07FFF0F00800000)) 
    \cmd_cnt[2]_i_1 
       (.I0(cmd_cnt[1]),
        .I1(cmd_cnt[0]),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .I5(cmd_cnt[2]),
        .O(\cmd_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cmd_cnt[0]_i_1_n_0 ),
        .Q(cmd_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cmd_cnt[1]_i_1_n_0 ),
        .Q(cmd_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cmd_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\cmd_cnt[2]_i_1_n_0 ),
        .Q(cmd_cnt[2]));
  LUT5 #(
    .INIT(32'hEAFBEAAA)) 
    dc_i_1
       (.I0(\FSM_onehot_st[3]_i_2_n_0 ),
        .I1(page_en_reg[3]),
        .I2(p_0_in),
        .I3(page_en_reg[0]),
        .I4(dc_oper),
        .O(\FSM_onehot_st_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hFFDDFF8C)) 
    page_en_i_1
       (.I0(\FSM_onehot_st[3]_i_2_n_0 ),
        .I1(page_en_reg[3]),
        .I2(p_0_in),
        .I3(page_en_reg[0]),
        .I4(page_en_reg_0),
        .O(\FSM_onehot_st_reg[10] ));
  LUT6 #(
    .INIT(64'hAAAA008000000080)) 
    \shr[0]_i_1 
       (.I0(spi_en_reg_0),
        .I1(\shr_reg[0] ),
        .I2(cmd_cnt[0]),
        .I3(\shr[0]_i_2_n_0 ),
        .I4(dc_oper),
        .I5(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \shr[0]_i_2 
       (.I0(cmd_cnt[2]),
        .I1(cmd_cnt[1]),
        .O(\shr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
    \shr[1]_i_1__0 
       (.I0(\shr[1]_i_2_n_0 ),
        .I1(up_spi_en),
        .I2(dc_oper),
        .I3(\shr_reg[1] ),
        .I4(\FSM_sequential_st_reg[0]_0 [0]),
        .I5(\shr_reg[5] [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h888B88BB888B888B)) 
    \shr[1]_i_2 
       (.I0(Q[1]),
        .I1(dc_oper),
        .I2(cmd_cnt[0]),
        .I3(cmd_cnt[1]),
        .I4(cmd_cnt[2]),
        .I5(\FSM_onehot_st_reg[3] ),
        .O(\shr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \shr[4]_i_1__0 
       (.I0(Q[2]),
        .I1(dc_oper),
        .I2(cmd_cnt[1]),
        .I3(cmd_cnt[0]),
        .I4(spi_en_reg_0),
        .I5(\shr_reg[5] [1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h888BFFFF888B0000)) 
    \shr[5]_i_1__0 
       (.I0(Q[3]),
        .I1(dc_oper),
        .I2(cmd_cnt[1]),
        .I3(cmd_cnt[0]),
        .I4(spi_en_reg_0),
        .I5(\shr_reg[5] [2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hDF08)) 
    spi_en_i_1
       (.I0(st[0]),
        .I1(st[1]),
        .I2(st[2]),
        .I3(up_spi_en),
        .O(spi_en_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    spi_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(spi_en_i_1_n_0),
        .Q(up_spi_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
