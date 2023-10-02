/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Oct  2 21:07:31 2023
/////////////////////////////////////////////////////////////


module Serializer ( clk, rst, P_Data, Data_valid, BUSY, ser_en, ser_done, 
        ser_data );
  input [7:0] P_Data;
  input clk, rst, Data_valid, BUSY, ser_en;
  output ser_done, ser_data;
  wire   N24, N25, N26, N27, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3,
         n26;
  wire   [7:1] temp;
  wire   [3:0] counter;

  DFFRQX2M \temp_reg[6]  ( .D(n20), .CK(clk), .RN(rst), .Q(temp[6]) );
  DFFRQX2M \temp_reg[5]  ( .D(n21), .CK(clk), .RN(rst), .Q(temp[5]) );
  DFFRQX2M \temp_reg[4]  ( .D(n22), .CK(clk), .RN(rst), .Q(temp[4]) );
  DFFRQX2M \temp_reg[3]  ( .D(n23), .CK(clk), .RN(rst), .Q(temp[3]) );
  DFFRQX2M \temp_reg[2]  ( .D(n24), .CK(clk), .RN(rst), .Q(temp[2]) );
  DFFRQX2M \temp_reg[1]  ( .D(n25), .CK(clk), .RN(rst), .Q(temp[1]) );
  DFFRQX2M \temp_reg[0]  ( .D(n18), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRQX2M \temp_reg[7]  ( .D(n19), .CK(clk), .RN(rst), .Q(temp[7]) );
  DFFRQX2M \counter_reg[2]  ( .D(N26), .CK(clk), .RN(rst), .Q(counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(N27), .CK(clk), .RN(rst), .Q(counter[3]) );
  DFFRQX2M \counter_reg[1]  ( .D(N25), .CK(clk), .RN(rst), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N24), .CK(clk), .RN(rst), .Q(counter[0]) );
  NOR2X2M U3 ( .A(n2), .B(n1), .Y(n6) );
  NOR2X2M U4 ( .A(n1), .B(n6), .Y(n4) );
  INVX2M U5 ( .A(ser_en), .Y(n2) );
  NOR3X2M U6 ( .A(n15), .B(counter[3]), .C(n26), .Y(ser_done) );
  OAI2BB2X1M U7 ( .B0(n16), .B1(n2), .A0N(counter[2]), .A1N(N24), .Y(N26) );
  AOI32X1M U8 ( .A0(counter[0]), .A1(n26), .A2(counter[1]), .B0(counter[2]), 
        .B1(n3), .Y(n16) );
  NAND2X2M U9 ( .A(counter[1]), .B(counter[0]), .Y(n15) );
  NOR2X2M U10 ( .A(n2), .B(counter[0]), .Y(N24) );
  INVX2M U11 ( .A(counter[2]), .Y(n26) );
  OAI2BB1X2M U12 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n18) );
  AOI22X1M U13 ( .A0(temp[1]), .A1(n6), .B0(P_Data[0]), .B1(n1), .Y(n5) );
  OAI2BB1X2M U14 ( .A0N(temp[1]), .A1N(n4), .B0(n13), .Y(n25) );
  AOI22X1M U15 ( .A0(temp[2]), .A1(n6), .B0(P_Data[1]), .B1(n1), .Y(n13) );
  OAI2BB1X2M U16 ( .A0N(n4), .A1N(temp[2]), .B0(n12), .Y(n24) );
  AOI22X1M U17 ( .A0(temp[3]), .A1(n6), .B0(P_Data[2]), .B1(n1), .Y(n12) );
  OAI2BB1X2M U18 ( .A0N(n4), .A1N(temp[3]), .B0(n11), .Y(n23) );
  AOI22X1M U19 ( .A0(temp[4]), .A1(n6), .B0(P_Data[3]), .B1(n1), .Y(n11) );
  OAI2BB1X2M U20 ( .A0N(n4), .A1N(temp[4]), .B0(n10), .Y(n22) );
  AOI22X1M U21 ( .A0(temp[5]), .A1(n6), .B0(P_Data[4]), .B1(n1), .Y(n10) );
  OAI2BB1X2M U22 ( .A0N(n4), .A1N(temp[5]), .B0(n9), .Y(n21) );
  AOI22X1M U23 ( .A0(temp[6]), .A1(n6), .B0(P_Data[5]), .B1(n1), .Y(n9) );
  OAI2BB1X2M U24 ( .A0N(n4), .A1N(temp[6]), .B0(n8), .Y(n20) );
  AOI22X1M U25 ( .A0(temp[7]), .A1(n6), .B0(P_Data[6]), .B1(n1), .Y(n8) );
  AO22X1M U26 ( .A0(n4), .A1(temp[7]), .B0(P_Data[7]), .B1(n1), .Y(n19) );
  AOI2B1X1M U27 ( .A1N(ser_done), .A0(n14), .B0(n2), .Y(N27) );
  OAI21X2M U28 ( .A0(n15), .A1(n26), .B0(counter[3]), .Y(n14) );
  BUFX2M U29 ( .A(n7), .Y(n1) );
  NOR2BX2M U30 ( .AN(Data_valid), .B(BUSY), .Y(n7) );
  NOR2X2M U31 ( .A(n17), .B(n2), .Y(N25) );
  CLKXOR2X2M U32 ( .A(counter[0]), .B(n3), .Y(n17) );
  INVX2M U33 ( .A(counter[1]), .Y(n3) );
endmodule


module MUX ( clk, rst, start_bit, stop_bit, ser_data, par_bit, mux_sel, TX_OUT
 );
  input [1:0] mux_sel;
  input clk, rst, start_bit, stop_bit, ser_data, par_bit;
  output TX_OUT;
  wire   n6, N13, n2, n3, n1, n5;

  DFFSQX2M TX_OUT_reg ( .D(N13), .CK(clk), .SN(rst), .Q(n6) );
  INVXLM U3 ( .A(n6), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(TX_OUT) );
  OAI2B2X1M U5 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(N13)
         );
  AOI22X1M U6 ( .A0(start_bit), .A1(n5), .B0(stop_bit), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U7 ( .A0(ser_data), .A1(n5), .B0(par_bit), .B1(mux_sel[0]), .Y(n2)
         );
  INVX2M U8 ( .A(mux_sel[0]), .Y(n5) );
endmodule


module Parity_calc ( clk, rst, Data_valid, P_Data, Par_type, BUSY, Par_en, 
        Par_bit );
  input [7:0] P_Data;
  input clk, rst, Data_valid, Par_type, BUSY, Par_en;
  output Par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] DATA_REG;

  DFFRQX2M \DATA_REG_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(DATA_REG[1]) );
  DFFRQX2M \DATA_REG_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(DATA_REG[0]) );
  DFFRQX2M \DATA_REG_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(DATA_REG[2]) );
  DFFRQX2M Par_bit_reg ( .D(n8), .CK(clk), .RN(rst), .Q(Par_bit) );
  DFFRQX2M \DATA_REG_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(DATA_REG[3]) );
  DFFRQX2M \DATA_REG_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(DATA_REG[5]) );
  DFFRQX2M \DATA_REG_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(DATA_REG[4]) );
  DFFRQX2M \DATA_REG_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(DATA_REG[6]) );
  DFFRQX2M \DATA_REG_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(DATA_REG[7]) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(Par_bit), .A1N(n2), .Y(n8) );
  INVX2M U3 ( .A(Par_en), .Y(n2) );
  XOR3XLM U4 ( .A(n3), .B(Par_type), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(DATA_REG[1]), .B(DATA_REG[0]), .C(n5), .Y(n4) );
  XOR3XLM U6 ( .A(DATA_REG[5]), .B(DATA_REG[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U7 ( .A(DATA_REG[7]), .B(DATA_REG[6]), .Y(n6) );
  AO2B2X2M U8 ( .B0(P_Data[0]), .B1(n7), .A0(DATA_REG[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U9 ( .B0(P_Data[1]), .B1(n7), .A0(DATA_REG[1]), .A1N(n7), .Y(n10)
         );
  AO2B2X2M U10 ( .B0(P_Data[2]), .B1(n7), .A0(DATA_REG[2]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U11 ( .B0(P_Data[3]), .B1(n7), .A0(DATA_REG[3]), .A1N(n7), .Y(n12)
         );
  AO2B2X2M U12 ( .B0(P_Data[4]), .B1(n7), .A0(DATA_REG[4]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U13 ( .B0(P_Data[5]), .B1(n7), .A0(DATA_REG[5]), .A1N(n7), .Y(n14)
         );
  AO2B2X2M U14 ( .B0(P_Data[6]), .B1(n7), .A0(DATA_REG[6]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U15 ( .B0(P_Data[7]), .B1(n7), .A0(DATA_REG[7]), .A1N(n7), .Y(n16)
         );
  NOR2BX2M U16 ( .AN(Data_valid), .B(BUSY), .Y(n7) );
  XNOR2X2M U17 ( .A(DATA_REG[2]), .B(DATA_REG[3]), .Y(n5) );
endmodule


module FSM_TX ( clk, rst, Data_valid, Par_en, ser_done, mux_sel, ser_en, busy
 );
  output [1:0] mux_sel;
  input clk, rst, Data_valid, Par_en, ser_done;
  output ser_en, busy;
  wire   busy_out, n4, n5, n6, n7, n8, n1, n2;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M busy_reg ( .D(busy_out), .CK(clk), .RN(rst), .Q(busy) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  NAND2X2M U3 ( .A(mux_sel[1]), .B(n6), .Y(n4) );
  NOR2X2M U4 ( .A(ser_done), .B(n4), .Y(ser_en) );
  INVX2M U5 ( .A(n8), .Y(mux_sel[0]) );
  XNOR2X2M U6 ( .A(current_state[0]), .B(current_state[1]), .Y(n6) );
  NOR2X2M U7 ( .A(n2), .B(current_state[2]), .Y(mux_sel[1]) );
  INVX2M U8 ( .A(current_state[1]), .Y(n2) );
  NOR2X2M U9 ( .A(n1), .B(current_state[2]), .Y(n8) );
  OAI22X1M U10 ( .A0(ser_done), .A1(mux_sel[0]), .B0(current_state[1]), .B1(n7), .Y(next_state[0]) );
  AOI2B1X1M U11 ( .A1N(current_state[2]), .A0(Data_valid), .B0(n8), .Y(n7) );
  NOR2BX2M U12 ( .AN(mux_sel[1]), .B(n5), .Y(next_state[2]) );
  AOI2B1X1M U13 ( .A1N(Par_en), .A0(ser_done), .B0(n1), .Y(n5) );
  OAI21X2M U14 ( .A0(current_state[2]), .A1(n6), .B0(n4), .Y(next_state[1]) );
  OAI21X2M U15 ( .A0(current_state[0]), .A1(n2), .B0(mux_sel[0]), .Y(busy_out)
         );
  INVX2M U16 ( .A(current_state[0]), .Y(n1) );
endmodule


module UART_TX_D_WIDTH8 ( clk, rst, P_Data, Data_valid, Par_type, Par_en, 
        TX_OUT, busy );
  input [7:0] P_Data;
  input clk, rst, Data_valid, Par_type, Par_en;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  Serializer serial_unit ( .clk(clk), .rst(n1), .P_Data(P_Data), .Data_valid(
        Data_valid), .BUSY(busy), .ser_en(ser_en), .ser_done(ser_done), 
        .ser_data(ser_data) );
  MUX mux_unit ( .clk(clk), .rst(n1), .start_bit(1'b0), .stop_bit(1'b1), 
        .ser_data(ser_data), .par_bit(par_bit), .mux_sel(mux_sel), .TX_OUT(
        TX_OUT) );
  Parity_calc parity_unit ( .clk(clk), .rst(n1), .Data_valid(Data_valid), 
        .P_Data(P_Data), .Par_type(Par_type), .BUSY(busy), .Par_en(Par_en), 
        .Par_bit(par_bit) );
  FSM_TX fsm_unit ( .clk(clk), .rst(n1), .Data_valid(Data_valid), .Par_en(
        Par_en), .ser_done(ser_done), .mux_sel(mux_sel), .ser_en(ser_en), 
        .busy(busy) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
endmodule


module Parity_check ( clk, rst, PAR_TYPE, PAR_EN, par_chk_en, sampled_bit, 
        P_Data, par_err );
  input [7:0] P_Data;
  input clk, rst, PAR_TYPE, PAR_EN, par_chk_en, sampled_bit;
  output par_err;
  wire   N5, n3, n4, n5, n6, n7, n8, n1;

  TLATX2M parity_bit_reg ( .G(PAR_EN), .D(N5), .QN(n7) );
  DFFRQX2M par_err_reg ( .D(n8), .CK(clk), .RN(rst), .Q(par_err) );
  AO2B2X2M U2 ( .B0(n1), .B1(par_chk_en), .A0(par_err), .A1N(par_chk_en), .Y(
        n8) );
  XNOR2X2M U3 ( .A(n7), .B(sampled_bit), .Y(n1) );
  XNOR2X2M U4 ( .A(P_Data[3]), .B(P_Data[2]), .Y(n5) );
  XOR3XLM U5 ( .A(PAR_TYPE), .B(n3), .C(n4), .Y(N5) );
  XOR3XLM U6 ( .A(P_Data[5]), .B(P_Data[4]), .C(n6), .Y(n3) );
  XOR3XLM U7 ( .A(P_Data[1]), .B(P_Data[0]), .C(n5), .Y(n4) );
  XNOR2X2M U8 ( .A(P_Data[7]), .B(P_Data[6]), .Y(n6) );
endmodule


module stop_check ( clk, rst, stp_chk_en, sampled_bit, stp_err );
  input clk, rst, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(clk), .RN(rst), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module deserializer ( sampled_bit, deser_en, clk, rst, prescale, edge_count, 
        P_Data );
  input [5:0] prescale;
  input [5:0] edge_count;
  output [7:0] P_Data;
  input sampled_bit, deser_en, clk, rst;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \P_Data_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(P_Data[0]) );
  DFFRQX2M \P_Data_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(P_Data[5]) );
  DFFRQX2M \P_Data_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(P_Data[1]) );
  DFFRQX2M \P_Data_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(P_Data[4]) );
  DFFRQX2M \P_Data_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(P_Data[7]) );
  DFFRQX2M \P_Data_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(P_Data[3]) );
  DFFRQX2M \P_Data_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(P_Data[6]) );
  DFFRQX2M \P_Data_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(P_Data[2]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  BUFX2M U3 ( .A(deser_en), .Y(n1) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U9 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  OAI2BB2X1M U11 ( .B0(n17), .B1(n2), .A0N(P_Data[0]), .A1N(n2), .Y(n9) );
  INVX2M U12 ( .A(P_Data[2]), .Y(n8) );
  INVX2M U13 ( .A(P_Data[6]), .Y(n4) );
  INVX2M U14 ( .A(P_Data[7]), .Y(n3) );
  INVX2M U15 ( .A(P_Data[3]), .Y(n7) );
  INVX2M U16 ( .A(P_Data[1]), .Y(n17) );
  INVX2M U17 ( .A(P_Data[4]), .Y(n6) );
  INVX2M U18 ( .A(P_Data[5]), .Y(n5) );
endmodule


module Data_sampling ( clk, rst, prescale, RX_IN, data_sample_en, edge_count, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_count;
  input clk, rst, RX_IN, data_sample_en;
  output sampled_bit;
  wire   sample1, sample2, sample3, N1, N2, N3, N4, N5, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, n3, n4, n5, n6, \sub_38/carry[4] ,
         \sub_38/carry[3] , n1, n2, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34;
  assign N1 = prescale[1];

  DFFRQX2M sample3_reg ( .D(n5), .CK(clk), .RN(rst), .Q(sample3) );
  DFFRQX2M sample1_reg ( .D(n4), .CK(clk), .RN(rst), .Q(sample1) );
  DFFRQX2M sample2_reg ( .D(n6), .CK(clk), .RN(rst), .Q(sample2) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_38/carry[4] ), .Y(n1) );
  OAI2BB2X1M U4 ( .B0(N14), .B1(n33), .A0N(RX_IN), .A1N(N14), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(N7), .B1(n34), .A0N(N7), .A1N(RX_IN), .Y(n4) );
  AO2B2X2M U6 ( .B0(RX_IN), .B1(N15), .A0(sample3), .A1N(N15), .Y(n5) );
  OAI21X2M U7 ( .A0(n34), .A1(n33), .B0(n3), .Y(sampled_bit) );
  OAI21X2M U8 ( .A0(sample1), .A1(sample2), .B0(sample3), .Y(n3) );
  INVX2M U9 ( .A(sample2), .Y(n33) );
  INVX2M U10 ( .A(sample1), .Y(n34) );
  OR2X2M U11 ( .A(prescale[2]), .B(N1), .Y(n2) );
  INVX2M U12 ( .A(prescale[2]), .Y(N2) );
  XNOR2X1M U13 ( .A(\sub_38/carry[4] ), .B(prescale[5]), .Y(N5) );
  OR2X1M U14 ( .A(prescale[4]), .B(\sub_38/carry[3] ), .Y(\sub_38/carry[4] )
         );
  XNOR2X1M U15 ( .A(\sub_38/carry[3] ), .B(prescale[4]), .Y(N4) );
  OR2X1M U16 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_38/carry[3] ) );
  XNOR2X1M U17 ( .A(prescale[2]), .B(prescale[3]), .Y(N3) );
  CLKINVX1M U18 ( .A(N1), .Y(N8) );
  OAI2BB1X1M U19 ( .A0N(N1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  OR2X1M U20 ( .A(n2), .B(prescale[3]), .Y(n7) );
  OAI2BB1X1M U21 ( .A0N(n2), .A1N(prescale[3]), .B0(n7), .Y(N10) );
  XNOR2X1M U22 ( .A(prescale[4]), .B(n7), .Y(N11) );
  NOR3X1M U23 ( .A(prescale[4]), .B(prescale[5]), .C(n7), .Y(N13) );
  OAI21X1M U24 ( .A0(prescale[4]), .A1(n7), .B0(prescale[5]), .Y(n8) );
  NAND2BX1M U25 ( .AN(N13), .B(n8), .Y(N12) );
  NOR2BX1M U26 ( .AN(edge_count[0]), .B(N1), .Y(n9) );
  OAI2B2X1M U27 ( .A1N(N2), .A0(n9), .B0(edge_count[1]), .B1(n9), .Y(n12) );
  NOR2BX1M U28 ( .AN(N1), .B(edge_count[0]), .Y(n10) );
  OAI2B2X1M U29 ( .A1N(edge_count[1]), .A0(n10), .B0(N2), .B1(n10), .Y(n11) );
  NAND4BBX1M U30 ( .AN(n1), .BN(edge_count[5]), .C(n12), .D(n11), .Y(n16) );
  CLKXOR2X2M U31 ( .A(N5), .B(edge_count[4]), .Y(n15) );
  CLKXOR2X2M U32 ( .A(N3), .B(edge_count[2]), .Y(n14) );
  CLKXOR2X2M U33 ( .A(N4), .B(edge_count[3]), .Y(n13) );
  NOR4X1M U34 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N7) );
  NOR2BX1M U35 ( .AN(edge_count[0]), .B(N8), .Y(n17) );
  OAI2B2X1M U36 ( .A1N(N9), .A0(n17), .B0(edge_count[1]), .B1(n17), .Y(n20) );
  NOR2BX1M U37 ( .AN(N8), .B(edge_count[0]), .Y(n18) );
  OAI2B2X1M U38 ( .A1N(edge_count[1]), .A0(n18), .B0(N9), .B1(n18), .Y(n19) );
  NAND4BBX1M U39 ( .AN(N13), .BN(edge_count[5]), .C(n20), .D(n19), .Y(n24) );
  CLKXOR2X2M U40 ( .A(N12), .B(edge_count[4]), .Y(n23) );
  CLKXOR2X2M U41 ( .A(N10), .B(edge_count[2]), .Y(n22) );
  CLKXOR2X2M U42 ( .A(N11), .B(edge_count[3]), .Y(n21) );
  NOR4X1M U43 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N14) );
  NOR2BX1M U44 ( .AN(edge_count[0]), .B(N1), .Y(n25) );
  OAI2B2X1M U45 ( .A1N(prescale[2]), .A0(n25), .B0(edge_count[1]), .B1(n25), 
        .Y(n28) );
  NOR2BX1M U46 ( .AN(N1), .B(edge_count[0]), .Y(n26) );
  OAI2B2X1M U47 ( .A1N(edge_count[1]), .A0(n26), .B0(prescale[2]), .B1(n26), 
        .Y(n27) );
  NAND3BX1M U48 ( .AN(edge_count[5]), .B(n28), .C(n27), .Y(n32) );
  CLKXOR2X2M U49 ( .A(prescale[5]), .B(edge_count[4]), .Y(n31) );
  CLKXOR2X2M U50 ( .A(prescale[3]), .B(edge_count[2]), .Y(n30) );
  CLKXOR2X2M U51 ( .A(prescale[4]), .B(edge_count[3]), .Y(n29) );
  NOR4X1M U52 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N15) );
endmodule


module edge_bit_counter ( clk, rst, enable, prescale, bit_count, edge_count );
  input [5:0] prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input clk, rst, enable;
  wire   N7, N9, N10, N11, N12, N13, N14, N26, N27, N28, N29, n12, n13, n14,
         n15, n16, n17, n18, \add_66/carry[3] , \add_66/carry[2] ,
         \add_45/carry[5] , \add_45/carry[4] , \add_45/carry[3] ,
         \add_45/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [5:0] edge_count_comb;
  wire   [3:0] bit_count_comb;

  NOR2BX12M U3 ( .AN(N14), .B(n12), .Y(edge_count_comb[5]) );
  NOR2BX12M U4 ( .AN(N13), .B(n12), .Y(edge_count_comb[4]) );
  NOR2BX12M U5 ( .AN(N12), .B(n12), .Y(edge_count_comb[3]) );
  NOR2BX12M U9 ( .AN(N11), .B(n12), .Y(edge_count_comb[2]) );
  NOR2BX12M U10 ( .AN(N10), .B(n12), .Y(edge_count_comb[1]) );
  AOI2B1X8M U12 ( .A1N(N9), .A0(n11), .B0(n10), .Y(edge_count_comb[0]) );
  AOI22X4M U14 ( .A0(N7), .A1(N29), .B0(bit_count[3]), .B1(n11), .Y(n13) );
  AOI22X4M U16 ( .A0(N28), .A1(N7), .B0(bit_count[2]), .B1(n11), .Y(n15) );
  AOI22X4M U19 ( .A0(N27), .A1(N7), .B0(bit_count[1]), .B1(n11), .Y(n16) );
  AOI221X4M U21 ( .A0(bit_count[0]), .A1(n11), .B0(N26), .B1(N7), .C0(n17), 
        .Y(n18) );
  DFFRQX2M \edge_count_reg[5]  ( .D(edge_count_comb[5]), .CK(clk), .RN(rst), 
        .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(edge_count_comb[2]), .CK(clk), .RN(rst), 
        .Q(edge_count[2]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(edge_count_comb[3]), .CK(clk), .RN(rst), 
        .Q(edge_count[3]) );
  DFFRQX2M \bit_count_reg[0]  ( .D(bit_count_comb[0]), .CK(clk), .RN(rst), .Q(
        bit_count[0]) );
  DFFRQX2M \bit_count_reg[1]  ( .D(bit_count_comb[1]), .CK(clk), .RN(rst), .Q(
        bit_count[1]) );
  DFFRQX2M \bit_count_reg[3]  ( .D(bit_count_comb[3]), .CK(clk), .RN(rst), .Q(
        bit_count[3]) );
  DFFRQX2M \bit_count_reg[2]  ( .D(bit_count_comb[2]), .CK(clk), .RN(rst), .Q(
        bit_count[2]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(edge_count_comb[4]), .CK(clk), .RN(rst), 
        .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(edge_count_comb[0]), .CK(clk), .RN(rst), 
        .Q(edge_count[0]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(edge_count_comb[1]), .CK(clk), .RN(rst), 
        .Q(edge_count[1]) );
  NAND2X2M U6 ( .A(enable), .B(n11), .Y(n12) );
  INVX2M U7 ( .A(enable), .Y(n10) );
  NAND2BX2M U8 ( .AN(n17), .B(enable), .Y(n14) );
  INVX2M U11 ( .A(N7), .Y(n11) );
  ADDHX1M U13 ( .A(bit_count_comb[1]), .B(bit_count_comb[0]), .CO(
        \add_66/carry[2] ), .S(N27) );
  ADDHX1M U15 ( .A(bit_count_comb[2]), .B(\add_66/carry[2] ), .CO(
        \add_66/carry[3] ), .S(N28) );
  CLKXOR2X2M U17 ( .A(bit_count_comb[3]), .B(\add_66/carry[3] ), .Y(N29) );
  NOR2X2M U18 ( .A(n13), .B(n14), .Y(bit_count_comb[3]) );
  NOR2X2M U20 ( .A(n15), .B(n14), .Y(bit_count_comb[2]) );
  NOR2X2M U22 ( .A(n16), .B(n14), .Y(bit_count_comb[1]) );
  NOR2X2M U23 ( .A(n18), .B(n10), .Y(bit_count_comb[0]) );
  NOR4X1M U24 ( .A(bit_count[0]), .B(bit_count[1]), .C(bit_count[2]), .D(
        bit_count[3]), .Y(n17) );
  ADDHX1M U25 ( .A(edge_count_comb[1]), .B(edge_count_comb[0]), .CO(
        \add_45/carry[2] ), .S(N10) );
  ADDHX1M U26 ( .A(edge_count_comb[2]), .B(\add_45/carry[2] ), .CO(
        \add_45/carry[3] ), .S(N11) );
  ADDHX1M U27 ( .A(edge_count_comb[3]), .B(\add_45/carry[3] ), .CO(
        \add_45/carry[4] ), .S(N12) );
  ADDHX1M U28 ( .A(edge_count_comb[4]), .B(\add_45/carry[4] ), .CO(
        \add_45/carry[5] ), .S(N13) );
  CLKXOR2X2M U29 ( .A(edge_count_comb[5]), .B(\add_45/carry[5] ), .Y(N14) );
  CLKINVX1M U30 ( .A(edge_count_comb[0]), .Y(N9) );
  CLKINVX1M U31 ( .A(bit_count_comb[0]), .Y(N26) );
  NOR2BX1M U32 ( .AN(edge_count[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U33 ( .A1N(prescale[1]), .A0(n1), .B0(edge_count[1]), .B1(n1), .Y(
        n5) );
  NOR2BX1M U34 ( .AN(prescale[0]), .B(edge_count[0]), .Y(n2) );
  OAI2B2X1M U35 ( .A1N(edge_count[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n4) );
  XNOR2X1M U36 ( .A(prescale[5]), .B(edge_count[5]), .Y(n3) );
  NAND3X1M U37 ( .A(n5), .B(n4), .C(n3), .Y(n9) );
  CLKXOR2X2M U38 ( .A(prescale[4]), .B(edge_count[4]), .Y(n8) );
  CLKXOR2X2M U39 ( .A(prescale[2]), .B(edge_count[2]), .Y(n7) );
  CLKXOR2X2M U40 ( .A(prescale[3]), .B(edge_count[3]), .Y(n6) );
  NOR4X1M U41 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(N7) );
endmodule


module start_check ( strt_chk_en, sampled_bit, clk, rst, strt_glitch );
  input strt_chk_en, sampled_bit, clk, rst;
  output strt_glitch;
  wire   n1;

  DFFRQX2M strt_glitch_reg ( .D(n1), .CK(clk), .RN(rst), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n1) );
endmodule


module FSM_RX ( clk, rst, prescale, PAR_EN, RX_IN, edge_count, bit_count, 
        stp_err, strt_glitch, par_err, data_sample_en, enable, deser_en, 
        data_valid, stp_chk_en, strt_chk_en, par_chk_en );
  input [5:0] prescale;
  input [5:0] edge_count;
  input [3:0] bit_count;
  input clk, rst, PAR_EN, RX_IN, stp_err, strt_glitch, par_err;
  output data_sample_en, enable, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   N42, N43, N44, N45, N46, N47, N61, N62, N63, N64, N65, N66, N67, N68,
         data_valid_comb, \r72/carry[4] , \r72/carry[3] , \r72/carry[2] , n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(rst), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M data_valid_reg ( .D(data_valid_comb), .CK(clk), .RN(rst), .Q(
        data_valid) );
  INVX2M U3 ( .A(1'b1), .Y(stp_chk_en) );
  INVX2M U5 ( .A(1'b1), .Y(data_sample_en) );
  OR2X2M U7 ( .A(prescale[1]), .B(prescale[0]), .Y(n5) );
  ADDHX1M U8 ( .A(prescale[4]), .B(\r72/carry[3] ), .CO(\r72/carry[4] ), .S(
        N45) );
  ADDHX1M U9 ( .A(prescale[3]), .B(\r72/carry[2] ), .CO(\r72/carry[3] ), .S(
        N44) );
  ADDHX1M U10 ( .A(prescale[2]), .B(prescale[1]), .CO(\r72/carry[2] ), .S(N43)
         );
  ADDHX1M U11 ( .A(prescale[5]), .B(\r72/carry[4] ), .CO(N47), .S(N46) );
  CLKINVX1M U12 ( .A(prescale[1]), .Y(N42) );
  CLKINVX1M U13 ( .A(prescale[0]), .Y(N61) );
  OAI2BB1X1M U14 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n5), .Y(N62) );
  OR2X1M U15 ( .A(n5), .B(prescale[2]), .Y(n6) );
  OAI2BB1X1M U16 ( .A0N(n5), .A1N(prescale[2]), .B0(n6), .Y(N63) );
  OR2X1M U17 ( .A(n6), .B(prescale[3]), .Y(n7) );
  OAI2BB1X1M U18 ( .A0N(n6), .A1N(prescale[3]), .B0(n7), .Y(N64) );
  OR2X1M U19 ( .A(n7), .B(prescale[4]), .Y(n8) );
  OAI2BB1X1M U20 ( .A0N(n7), .A1N(prescale[4]), .B0(n8), .Y(N65) );
  NOR2X1M U21 ( .A(n8), .B(prescale[5]), .Y(N67) );
  AO21XLM U22 ( .A0(n8), .A1(prescale[5]), .B0(N67), .Y(N66) );
  NOR2BX1M U23 ( .AN(N61), .B(edge_count[0]), .Y(n9) );
  OAI2B2X1M U24 ( .A1N(edge_count[1]), .A0(n9), .B0(N62), .B1(n9), .Y(n13) );
  XNOR2X1M U25 ( .A(N66), .B(edge_count[5]), .Y(n12) );
  NOR2BX1M U26 ( .AN(edge_count[0]), .B(N61), .Y(n10) );
  OAI2B2X1M U27 ( .A1N(N62), .A0(n10), .B0(edge_count[1]), .B1(n10), .Y(n11)
         );
  NAND4BX1M U28 ( .AN(N67), .B(n13), .C(n12), .D(n11), .Y(n17) );
  CLKXOR2X2M U29 ( .A(N65), .B(edge_count[4]), .Y(n16) );
  CLKXOR2X2M U30 ( .A(N63), .B(edge_count[2]), .Y(n15) );
  CLKXOR2X2M U31 ( .A(N64), .B(edge_count[3]), .Y(n14) );
  NOR4X1M U32 ( .A(n17), .B(n16), .C(n15), .D(n14), .Y(N68) );
  NOR3X1M U33 ( .A(n18), .B(n19), .C(n20), .Y(strt_chk_en) );
  NOR2X1M U34 ( .A(n20), .B(n21), .Y(par_chk_en) );
  CLKINVX1M U35 ( .A(n22), .Y(next_state[3]) );
  AO2B2X1M U36 ( .B0(n22), .B1(next_state[0]), .A0(next_state[1]), .A1N(
        next_state[2]), .Y(enable) );
  OAI221X1M U37 ( .A0(n21), .A1(n23), .B0(PAR_EN), .B1(n24), .C0(n25), .Y(
        next_state[2]) );
  NAND4X1M U38 ( .A(n26), .B(n25), .C(n21), .D(n27), .Y(next_state[1]) );
  OR4X1M U39 ( .A(n23), .B(n18), .C(n19), .D(n28), .Y(n26) );
  NAND4X1M U40 ( .A(n29), .B(n24), .C(n25), .D(n21), .Y(next_state[0]) );
  NAND3X1M U41 ( .A(current_state[0]), .B(n30), .C(current_state[1]), .Y(n21)
         );
  CLKINVX1M U42 ( .A(n31), .Y(n25) );
  NAND4BX1M U43 ( .AN(n27), .B(bit_count[0]), .C(bit_count[3]), .D(n32), .Y(
        n24) );
  NOR3X1M U44 ( .A(n23), .B(bit_count[2]), .C(bit_count[1]), .Y(n32) );
  MXI2X1M U45 ( .A(n33), .B(n34), .S0(current_state[0]), .Y(n29) );
  OAI33X1M U46 ( .A0(n35), .A1(RX_IN), .A2(n36), .B0(n19), .B1(n37), .B2(n28), 
        .Y(n34) );
  NOR2BX1M U47 ( .AN(strt_glitch), .B(n20), .Y(n28) );
  CLKINVX1M U48 ( .A(n23), .Y(n37) );
  NAND4X1M U49 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n23) );
  NOR3X1M U50 ( .A(n42), .B(n43), .C(n44), .Y(n41) );
  CLKXOR2X2M U51 ( .A(prescale[4]), .B(edge_count[4]), .Y(n44) );
  CLKXOR2X2M U52 ( .A(prescale[1]), .B(edge_count[1]), .Y(n43) );
  CLKXOR2X2M U53 ( .A(prescale[0]), .B(edge_count[0]), .Y(n42) );
  XNOR2X1M U54 ( .A(edge_count[2]), .B(prescale[2]), .Y(n40) );
  XNOR2X1M U55 ( .A(edge_count[3]), .B(prescale[3]), .Y(n39) );
  XNOR2X1M U56 ( .A(edge_count[5]), .B(prescale[5]), .Y(n38) );
  NOR2X1M U57 ( .A(RX_IN), .B(n19), .Y(n33) );
  CLKNAND2X2M U58 ( .A(n30), .B(n36), .Y(n19) );
  NOR2X1M U59 ( .A(n20), .B(n27), .Y(deser_en) );
  NAND3X1M U60 ( .A(n30), .B(n18), .C(current_state[1]), .Y(n27) );
  NOR2X1M U61 ( .A(current_state[2]), .B(current_state[3]), .Y(n30) );
  NAND4X1M U62 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n20) );
  NOR3X1M U63 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  CLKXOR2X2M U64 ( .A(edge_count[4]), .B(N46), .Y(n51) );
  CLKXOR2X2M U65 ( .A(edge_count[1]), .B(N43), .Y(n50) );
  CLKXOR2X2M U66 ( .A(edge_count[0]), .B(N42), .Y(n49) );
  XNOR2X1M U67 ( .A(edge_count[2]), .B(N44), .Y(n47) );
  XNOR2X1M U68 ( .A(edge_count[3]), .B(N45), .Y(n46) );
  XNOR2X1M U69 ( .A(edge_count[5]), .B(N47), .Y(n45) );
  AOI211X1M U70 ( .A0(par_err), .A1(PAR_EN), .B0(n22), .C0(stp_err), .Y(
        data_valid_comb) );
  CLKNAND2X2M U71 ( .A(N68), .B(n31), .Y(n22) );
  NOR4X1M U72 ( .A(n35), .B(n36), .C(n18), .D(current_state[3]), .Y(n31) );
  CLKINVX1M U73 ( .A(current_state[0]), .Y(n18) );
  CLKINVX1M U74 ( .A(current_state[1]), .Y(n36) );
  CLKINVX1M U75 ( .A(current_state[2]), .Y(n35) );
endmodule


module UART_RX_D_WIDTH8 ( clk, rst, RX_IN, PAR_EN, prescale, PAR_TYPE, 
        data_valid, P_Data, parity_error, framing_error );
  input [5:0] prescale;
  output [7:0] P_Data;
  input clk, rst, RX_IN, PAR_EN, PAR_TYPE;
  output data_valid, parity_error, framing_error;
  wire   par_chk_en, sampled_bit, deser_en, enable, strt_chk_en, strt_glitch,
         n1, n2;
  wire   [5:0] edge_count;
  wire   [3:0] bit_count;

  Parity_check PAR_CHK ( .clk(clk), .rst(n1), .PAR_TYPE(PAR_TYPE), .PAR_EN(
        PAR_EN), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .P_Data(
        P_Data), .par_err(parity_error) );
  stop_check stp_chk ( .clk(clk), .rst(n1), .stp_chk_en(1'b0), .sampled_bit(
        sampled_bit), .stp_err(framing_error) );
  deserializer deser_Unit ( .sampled_bit(sampled_bit), .deser_en(deser_en), 
        .clk(clk), .rst(n1), .prescale(prescale), .edge_count(edge_count), 
        .P_Data(P_Data) );
  Data_sampling sampler ( .clk(clk), .rst(n1), .prescale(prescale), .RX_IN(
        RX_IN), .data_sample_en(1'b0), .edge_count(edge_count), .sampled_bit(
        sampled_bit) );
  edge_bit_counter counter_Unit ( .clk(clk), .rst(n1), .enable(enable), 
        .prescale(prescale), .bit_count(bit_count), .edge_count(edge_count) );
  start_check strt_CHK_Unit ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .clk(clk), .rst(n1), .strt_glitch(strt_glitch) );
  FSM_RX fsm_Unit ( .clk(clk), .rst(n1), .prescale(prescale), .PAR_EN(PAR_EN), 
        .RX_IN(RX_IN), .edge_count(edge_count), .bit_count(bit_count), 
        .stp_err(framing_error), .strt_glitch(strt_glitch), .par_err(
        parity_error), .enable(enable), .deser_en(deser_en), .data_valid(
        data_valid), .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module UART_TOP_D_WIDTH8 ( TX_CLK, RX_CLK, SYNC_RST, RX_IN, TX_IN_VALID, 
        TX_IN_P, UART_CONFIG, Par_en, Par_type, RX_OUT_P, RX_OUT_V, TX_OUT, 
        TX_OUT_V, parity_error, framing_error );
  input [7:0] TX_IN_P;
  input [5:0] UART_CONFIG;
  output [7:0] RX_OUT_P;
  input TX_CLK, RX_CLK, SYNC_RST, RX_IN, TX_IN_VALID, Par_en, Par_type;
  output RX_OUT_V, TX_OUT, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  UART_TX_D_WIDTH8 uart_tx_unit ( .clk(TX_CLK), .rst(n1), .P_Data(TX_IN_P), 
        .Data_valid(TX_IN_VALID), .Par_type(Par_type), .Par_en(Par_en), 
        .TX_OUT(TX_OUT), .busy(TX_OUT_V) );
  UART_RX_D_WIDTH8 uart_rx_unit ( .clk(RX_CLK), .rst(n1), .RX_IN(RX_IN), 
        .PAR_EN(Par_en), .prescale(UART_CONFIG), .PAR_TYPE(Par_type), 
        .data_valid(RX_OUT_V), .P_Data(RX_OUT_P), .parity_error(parity_error), 
        .framing_error(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(SYNC_RST), .Y(n2) );
endmodule


module DATA_SYNC_D_WIDTH8_STAGES2 ( CLK, RST, bus_enable, unsync_bus, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   Pulse_Gen_FF, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] Sync_FFs;

  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M Pulse_Gen_FF_reg ( .D(Sync_FFs[1]), .CK(CLK), .RN(RST), .Q(
        Pulse_Gen_FF) );
  DFFRQX2M \Sync_FFs_reg[1]  ( .D(Sync_FFs[0]), .CK(CLK), .RN(RST), .Q(
        Sync_FFs[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \Sync_FFs_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        Sync_FFs[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(Pulse_Gen_FF), .B(Sync_FFs[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n9) );
endmodule


module SYS_CTRL_D_WIDTH8_FUNC_ALU4_ADDRESS4 ( CLK, RST, RX_D_VLD, OUT_VALID, 
        RX_P_DATA, RD_DATA, RD_DATA_VALID, FIFO_FULL, ALU_OUT, ALU_EN, 
        ALU_FUNC, CLK_EN, Address, WrEn, RdEn, clk_div_en, TX_P_DATA, TX_D_VLD, 
        WrData );
  input [7:0] RX_P_DATA;
  input [7:0] RD_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUNC;
  output [3:0] Address;
  output [7:0] TX_P_DATA;
  output [7:0] WrData;
  input CLK, RST, RX_D_VLD, OUT_VALID, RD_DATA_VALID, FIFO_FULL;
  output ALU_EN, CLK_EN, WrEn, RdEn, clk_div_en, TX_D_VLD;
  wire   N110, N111, N112, N113, N114, n13, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n5, n6, n8, n10, n11, n12, n14, n15, n16, n17,
         n18, n19, n20, n21, n75, n76, n77, n78, n79;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] Address_reg;
  wire   [7:0] WrData_reg;
  wire   [3:0] ALU_FUNC_reg;
  wire   [15:0] ALU_OUT_reg;

  DFFQX2M \ALU_OUT_reg_reg[0]  ( .D(ALU_OUT[0]), .CK(CLK), .Q(ALU_OUT_reg[0])
         );
  DFFQX2M \ALU_OUT_reg_reg[8]  ( .D(ALU_OUT[8]), .CK(CLK), .Q(ALU_OUT_reg[8])
         );
  DFFQX2M \WrData_reg_reg[6]  ( .D(WrData[6]), .CK(CLK), .Q(WrData_reg[6]) );
  DFFQX2M \WrData_reg_reg[5]  ( .D(WrData[5]), .CK(CLK), .Q(WrData_reg[5]) );
  DFFQX2M \Address_reg_reg[3]  ( .D(Address[3]), .CK(CLK), .Q(Address_reg[3])
         );
  DFFQX2M \Address_reg_reg[1]  ( .D(Address[1]), .CK(CLK), .Q(Address_reg[1])
         );
  DFFQX2M \WrData_reg_reg[7]  ( .D(WrData[7]), .CK(CLK), .Q(WrData_reg[7]) );
  DFFQX2M \WrData_reg_reg[4]  ( .D(WrData[4]), .CK(CLK), .Q(WrData_reg[4]) );
  DFFQX2M \WrData_reg_reg[3]  ( .D(WrData[3]), .CK(CLK), .Q(WrData_reg[3]) );
  DFFQX2M \WrData_reg_reg[2]  ( .D(WrData[2]), .CK(CLK), .Q(WrData_reg[2]) );
  DFFQX2M \WrData_reg_reg[1]  ( .D(WrData[1]), .CK(CLK), .Q(WrData_reg[1]) );
  DFFQX2M \WrData_reg_reg[0]  ( .D(WrData[0]), .CK(CLK), .Q(WrData_reg[0]) );
  DFFQX2M \ALU_OUT_reg_reg[7]  ( .D(ALU_OUT[7]), .CK(CLK), .Q(ALU_OUT_reg[7])
         );
  DFFQX2M \ALU_OUT_reg_reg[6]  ( .D(ALU_OUT[6]), .CK(CLK), .Q(ALU_OUT_reg[6])
         );
  DFFQX2M \ALU_OUT_reg_reg[5]  ( .D(ALU_OUT[5]), .CK(CLK), .Q(ALU_OUT_reg[5])
         );
  DFFQX2M \ALU_OUT_reg_reg[4]  ( .D(ALU_OUT[4]), .CK(CLK), .Q(ALU_OUT_reg[4])
         );
  DFFQX2M \ALU_OUT_reg_reg[3]  ( .D(ALU_OUT[3]), .CK(CLK), .Q(ALU_OUT_reg[3])
         );
  DFFQX2M \ALU_OUT_reg_reg[2]  ( .D(ALU_OUT[2]), .CK(CLK), .Q(ALU_OUT_reg[2])
         );
  DFFQX2M \ALU_OUT_reg_reg[1]  ( .D(ALU_OUT[1]), .CK(CLK), .Q(ALU_OUT_reg[1])
         );
  DFFQX2M \ALU_OUT_reg_reg[15]  ( .D(ALU_OUT[15]), .CK(CLK), .Q(
        ALU_OUT_reg[15]) );
  DFFQX2M \ALU_OUT_reg_reg[14]  ( .D(ALU_OUT[14]), .CK(CLK), .Q(
        ALU_OUT_reg[14]) );
  DFFQX2M \ALU_OUT_reg_reg[13]  ( .D(ALU_OUT[13]), .CK(CLK), .Q(
        ALU_OUT_reg[13]) );
  DFFQX2M \ALU_OUT_reg_reg[12]  ( .D(ALU_OUT[12]), .CK(CLK), .Q(
        ALU_OUT_reg[12]) );
  DFFQX2M \ALU_OUT_reg_reg[11]  ( .D(ALU_OUT[11]), .CK(CLK), .Q(
        ALU_OUT_reg[11]) );
  DFFQX2M \ALU_OUT_reg_reg[10]  ( .D(ALU_OUT[10]), .CK(CLK), .Q(
        ALU_OUT_reg[10]) );
  DFFQX2M \ALU_OUT_reg_reg[9]  ( .D(ALU_OUT[9]), .CK(CLK), .Q(ALU_OUT_reg[9])
         );
  DFFQNX2M \Address_reg_reg[2]  ( .D(Address[2]), .CK(CLK), .QN(n13) );
  DFFQX2M \ALU_FUNC_reg_reg[3]  ( .D(ALU_FUNC[3]), .CK(CLK), .Q(
        ALU_FUNC_reg[3]) );
  DFFQX2M \ALU_FUNC_reg_reg[2]  ( .D(ALU_FUNC[2]), .CK(CLK), .Q(
        ALU_FUNC_reg[2]) );
  DFFQX2M \ALU_FUNC_reg_reg[1]  ( .D(ALU_FUNC[1]), .CK(CLK), .Q(
        ALU_FUNC_reg[1]) );
  DFFQX2M \ALU_FUNC_reg_reg[0]  ( .D(ALU_FUNC[0]), .CK(CLK), .Q(
        ALU_FUNC_reg[0]) );
  DFFQX2M \Address_reg_reg[0]  ( .D(Address[0]), .CK(CLK), .Q(Address_reg[0])
         );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  TLATX2M \next_state_reg[0]  ( .G(N110), .D(N111), .Q(next_state[0]) );
  TLATX2M \next_state_reg[1]  ( .G(N110), .D(N112), .Q(next_state[1]) );
  TLATX2M \next_state_reg[2]  ( .G(N110), .D(N113), .Q(next_state[2]) );
  TLATX2M \next_state_reg[3]  ( .G(N110), .D(N114), .Q(next_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  INVX2M U5 ( .A(1'b0), .Y(CLK_EN) );
  OAI2B11X2M U7 ( .A1N(n70), .A0(n13), .B0(n61), .C0(n71), .Y(Address[2]) );
  OAI2BB2X4M U8 ( .B0(n10), .B1(n21), .A0N(Address_reg[1]), .A1N(n70), .Y(
        Address[1]) );
  OAI2BB2X1M U9 ( .B0(n21), .B1(n55), .A0N(ALU_FUNC_reg[1]), .A1N(ALU_EN), .Y(
        ALU_FUNC[1]) );
  OAI2BB2X1M U10 ( .B0(n20), .B1(n55), .A0N(ALU_FUNC_reg[0]), .A1N(ALU_EN), 
        .Y(ALU_FUNC[0]) );
  OAI211X2M U11 ( .A0(n10), .A1(n20), .B0(n24), .C0(n74), .Y(Address[0]) );
  OAI2BB2X1M U12 ( .B0(n75), .B1(n55), .A0N(ALU_FUNC_reg[2]), .A1N(ALU_EN), 
        .Y(ALU_FUNC[2]) );
  INVX2M U13 ( .A(n43), .Y(n10) );
  NAND2X2M U14 ( .A(n51), .B(n44), .Y(n43) );
  BUFX2M U15 ( .A(n25), .Y(n5) );
  NOR3X2M U16 ( .A(n16), .B(n12), .C(n8), .Y(n25) );
  INVX2M U17 ( .A(n23), .Y(n12) );
  INVX2M U18 ( .A(n45), .Y(n6) );
  NAND2X2M U19 ( .A(n72), .B(n68), .Y(n44) );
  NAND3X2M U20 ( .A(n56), .B(n22), .C(n34), .Y(n70) );
  NAND2X2M U21 ( .A(n73), .B(n69), .Y(n51) );
  INVX2M U22 ( .A(n54), .Y(ALU_EN) );
  NAND2X2M U23 ( .A(n68), .B(n69), .Y(n23) );
  NAND3X2M U24 ( .A(n22), .B(n23), .C(n24), .Y(WrEn) );
  AND3X2M U25 ( .A(n55), .B(n36), .C(n54), .Y(n38) );
  INVX2M U26 ( .A(n35), .Y(n11) );
  INVX2M U27 ( .A(n24), .Y(n16) );
  INVX2M U28 ( .A(n56), .Y(n8) );
  AND2X2M U29 ( .A(n72), .B(n73), .Y(n60) );
  INVX2M U30 ( .A(n22), .Y(n17) );
  INVX2M U31 ( .A(n34), .Y(RdEn) );
  INVX2M U32 ( .A(n36), .Y(n15) );
  AOI211X2M U33 ( .A0(n79), .A1(n16), .B0(n15), .C0(n12), .Y(n48) );
  NOR3X2M U34 ( .A(n20), .B(n77), .C(n64), .Y(n50) );
  OAI211X2M U35 ( .A0(n34), .A1(n58), .B0(n35), .C0(n59), .Y(n40) );
  NOR2X2M U36 ( .A(n60), .B(n17), .Y(n59) );
  OAI21X2M U37 ( .A0(n37), .A1(n79), .B0(n38), .Y(N114) );
  AOI21X2M U38 ( .A0(n39), .A1(n40), .B0(n16), .Y(n37) );
  NAND4X2M U39 ( .A(n5), .B(n61), .C(n62), .D(n63), .Y(N110) );
  NOR2X2M U40 ( .A(n43), .B(n57), .Y(n62) );
  NOR4X1M U41 ( .A(n6), .B(n39), .C(n50), .D(n79), .Y(n63) );
  NAND2X2M U42 ( .A(RdEn), .B(n58), .Y(n45) );
  NAND3X2M U43 ( .A(n20), .B(n77), .C(n65), .Y(n49) );
  NAND2X2M U44 ( .A(Address_reg[0]), .B(n70), .Y(n74) );
  NOR2X2M U45 ( .A(n14), .B(current_state[2]), .Y(n69) );
  NOR2X2M U46 ( .A(n18), .B(current_state[3]), .Y(n68) );
  OAI2B11X2M U47 ( .A1N(RD_DATA_VALID), .A0(n34), .B0(n35), .C0(n36), .Y(
        TX_D_VLD) );
  NOR2X2M U48 ( .A(current_state[2]), .B(current_state[0]), .Y(n72) );
  NAND3X2M U49 ( .A(n68), .B(n14), .C(current_state[2]), .Y(n34) );
  OAI2BB2X1M U50 ( .B0(n76), .B1(n55), .A0N(ALU_FUNC_reg[3]), .A1N(ALU_EN), 
        .Y(ALU_FUNC[3]) );
  NAND3X2M U51 ( .A(current_state[3]), .B(n18), .C(n72), .Y(n55) );
  NAND3X2M U52 ( .A(n69), .B(n18), .C(current_state[3]), .Y(n54) );
  INVX2M U53 ( .A(current_state[0]), .Y(n14) );
  INVX2M U54 ( .A(current_state[1]), .Y(n18) );
  INVX2M U55 ( .A(RX_P_DATA[0]), .Y(n20) );
  INVX2M U56 ( .A(RX_P_DATA[2]), .Y(n75) );
  AOI211X2M U57 ( .A0(RX_P_DATA[2]), .A1(n43), .B0(n60), .C0(n11), .Y(n71) );
  NOR2X2M U58 ( .A(current_state[3]), .B(current_state[1]), .Y(n73) );
  OAI2BB2X1M U59 ( .B0(n10), .B1(n76), .A0N(Address_reg[3]), .A1N(n70), .Y(
        Address[3]) );
  OAI2BB2X1M U60 ( .B0(n5), .B1(n21), .A0N(WrData_reg[1]), .A1N(n17), .Y(
        WrData[1]) );
  OAI2BB2X1M U61 ( .B0(n5), .B1(n75), .A0N(WrData_reg[2]), .A1N(n17), .Y(
        WrData[2]) );
  OAI2BB2X1M U62 ( .B0(n5), .B1(n78), .A0N(WrData_reg[7]), .A1N(n17), .Y(
        WrData[7]) );
  OAI2BB2X1M U63 ( .B0(n5), .B1(n20), .A0N(WrData_reg[0]), .A1N(n17), .Y(
        WrData[0]) );
  OAI2BB2X1M U64 ( .B0(n5), .B1(n77), .A0N(WrData_reg[4]), .A1N(n17), .Y(
        WrData[4]) );
  OAI2BB2X1M U65 ( .B0(n5), .B1(n76), .A0N(WrData_reg[3]), .A1N(n17), .Y(
        WrData[3]) );
  NAND3X2M U66 ( .A(n68), .B(current_state[0]), .C(current_state[2]), .Y(n24)
         );
  NAND3X2M U67 ( .A(n73), .B(current_state[0]), .C(current_state[2]), .Y(n22)
         );
  NAND3X2M U68 ( .A(n73), .B(n14), .C(current_state[2]), .Y(n56) );
  NAND3X2M U69 ( .A(n69), .B(current_state[1]), .C(current_state[3]), .Y(n35)
         );
  NAND3X2M U70 ( .A(current_state[3]), .B(current_state[1]), .C(n72), .Y(n36)
         );
  AO2B2X2M U71 ( .B0(WrData_reg[5]), .B1(n17), .A0(RX_P_DATA[5]), .A1N(n5), 
        .Y(WrData[5]) );
  AO2B2X2M U72 ( .B0(WrData_reg[6]), .B1(n17), .A0(RX_P_DATA[6]), .A1N(n5), 
        .Y(WrData[6]) );
  AOI21BX2M U73 ( .A0(current_state[2]), .A1(current_state[3]), .B0N(n38), .Y(
        n61) );
  INVX2M U74 ( .A(RX_P_DATA[1]), .Y(n21) );
  INVX2M U75 ( .A(RX_P_DATA[3]), .Y(n76) );
  OAI2BB1X2M U76 ( .A0N(RD_DATA[1]), .A1N(RdEn), .B0(n32), .Y(TX_P_DATA[1]) );
  AOI22X1M U77 ( .A0(ALU_OUT_reg[9]), .A1(n11), .B0(ALU_OUT_reg[1]), .B1(n15), 
        .Y(n32) );
  OAI2BB1X2M U78 ( .A0N(RD_DATA[2]), .A1N(RdEn), .B0(n31), .Y(TX_P_DATA[2]) );
  AOI22X1M U79 ( .A0(ALU_OUT_reg[10]), .A1(n11), .B0(ALU_OUT_reg[2]), .B1(n15), 
        .Y(n31) );
  OAI2BB1X2M U80 ( .A0N(RD_DATA[3]), .A1N(RdEn), .B0(n30), .Y(TX_P_DATA[3]) );
  AOI22X1M U81 ( .A0(ALU_OUT_reg[11]), .A1(n11), .B0(ALU_OUT_reg[3]), .B1(n15), 
        .Y(n30) );
  OAI2BB1X2M U82 ( .A0N(RD_DATA[4]), .A1N(RdEn), .B0(n29), .Y(TX_P_DATA[4]) );
  AOI22X1M U83 ( .A0(ALU_OUT_reg[12]), .A1(n11), .B0(ALU_OUT_reg[4]), .B1(n15), 
        .Y(n29) );
  OAI2BB1X2M U84 ( .A0N(RD_DATA[5]), .A1N(RdEn), .B0(n28), .Y(TX_P_DATA[5]) );
  AOI22X1M U85 ( .A0(ALU_OUT_reg[13]), .A1(n11), .B0(ALU_OUT_reg[5]), .B1(n15), 
        .Y(n28) );
  OAI2BB1X2M U86 ( .A0N(RD_DATA[6]), .A1N(RdEn), .B0(n27), .Y(TX_P_DATA[6]) );
  AOI22X1M U87 ( .A0(ALU_OUT_reg[14]), .A1(n11), .B0(ALU_OUT_reg[6]), .B1(n15), 
        .Y(n27) );
  OAI2BB1X2M U88 ( .A0N(RD_DATA[7]), .A1N(RdEn), .B0(n26), .Y(TX_P_DATA[7]) );
  AOI22X1M U89 ( .A0(ALU_OUT_reg[15]), .A1(n11), .B0(ALU_OUT_reg[7]), .B1(n15), 
        .Y(n26) );
  OAI2BB1X2M U90 ( .A0N(RD_DATA[0]), .A1N(RdEn), .B0(n33), .Y(TX_P_DATA[0]) );
  INVX2M U91 ( .A(RX_P_DATA[4]), .Y(n77) );
  INVX2M U92 ( .A(RX_P_DATA[7]), .Y(n78) );
  OAI31X1M U93 ( .A0(n64), .A1(RX_P_DATA[4]), .A2(RX_P_DATA[0]), .B0(n49), .Y(
        n57) );
  OAI211X2M U94 ( .A0(RX_D_VLD), .A1(n24), .B0(n41), .C0(n42), .Y(N113) );
  NOR2X2M U95 ( .A(n6), .B(n8), .Y(n42) );
  OAI21X2M U96 ( .A0(n12), .A1(n43), .B0(RX_D_VLD), .Y(n41) );
  OAI211X2M U97 ( .A0(RX_D_VLD), .A1(n51), .B0(n48), .C0(n52), .Y(N111) );
  AOI2BB2XLM U98 ( .B0(RX_D_VLD), .B1(n53), .A0N(n54), .A1N(OUT_VALID), .Y(n52) );
  OAI2B11X2M U99 ( .A1N(n40), .A0(n19), .B0(n55), .C0(n56), .Y(n53) );
  INVX2M U100 ( .A(n57), .Y(n19) );
  AND3X2M U101 ( .A(n65), .B(RX_P_DATA[0]), .C(RX_P_DATA[4]), .Y(n39) );
  NAND4X2M U102 ( .A(RX_P_DATA[3]), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .D(n67), .Y(n64) );
  NOR3X2M U103 ( .A(n78), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n67) );
  NAND2BX2M U104 ( .AN(FIFO_FULL), .B(RD_DATA_VALID), .Y(n58) );
  INVX2M U105 ( .A(RX_D_VLD), .Y(n79) );
  NAND4X2M U106 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(N112) );
  AOI21BX2M U107 ( .A0(OUT_VALID), .A1(ALU_EN), .B0N(n48), .Y(n47) );
  OAI2B11X2M U108 ( .A1N(n49), .A0(n50), .B0(n40), .C0(RX_D_VLD), .Y(n46) );
  AND4X2M U109 ( .A(n66), .B(RX_P_DATA[3]), .C(RX_P_DATA[6]), .D(RX_P_DATA[2]), 
        .Y(n65) );
  NOR3X2M U110 ( .A(n78), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n66) );
  AOI22X1M U111 ( .A0(ALU_OUT_reg[8]), .A1(n11), .B0(ALU_OUT_reg[0]), .B1(n15), 
        .Y(n33) );
endmodule


module Reg_file_ADDRESS4_D_WIDTH8_DEPTH8 ( clk, rst, WrEn, RdEn, Address, 
        WrData, RdData, RD_DATA_VALID, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input clk, rst, WrEn, RdEn;
  output RD_DATA_VALID;
  wire   N11, N12, N13, n133, \RegFile[7][7] , \RegFile[7][6] ,
         \RegFile[7][5] , \RegFile[7][4] , \RegFile[7][3] , \RegFile[7][2] ,
         \RegFile[7][1] , \RegFile[7][0] , \RegFile[6][7] , \RegFile[6][6] ,
         \RegFile[6][5] , \RegFile[6][4] , \RegFile[6][3] , \RegFile[6][2] ,
         \RegFile[6][1] , \RegFile[6][0] , \RegFile[5][7] , \RegFile[5][6] ,
         \RegFile[5][5] , \RegFile[5][4] , \RegFile[5][3] , \RegFile[5][2] ,
         \RegFile[5][1] , \RegFile[5][0] , \RegFile[4][7] , \RegFile[4][6] ,
         \RegFile[4][5] , \RegFile[4][4] , \RegFile[4][3] , \RegFile[4][2] ,
         \RegFile[4][1] , \RegFile[4][0] , N27, N28, N29, N30, N31, N32, N33,
         N34, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n16, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];

  DFFRHQX8M \RegFile_reg[1][7]  ( .D(n49), .CK(clk), .RN(n114), .Q(REG1[7]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n32), .CK(clk), .RN(n114), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n31), .CK(clk), .RN(n114), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n30), .CK(clk), .RN(n114), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n29), .CK(clk), .RN(n114), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n28), .CK(clk), .RN(n114), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n27), .CK(clk), .RN(n115), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n26), .CK(clk), .RN(n114), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n25), .CK(clk), .RN(n116), .Q(RdData[0]) );
  DFFRQX2M \RegFile_reg[5][7]  ( .D(n81), .CK(clk), .RN(n117), .Q(
        \RegFile[5][7] ) );
  DFFRQX2M \RegFile_reg[5][6]  ( .D(n80), .CK(clk), .RN(n117), .Q(
        \RegFile[5][6] ) );
  DFFRQX2M \RegFile_reg[5][5]  ( .D(n79), .CK(clk), .RN(n117), .Q(
        \RegFile[5][5] ) );
  DFFRQX2M \RegFile_reg[5][4]  ( .D(n78), .CK(clk), .RN(n117), .Q(
        \RegFile[5][4] ) );
  DFFRQX2M \RegFile_reg[5][3]  ( .D(n77), .CK(clk), .RN(n117), .Q(
        \RegFile[5][3] ) );
  DFFRQX2M \RegFile_reg[5][2]  ( .D(n76), .CK(clk), .RN(n117), .Q(
        \RegFile[5][2] ) );
  DFFRQX2M \RegFile_reg[5][1]  ( .D(n75), .CK(clk), .RN(n117), .Q(
        \RegFile[5][1] ) );
  DFFRQX2M \RegFile_reg[5][0]  ( .D(n74), .CK(clk), .RN(n117), .Q(
        \RegFile[5][0] ) );
  DFFRQX2M \RegFile_reg[7][7]  ( .D(n97), .CK(clk), .RN(n114), .Q(
        \RegFile[7][7] ) );
  DFFRQX2M \RegFile_reg[7][6]  ( .D(n96), .CK(clk), .RN(n118), .Q(
        \RegFile[7][6] ) );
  DFFRQX2M \RegFile_reg[7][5]  ( .D(n95), .CK(clk), .RN(n118), .Q(
        \RegFile[7][5] ) );
  DFFRQX2M \RegFile_reg[7][4]  ( .D(n94), .CK(clk), .RN(n118), .Q(
        \RegFile[7][4] ) );
  DFFRQX2M \RegFile_reg[7][3]  ( .D(n93), .CK(clk), .RN(n118), .Q(
        \RegFile[7][3] ) );
  DFFRQX2M \RegFile_reg[7][2]  ( .D(n92), .CK(clk), .RN(n118), .Q(
        \RegFile[7][2] ) );
  DFFRQX2M \RegFile_reg[7][1]  ( .D(n91), .CK(clk), .RN(n118), .Q(
        \RegFile[7][1] ) );
  DFFRQX2M \RegFile_reg[7][0]  ( .D(n90), .CK(clk), .RN(n118), .Q(
        \RegFile[7][0] ) );
  DFFRQX2M \RegFile_reg[6][7]  ( .D(n89), .CK(clk), .RN(n118), .Q(
        \RegFile[6][7] ) );
  DFFRQX2M \RegFile_reg[6][6]  ( .D(n88), .CK(clk), .RN(n118), .Q(
        \RegFile[6][6] ) );
  DFFRQX2M \RegFile_reg[6][5]  ( .D(n87), .CK(clk), .RN(n118), .Q(
        \RegFile[6][5] ) );
  DFFRQX2M \RegFile_reg[6][4]  ( .D(n86), .CK(clk), .RN(n118), .Q(
        \RegFile[6][4] ) );
  DFFRQX2M \RegFile_reg[6][3]  ( .D(n85), .CK(clk), .RN(n118), .Q(
        \RegFile[6][3] ) );
  DFFRQX2M \RegFile_reg[6][2]  ( .D(n84), .CK(clk), .RN(n118), .Q(
        \RegFile[6][2] ) );
  DFFRQX2M \RegFile_reg[6][1]  ( .D(n83), .CK(clk), .RN(n117), .Q(
        \RegFile[6][1] ) );
  DFFRQX2M \RegFile_reg[6][0]  ( .D(n82), .CK(clk), .RN(n117), .Q(
        \RegFile[6][0] ) );
  DFFRQX2M \RegFile_reg[4][7]  ( .D(n73), .CK(clk), .RN(n117), .Q(
        \RegFile[4][7] ) );
  DFFRQX2M \RegFile_reg[4][6]  ( .D(n72), .CK(clk), .RN(n117), .Q(
        \RegFile[4][6] ) );
  DFFRQX2M \RegFile_reg[4][5]  ( .D(n71), .CK(clk), .RN(n117), .Q(
        \RegFile[4][5] ) );
  DFFRQX2M \RegFile_reg[4][4]  ( .D(n70), .CK(clk), .RN(n117), .Q(
        \RegFile[4][4] ) );
  DFFRQX2M \RegFile_reg[4][3]  ( .D(n69), .CK(clk), .RN(n117), .Q(
        \RegFile[4][3] ) );
  DFFRQX2M \RegFile_reg[4][2]  ( .D(n68), .CK(clk), .RN(n116), .Q(
        \RegFile[4][2] ) );
  DFFRQX2M \RegFile_reg[4][1]  ( .D(n67), .CK(clk), .RN(n116), .Q(
        \RegFile[4][1] ) );
  DFFRQX2M \RegFile_reg[4][0]  ( .D(n66), .CK(clk), .RN(n116), .Q(
        \RegFile[4][0] ) );
  DFFRQX2M \RegFile_reg[2][1]  ( .D(n51), .CK(clk), .RN(n115), .Q(REG2[1]) );
  DFFSQX2M \RegFile_reg[2][0]  ( .D(n50), .CK(clk), .SN(n114), .Q(REG2[0]) );
  DFFRQX2M \RegFile_reg[3][3]  ( .D(n61), .CK(clk), .RN(n116), .Q(REG3[3]) );
  DFFRQX2M \RegFile_reg[3][1]  ( .D(n59), .CK(clk), .RN(n116), .Q(REG3[1]) );
  DFFRQX2M \RegFile_reg[3][2]  ( .D(n60), .CK(clk), .RN(n116), .Q(REG3[2]) );
  DFFSQX2M \RegFile_reg[3][5]  ( .D(n63), .CK(clk), .SN(n114), .Q(REG3[5]) );
  DFFRQX2M \RegFile_reg[3][6]  ( .D(n64), .CK(clk), .RN(n116), .Q(REG3[6]) );
  DFFRQX2M \RegFile_reg[3][7]  ( .D(n65), .CK(clk), .RN(n116), .Q(REG3[7]) );
  DFFRQX2M \RegFile_reg[3][4]  ( .D(n62), .CK(clk), .RN(n116), .Q(REG3[4]) );
  DFFRQX2M \RegFile_reg[3][0]  ( .D(n58), .CK(clk), .RN(n116), .Q(REG3[0]) );
  DFFRQX2M \RegFile_reg[2][2]  ( .D(n52), .CK(clk), .RN(n115), .Q(REG2[2]) );
  DFFRQX2M \RegFile_reg[2][4]  ( .D(n54), .CK(clk), .RN(n116), .Q(REG2[4]) );
  DFFRQX2M \RegFile_reg[2][3]  ( .D(n53), .CK(clk), .RN(n115), .Q(REG2[3]) );
  DFFSQX2M \RegFile_reg[2][7]  ( .D(n57), .CK(clk), .SN(n114), .Q(REG2[7]) );
  DFFRQX2M \RegFile_reg[2][5]  ( .D(n55), .CK(clk), .RN(n116), .Q(REG2[5]) );
  DFFRQX2M \RegFile_reg[2][6]  ( .D(n56), .CK(clk), .RN(n116), .Q(REG2[6]) );
  DFFRQX2M RD_DATA_VALID_reg ( .D(n33), .CK(clk), .RN(n114), .Q(RD_DATA_VALID)
         );
  DFFRQX2M \RegFile_reg[0][1]  ( .D(n35), .CK(clk), .RN(n115), .Q(REG0[1]) );
  DFFRQX2M \RegFile_reg[0][0]  ( .D(n34), .CK(clk), .RN(n114), .Q(REG0[0]) );
  DFFRQX2M \RegFile_reg[0][2]  ( .D(n36), .CK(clk), .RN(n115), .Q(REG0[2]) );
  DFFRQX2M \RegFile_reg[0][3]  ( .D(n37), .CK(clk), .RN(n115), .Q(REG0[3]) );
  DFFRQX2M \RegFile_reg[0][4]  ( .D(n38), .CK(clk), .RN(n115), .Q(REG0[4]) );
  DFFRQX2M \RegFile_reg[0][6]  ( .D(n40), .CK(clk), .RN(n115), .Q(REG0[6]) );
  DFFRQX2M \RegFile_reg[0][5]  ( .D(n39), .CK(clk), .RN(n115), .Q(REG0[5]) );
  DFFRHQX2M \RegFile_reg[1][6]  ( .D(n48), .CK(clk), .RN(rst), .Q(REG1[6]) );
  DFFRQX4M \RegFile_reg[1][3]  ( .D(n45), .CK(clk), .RN(n115), .Q(REG1[3]) );
  DFFRHQX2M \RegFile_reg[1][5]  ( .D(n47), .CK(clk), .RN(n115), .Q(REG1[5]) );
  DFFRHQX2M \RegFile_reg[1][1]  ( .D(n43), .CK(clk), .RN(n115), .Q(REG1[1]) );
  DFFRHQX2M \RegFile_reg[0][7]  ( .D(n41), .CK(clk), .RN(n115), .Q(REG0[7]) );
  DFFRHQX2M \RegFile_reg[1][0]  ( .D(n42), .CK(clk), .RN(n114), .Q(REG1[0]) );
  DFFRHQX1M \RegFile_reg[1][4]  ( .D(n46), .CK(clk), .RN(n115), .Q(n133) );
  DFFRQX2M \RegFile_reg[1][2]  ( .D(n44), .CK(clk), .RN(n116), .Q(REG1[2]) );
  BUFX8M U3 ( .A(n133), .Y(REG1[4]) );
  MX2XLM U4 ( .A(REG0[5]), .B(WrData[5]), .S0(n119), .Y(n39) );
  MX2XLM U5 ( .A(REG0[6]), .B(WrData[6]), .S0(n119), .Y(n40) );
  INVX2M U6 ( .A(n12), .Y(n124) );
  INVX2M U7 ( .A(n106), .Y(n119) );
  NAND3X2M U8 ( .A(n123), .B(n122), .C(n21), .Y(n20) );
  NAND2BX2M U9 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  INVX2M U10 ( .A(n120), .Y(n121) );
  NAND3BX2M U11 ( .AN(n123), .B(n15), .C(n122), .Y(n120) );
  NOR2BX2M U12 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  BUFX2M U13 ( .A(n112), .Y(n114) );
  BUFX2M U14 ( .A(n112), .Y(n115) );
  BUFX2M U15 ( .A(n112), .Y(n116) );
  BUFX2M U16 ( .A(n113), .Y(n117) );
  BUFX2M U17 ( .A(n113), .Y(n118) );
  INVX2M U18 ( .A(N12), .Y(n122) );
  BUFX2M U19 ( .A(n14), .Y(n106) );
  NAND3BX2M U20 ( .AN(N11), .B(n15), .C(n122), .Y(n14) );
  BUFX2M U21 ( .A(N11), .Y(n103) );
  NOR2BX2M U22 ( .AN(n19), .B(N13), .Y(n15) );
  INVX2M U23 ( .A(N11), .Y(n123) );
  INVX2M U24 ( .A(WrData[1]), .Y(n126) );
  INVX2M U25 ( .A(WrData[2]), .Y(n127) );
  INVX2M U26 ( .A(WrData[0]), .Y(n125) );
  INVX2M U27 ( .A(WrData[3]), .Y(n128) );
  INVX2M U28 ( .A(WrData[4]), .Y(n129) );
  INVX2M U29 ( .A(WrData[5]), .Y(n130) );
  INVX2M U30 ( .A(WrData[6]), .Y(n131) );
  INVX2M U31 ( .A(WrData[7]), .Y(n132) );
  AND2X2M U32 ( .A(N13), .B(n19), .Y(n21) );
  NOR2BX2M U33 ( .AN(n13), .B(Address[3]), .Y(n19) );
  BUFX2M U34 ( .A(n17), .Y(n111) );
  NAND3X2M U35 ( .A(n15), .B(n123), .C(N12), .Y(n17) );
  BUFX2M U36 ( .A(n18), .Y(n110) );
  NAND3X2M U37 ( .A(N11), .B(n15), .C(N12), .Y(n18) );
  BUFX2M U38 ( .A(n23), .Y(n108) );
  NAND3X2M U39 ( .A(N12), .B(n123), .C(n21), .Y(n23) );
  BUFX2M U40 ( .A(n24), .Y(n107) );
  NAND3X2M U41 ( .A(N12), .B(N11), .C(n21), .Y(n24) );
  BUFX2M U42 ( .A(n22), .Y(n109) );
  NAND3X2M U43 ( .A(N11), .B(n122), .C(n21), .Y(n22) );
  MX2X2M U44 ( .A(n105), .B(WrData[6]), .S0(n121), .Y(n48) );
  BUFX2M U45 ( .A(rst), .Y(n112) );
  BUFX2M U46 ( .A(rst), .Y(n113) );
  MX4X1M U47 ( .A(\RegFile[4][7] ), .B(\RegFile[5][7] ), .C(\RegFile[6][7] ), 
        .D(\RegFile[7][7] ), .S0(n103), .S1(N12), .Y(n101) );
  AO22X1M U48 ( .A0(N34), .A1(n124), .B0(RdData[0]), .B1(n12), .Y(n25) );
  MX2X2M U49 ( .A(n3), .B(n2), .S0(N13), .Y(N34) );
  MX4X1M U50 ( .A(\RegFile[4][0] ), .B(\RegFile[5][0] ), .C(\RegFile[6][0] ), 
        .D(\RegFile[7][0] ), .S0(n103), .S1(N12), .Y(n2) );
  AO22X1M U51 ( .A0(N31), .A1(n124), .B0(RdData[3]), .B1(n12), .Y(n28) );
  MX2X2M U52 ( .A(n9), .B(n8), .S0(N13), .Y(N31) );
  MX4X1M U53 ( .A(\RegFile[4][3] ), .B(\RegFile[5][3] ), .C(\RegFile[6][3] ), 
        .D(\RegFile[7][3] ), .S0(n103), .S1(N12), .Y(n8) );
  AO22X1M U54 ( .A0(N30), .A1(n124), .B0(RdData[4]), .B1(n12), .Y(n29) );
  MX2X2M U55 ( .A(n11), .B(n10), .S0(N13), .Y(N30) );
  MX4X1M U56 ( .A(\RegFile[4][4] ), .B(\RegFile[5][4] ), .C(\RegFile[6][4] ), 
        .D(\RegFile[7][4] ), .S0(n103), .S1(N12), .Y(n10) );
  AO22X1M U57 ( .A0(N28), .A1(n124), .B0(RdData[6]), .B1(n12), .Y(n31) );
  MX2X2M U58 ( .A(n100), .B(n99), .S0(N13), .Y(N28) );
  MX4X1M U59 ( .A(\RegFile[4][6] ), .B(\RegFile[5][6] ), .C(\RegFile[6][6] ), 
        .D(\RegFile[7][6] ), .S0(n103), .S1(N12), .Y(n99) );
  OAI2BB2X1M U60 ( .B0(n125), .B1(n20), .A0N(\RegFile[4][0] ), .A1N(n20), .Y(
        n66) );
  OAI2BB2X1M U61 ( .B0(n126), .B1(n20), .A0N(\RegFile[4][1] ), .A1N(n20), .Y(
        n67) );
  OAI2BB2X1M U62 ( .B0(n127), .B1(n20), .A0N(\RegFile[4][2] ), .A1N(n20), .Y(
        n68) );
  OAI2BB2X1M U63 ( .B0(n128), .B1(n20), .A0N(\RegFile[4][3] ), .A1N(n20), .Y(
        n69) );
  OAI2BB2X1M U64 ( .B0(n129), .B1(n20), .A0N(\RegFile[4][4] ), .A1N(n20), .Y(
        n70) );
  OAI2BB2X1M U65 ( .B0(n130), .B1(n20), .A0N(\RegFile[4][5] ), .A1N(n20), .Y(
        n71) );
  OAI2BB2X1M U66 ( .B0(n131), .B1(n20), .A0N(\RegFile[4][6] ), .A1N(n20), .Y(
        n72) );
  OAI2BB2X1M U67 ( .B0(n132), .B1(n20), .A0N(\RegFile[4][7] ), .A1N(n20), .Y(
        n73) );
  OAI2BB2X1M U68 ( .B0(n126), .B1(n111), .A0N(REG2[1]), .A1N(n111), .Y(n51) );
  OAI2BB2X1M U69 ( .B0(n127), .B1(n111), .A0N(REG2[2]), .A1N(n111), .Y(n52) );
  OAI2BB2X1M U70 ( .B0(n128), .B1(n111), .A0N(REG2[3]), .A1N(n111), .Y(n53) );
  OAI2BB2X1M U71 ( .B0(n129), .B1(n111), .A0N(REG2[4]), .A1N(n111), .Y(n54) );
  OAI2BB2X1M U72 ( .B0(n130), .B1(n111), .A0N(REG2[5]), .A1N(n111), .Y(n55) );
  OAI2BB2X1M U73 ( .B0(n131), .B1(n111), .A0N(REG2[6]), .A1N(n111), .Y(n56) );
  OAI2BB2X1M U74 ( .B0(n125), .B1(n110), .A0N(REG3[0]), .A1N(n110), .Y(n58) );
  OAI2BB2X1M U75 ( .B0(n126), .B1(n110), .A0N(REG3[1]), .A1N(n110), .Y(n59) );
  OAI2BB2X1M U76 ( .B0(n127), .B1(n110), .A0N(REG3[2]), .A1N(n110), .Y(n60) );
  OAI2BB2X1M U77 ( .B0(n128), .B1(n110), .A0N(REG3[3]), .A1N(n110), .Y(n61) );
  OAI2BB2X1M U78 ( .B0(n129), .B1(n110), .A0N(REG3[4]), .A1N(n110), .Y(n62) );
  OAI2BB2X1M U79 ( .B0(n131), .B1(n110), .A0N(REG3[6]), .A1N(n110), .Y(n64) );
  OAI2BB2X1M U80 ( .B0(n132), .B1(n110), .A0N(REG3[7]), .A1N(n110), .Y(n65) );
  OAI2BB2X1M U81 ( .B0(n125), .B1(n109), .A0N(\RegFile[5][0] ), .A1N(n109), 
        .Y(n74) );
  OAI2BB2X1M U82 ( .B0(n126), .B1(n109), .A0N(\RegFile[5][1] ), .A1N(n109), 
        .Y(n75) );
  OAI2BB2X1M U83 ( .B0(n127), .B1(n109), .A0N(\RegFile[5][2] ), .A1N(n109), 
        .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n128), .B1(n109), .A0N(\RegFile[5][3] ), .A1N(n109), 
        .Y(n77) );
  OAI2BB2X1M U85 ( .B0(n129), .B1(n109), .A0N(\RegFile[5][4] ), .A1N(n109), 
        .Y(n78) );
  OAI2BB2X1M U86 ( .B0(n130), .B1(n109), .A0N(\RegFile[5][5] ), .A1N(n109), 
        .Y(n79) );
  OAI2BB2X1M U87 ( .B0(n131), .B1(n109), .A0N(\RegFile[5][6] ), .A1N(n109), 
        .Y(n80) );
  OAI2BB2X1M U88 ( .B0(n132), .B1(n109), .A0N(\RegFile[5][7] ), .A1N(n109), 
        .Y(n81) );
  OAI2BB2X1M U89 ( .B0(n125), .B1(n108), .A0N(\RegFile[6][0] ), .A1N(n108), 
        .Y(n82) );
  OAI2BB2X1M U90 ( .B0(n126), .B1(n108), .A0N(\RegFile[6][1] ), .A1N(n108), 
        .Y(n83) );
  OAI2BB2X1M U91 ( .B0(n127), .B1(n108), .A0N(\RegFile[6][2] ), .A1N(n108), 
        .Y(n84) );
  OAI2BB2X1M U92 ( .B0(n128), .B1(n108), .A0N(\RegFile[6][3] ), .A1N(n108), 
        .Y(n85) );
  OAI2BB2X1M U93 ( .B0(n129), .B1(n108), .A0N(\RegFile[6][4] ), .A1N(n108), 
        .Y(n86) );
  OAI2BB2X1M U94 ( .B0(n130), .B1(n108), .A0N(\RegFile[6][5] ), .A1N(n108), 
        .Y(n87) );
  OAI2BB2X1M U95 ( .B0(n131), .B1(n108), .A0N(\RegFile[6][6] ), .A1N(n108), 
        .Y(n88) );
  OAI2BB2X1M U96 ( .B0(n132), .B1(n108), .A0N(\RegFile[6][7] ), .A1N(n108), 
        .Y(n89) );
  OAI2BB2X1M U97 ( .B0(n125), .B1(n107), .A0N(\RegFile[7][0] ), .A1N(n107), 
        .Y(n90) );
  OAI2BB2X1M U98 ( .B0(n126), .B1(n107), .A0N(\RegFile[7][1] ), .A1N(n107), 
        .Y(n91) );
  OAI2BB2X1M U99 ( .B0(n127), .B1(n107), .A0N(\RegFile[7][2] ), .A1N(n107), 
        .Y(n92) );
  OAI2BB2X1M U100 ( .B0(n128), .B1(n107), .A0N(\RegFile[7][3] ), .A1N(n107), 
        .Y(n93) );
  OAI2BB2X1M U101 ( .B0(n129), .B1(n107), .A0N(\RegFile[7][4] ), .A1N(n107), 
        .Y(n94) );
  OAI2BB2X1M U102 ( .B0(n130), .B1(n107), .A0N(\RegFile[7][5] ), .A1N(n107), 
        .Y(n95) );
  OAI2BB2X1M U103 ( .B0(n131), .B1(n107), .A0N(\RegFile[7][6] ), .A1N(n107), 
        .Y(n96) );
  OAI2BB2X1M U104 ( .B0(n132), .B1(n107), .A0N(\RegFile[7][7] ), .A1N(n107), 
        .Y(n97) );
  OAI2BB2X1M U105 ( .B0(n106), .B1(n125), .A0N(REG0[0]), .A1N(n106), .Y(n34)
         );
  OAI2BB2X1M U106 ( .B0(n106), .B1(n126), .A0N(REG0[1]), .A1N(n106), .Y(n35)
         );
  OAI2BB2X1M U107 ( .B0(n106), .B1(n127), .A0N(REG0[2]), .A1N(n106), .Y(n36)
         );
  OAI2BB2X1M U108 ( .B0(n106), .B1(n128), .A0N(REG0[3]), .A1N(n106), .Y(n37)
         );
  OAI2BB2X1M U109 ( .B0(n106), .B1(n129), .A0N(REG0[4]), .A1N(n106), .Y(n38)
         );
  OAI2BB2X1M U110 ( .B0(n125), .B1(n111), .A0N(REG2[0]), .A1N(n111), .Y(n50)
         );
  OAI2BB2X1M U111 ( .B0(n132), .B1(n111), .A0N(REG2[7]), .A1N(n111), .Y(n57)
         );
  OAI2BB2X1M U112 ( .B0(n130), .B1(n110), .A0N(REG3[5]), .A1N(n110), .Y(n63)
         );
  AO22X1M U113 ( .A0(N33), .A1(n124), .B0(RdData[1]), .B1(n12), .Y(n26) );
  MX2X2M U114 ( .A(n5), .B(n4), .S0(N13), .Y(N33) );
  MX4XLM U115 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n103), 
        .S1(N12), .Y(n5) );
  MX4X1M U116 ( .A(\RegFile[4][1] ), .B(\RegFile[5][1] ), .C(\RegFile[6][1] ), 
        .D(\RegFile[7][1] ), .S0(n103), .S1(N12), .Y(n4) );
  AO22X1M U117 ( .A0(N32), .A1(n124), .B0(RdData[2]), .B1(n12), .Y(n27) );
  MX2X2M U118 ( .A(n7), .B(n6), .S0(N13), .Y(N32) );
  MX4XLM U119 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n103), 
        .S1(N12), .Y(n7) );
  MX4X1M U120 ( .A(\RegFile[4][2] ), .B(\RegFile[5][2] ), .C(\RegFile[6][2] ), 
        .D(\RegFile[7][2] ), .S0(n103), .S1(N12), .Y(n6) );
  AO22X1M U121 ( .A0(N29), .A1(n124), .B0(RdData[5]), .B1(n12), .Y(n30) );
  MX2X2M U122 ( .A(n98), .B(n16), .S0(N13), .Y(N29) );
  MX4XLM U123 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n103), 
        .S1(N12), .Y(n98) );
  MX4X1M U124 ( .A(\RegFile[4][5] ), .B(\RegFile[5][5] ), .C(\RegFile[6][5] ), 
        .D(\RegFile[7][5] ), .S0(n103), .S1(N12), .Y(n16) );
  MX2XLM U125 ( .A(REG1[1]), .B(WrData[1]), .S0(n121), .Y(n43) );
  MX2XLM U126 ( .A(REG1[2]), .B(WrData[2]), .S0(n121), .Y(n44) );
  MX2XLM U127 ( .A(REG1[5]), .B(WrData[5]), .S0(n121), .Y(n47) );
  OAI2BB1X2M U128 ( .A0N(RD_DATA_VALID), .A1N(n13), .B0(n12), .Y(n33) );
  MX2XLM U129 ( .A(REG1[4]), .B(WrData[4]), .S0(n121), .Y(n46) );
  MX4XLM U130 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n103), 
        .S1(N12), .Y(n11) );
  MX4XLM U131 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n103), 
        .S1(N12), .Y(n102) );
  MX4XLM U132 ( .A(REG0[6]), .B(n105), .C(REG2[6]), .D(REG3[6]), .S0(n103), 
        .S1(N12), .Y(n100) );
  MX2X2M U133 ( .A(n102), .B(n101), .S0(N13), .Y(N27) );
  MX4XLM U134 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n103), 
        .S1(N12), .Y(n3) );
  MX4XLM U135 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n103), 
        .S1(N12), .Y(n9) );
  MX2XLM U136 ( .A(REG1[3]), .B(WrData[3]), .S0(n121), .Y(n45) );
  MX2XLM U137 ( .A(REG1[0]), .B(WrData[0]), .S0(n121), .Y(n42) );
  INVXLM U138 ( .A(REG1[6]), .Y(n104) );
  INVX2M U139 ( .A(n104), .Y(n105) );
  MX2XLM U140 ( .A(REG1[7]), .B(WrData[7]), .S0(n121), .Y(n49) );
  AO22X1M U141 ( .A0(N27), .A1(n124), .B0(RdData[7]), .B1(n12), .Y(n32) );
  MX2XLM U142 ( .A(REG0[7]), .B(WrData[7]), .S0(n119), .Y(n41) );
endmodule


module ALU_16_D_WIDTH8_FUN_WIDTH4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR3XLM U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[2]), .Y(n7) );
  INVXLM U2 ( .A(B[5]), .Y(n4) );
  INVXLM U3 ( .A(B[1]), .Y(n8) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U6 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U7 ( .A(B[4]), .Y(n5) );
  INVXLM U8 ( .A(B[3]), .Y(n6) );
  CLKINVX1M U9 ( .A(B[6]), .Y(n3) );
  INVXLM U10 ( .A(B[7]), .Y(n2) );
  INVXLM U11 ( .A(B[0]), .Y(n9) );
endmodule


module ALU_16_D_WIDTH8_FUN_WIDTH4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;

  wire   [7:1] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3XLM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule


module ALU_16_D_WIDTH8_FUN_WIDTH4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][0] , \ab[6][1] , \ab[6][0] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][3] , \ab[4][2] , \ab[4][1] , \ab[4][0] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][5] , \ab[2][4] , \ab[2][3] , \ab[2][2] , \ab[2][1] ,
         \ab[2][0] , \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] ,
         \ab[1][2] , \ab[1][1] , \ab[1][0] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[6][0] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][3] , \CARRYB[3][2] ,
         \CARRYB[3][1] , \CARRYB[3][0] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \SUMB[6][1] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] ,
         \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] ,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  XOR3XLM S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .Y(
        \SUMB[6][1] ) );
  XOR3XLM S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .Y(
        PRODUCT[7]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(PRODUCT[6]) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(PRODUCT[5]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(PRODUCT[4]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(PRODUCT[3]) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n3), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(PRODUCT[2]) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  XOR3XLM S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .Y(
        \SUMB[4][3] ) );
  XOR3XLM S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .Y(
        \SUMB[5][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  XOR3XLM S2_2_5 ( .A(\ab[2][5] ), .B(n8), .C(\SUMB[1][6] ), .Y(\SUMB[2][5] )
         );
  XOR3XLM S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .Y(
        \SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  INVXLM U7 ( .A(A[5]), .Y(n24) );
  INVXLM U8 ( .A(A[6]), .Y(n23) );
  INVX2M U9 ( .A(\ab[0][3] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][4] ), .Y(n11) );
  INVX2M U11 ( .A(\ab[0][5] ), .Y(n12) );
  INVX2M U12 ( .A(\ab[0][6] ), .Y(n13) );
  INVX2M U13 ( .A(\ab[0][2] ), .Y(n9) );
  AND2X2M U14 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  CLKXOR2X2M U15 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U16 ( .A(\ab[1][3] ), .B(n11), .Y(\SUMB[1][3] ) );
  XNOR2X2M U17 ( .A(\ab[1][5] ), .B(n13), .Y(\SUMB[1][5] ) );
  XNOR2X2M U18 ( .A(\ab[1][4] ), .B(n12), .Y(\SUMB[1][4] ) );
  XNOR2X2M U19 ( .A(\ab[1][2] ), .B(n10), .Y(\SUMB[1][2] ) );
  XNOR2X2M U20 ( .A(\ab[1][1] ), .B(n9), .Y(\SUMB[1][1] ) );
  INVX2M U21 ( .A(A[1]), .Y(n28) );
  CLKXOR2X2M U22 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U23 ( .A(A[2]), .Y(n27) );
  INVX2M U24 ( .A(A[3]), .Y(n26) );
  INVX2M U25 ( .A(A[4]), .Y(n25) );
  INVXLM U26 ( .A(B[2]), .Y(n19) );
  INVXLM U27 ( .A(B[1]), .Y(n20) );
  INVX2M U28 ( .A(A[0]), .Y(n29) );
  INVXLM U29 ( .A(B[5]), .Y(n16) );
  INVXLM U30 ( .A(B[4]), .Y(n17) );
  INVXLM U31 ( .A(B[3]), .Y(n18) );
  INVXLM U32 ( .A(B[6]), .Y(n15) );
  INVXLM U33 ( .A(B[7]), .Y(n14) );
  INVXLM U34 ( .A(B[0]), .Y(n21) );
  INVXLM U35 ( .A(A[7]), .Y(n22) );
  NOR2X1M U36 ( .A(n22), .B(n21), .Y(\ab[7][0] ) );
  NOR2X1M U37 ( .A(n20), .B(n23), .Y(\ab[6][1] ) );
  NOR2X1M U38 ( .A(n21), .B(n23), .Y(\ab[6][0] ) );
  NOR2X1M U39 ( .A(n19), .B(n24), .Y(\ab[5][2] ) );
  NOR2X1M U40 ( .A(n20), .B(n24), .Y(\ab[5][1] ) );
  NOR2X1M U41 ( .A(n21), .B(n24), .Y(\ab[5][0] ) );
  NOR2X1M U42 ( .A(n18), .B(n25), .Y(\ab[4][3] ) );
  NOR2X1M U43 ( .A(n19), .B(n25), .Y(\ab[4][2] ) );
  NOR2X1M U44 ( .A(n20), .B(n25), .Y(\ab[4][1] ) );
  NOR2X1M U45 ( .A(n21), .B(n25), .Y(\ab[4][0] ) );
  NOR2X1M U46 ( .A(n17), .B(n26), .Y(\ab[3][4] ) );
  NOR2X1M U47 ( .A(n18), .B(n26), .Y(\ab[3][3] ) );
  NOR2X1M U48 ( .A(n19), .B(n26), .Y(\ab[3][2] ) );
  NOR2X1M U49 ( .A(n20), .B(n26), .Y(\ab[3][1] ) );
  NOR2X1M U50 ( .A(n21), .B(n26), .Y(\ab[3][0] ) );
  NOR2X1M U51 ( .A(n16), .B(n27), .Y(\ab[2][5] ) );
  NOR2X1M U52 ( .A(n17), .B(n27), .Y(\ab[2][4] ) );
  NOR2X1M U53 ( .A(n18), .B(n27), .Y(\ab[2][3] ) );
  NOR2X1M U54 ( .A(n19), .B(n27), .Y(\ab[2][2] ) );
  NOR2X1M U55 ( .A(n20), .B(n27), .Y(\ab[2][1] ) );
  NOR2X1M U56 ( .A(n21), .B(n27), .Y(\ab[2][0] ) );
  NOR2X1M U57 ( .A(n15), .B(n28), .Y(\ab[1][6] ) );
  NOR2X1M U58 ( .A(n16), .B(n28), .Y(\ab[1][5] ) );
  NOR2X1M U59 ( .A(n17), .B(n28), .Y(\ab[1][4] ) );
  NOR2X1M U60 ( .A(n18), .B(n28), .Y(\ab[1][3] ) );
  NOR2X1M U61 ( .A(n19), .B(n28), .Y(\ab[1][2] ) );
  NOR2X1M U62 ( .A(n20), .B(n28), .Y(\ab[1][1] ) );
  NOR2X1M U63 ( .A(n21), .B(n28), .Y(\ab[1][0] ) );
  NOR2X1M U64 ( .A(n14), .B(n29), .Y(\ab[0][7] ) );
  NOR2X1M U65 ( .A(n15), .B(n29), .Y(\ab[0][6] ) );
  NOR2X1M U66 ( .A(n16), .B(n29), .Y(\ab[0][5] ) );
  NOR2X1M U67 ( .A(n17), .B(n29), .Y(\ab[0][4] ) );
  NOR2X1M U68 ( .A(n18), .B(n29), .Y(\ab[0][3] ) );
  NOR2X1M U69 ( .A(n19), .B(n29), .Y(\ab[0][2] ) );
  NOR2X1M U70 ( .A(n20), .B(n29), .Y(\ab[0][1] ) );
  NOR2X1M U71 ( .A(n21), .B(n29), .Y(PRODUCT[0]) );
endmodule


module ALU_16_D_WIDTH8_FUN_WIDTH4_DW_div_uns_1 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][1] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[5][1] , \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;
  wire   [7:0] \u_div/BInv ;

  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_2  ( .A(n22), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_4  ( .A(n23), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(n24), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n30), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n20), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), 
        .S(\u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), 
        .S(\u_div/SumTmp[2][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), 
        .S(\u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n21), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/CryTmp[6][1] ), .B(
        \u_div/BInv [1]), .CI(n8), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_2  ( .A(n16), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(n19), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_2  ( .A(n17), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/CryTmp[5][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/PartRem[6][1] ), .CO(\u_div/CryTmp[5][2] ), .S(\u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), 
        .S(\u_div/SumTmp[3][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_5  ( .A(n1), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  INVX5M U1 ( .A(n55), .Y(\u_div/PartRem[3][1] ) );
  INVX10M U2 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  CLKMX2X6M U3 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(n22) );
  NAND2X4M U4 ( .A(n4), .B(n5), .Y(n16) );
  MXI2X6M U5 ( .A(n9), .B(n10), .S0(quotient[7]), .Y(n8) );
  INVX4M U6 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  NOR2X12M U7 ( .A(b[5]), .B(b[4]), .Y(n72) );
  MXI2X6M U8 ( .A(n44), .B(n45), .S0(n46), .Y(\u_div/PartRem[5][1] ) );
  NOR2X6M U9 ( .A(n48), .B(n47), .Y(n46) );
  MXI2XLM U10 ( .A(n20), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n36)
         );
  MXI2X4M U11 ( .A(n32), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n38)
         );
  INVX4M U12 ( .A(n75), .Y(quotient[2]) );
  MXI2X4M U13 ( .A(n42), .B(n2), .S0(quotient[6]), .Y(\u_div/PartRem[6][1] )
         );
  INVX6M U14 ( .A(n68), .Y(quotient[6]) );
  NAND2X6M U15 ( .A(n70), .B(\u_div/BInv [3]), .Y(n47) );
  CLKINVX4M U16 ( .A(\u_div/CryTmp[2][6] ), .Y(n62) );
  NOR2X6M U17 ( .A(n57), .B(n58), .Y(n56) );
  CLKINVX12M U18 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  INVX2M U19 ( .A(n76), .Y(quotient[1]) );
  AND2X2M U20 ( .A(n67), .B(\u_div/BInv [2]), .Y(n14) );
  INVX4M U21 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  NOR2X5M U22 ( .A(n61), .B(n62), .Y(n60) );
  CLKINVX8M U23 ( .A(n66), .Y(quotient[7]) );
  INVX2M U24 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  INVX2M U25 ( .A(a[7]), .Y(n9) );
  MX2X2M U26 ( .A(n21), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n1) );
  CLKXOR2X2M U27 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(n2) );
  INVX2M U28 ( .A(n71), .Y(quotient[4]) );
  INVX2M U29 ( .A(n69), .Y(quotient[5]) );
  AND2X2M U30 ( .A(b[0]), .B(n9), .Y(n3) );
  MXI2X3M U31 ( .A(n33), .B(n18), .S0(quotient[6]), .Y(n17) );
  INVX4M U32 ( .A(\u_div/CryTmp[5][3] ), .Y(n48) );
  NAND2BX4M U33 ( .AN(n48), .B(n67), .Y(n69) );
  INVX6M U34 ( .A(n47), .Y(n67) );
  NAND2XLM U35 ( .A(n16), .B(n71), .Y(n6) );
  NAND2BX2M U36 ( .AN(n62), .B(n73), .Y(n75) );
  CLKNAND2X8M U37 ( .A(n72), .B(n73), .Y(n52) );
  INVX6M U38 ( .A(n61), .Y(n73) );
  INVX4M U39 ( .A(n39), .Y(\u_div/PartRem[2][1] ) );
  MXI2X6M U40 ( .A(n51), .B(n50), .S0(n15), .Y(\u_div/PartRem[4][1] ) );
  CLKINVX6M U41 ( .A(\u_div/CryTmp[3][5] ), .Y(n58) );
  NAND2BX8M U42 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n61) );
  MXI2X6M U43 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n60), .Y(n39) );
  CLKINVX1M U44 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  OR2X6M U45 ( .A(n52), .B(n53), .Y(n15) );
  INVX4M U46 ( .A(n52), .Y(n70) );
  MXI2X6M U47 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(n56), .Y(n55) );
  NAND2X2M U48 ( .A(\u_div/PartRem[6][1] ), .B(n69), .Y(n4) );
  NAND2X1M U49 ( .A(\u_div/SumTmp[5][1] ), .B(quotient[5]), .Y(n5) );
  MX2X1M U50 ( .A(n19), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n23) );
  CLKINVX4M U51 ( .A(n13), .Y(\u_div/PartRem[1][2] ) );
  NAND2X4M U52 ( .A(\u_div/CryTmp[6][2] ), .B(n14), .Y(n68) );
  NAND2XLM U53 ( .A(\u_div/SumTmp[4][2] ), .B(quotient[4]), .Y(n7) );
  NAND2X2M U54 ( .A(n6), .B(n7), .Y(n19) );
  NAND2XLM U55 ( .A(n39), .B(n76), .Y(n11) );
  XOR2XLM U56 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n10) );
  OR2X2M U57 ( .A(n58), .B(n57), .Y(n74) );
  CLKNAND2X2M U58 ( .A(n11), .B(n12), .Y(n13) );
  NAND2BX4M U59 ( .AN(n25), .B(n67), .Y(n66) );
  INVXLM U60 ( .A(a[5]), .Y(n44) );
  NAND2X2M U61 ( .A(b[0]), .B(n42), .Y(\u_div/CryTmp[6][1] ) );
  NAND2XLM U62 ( .A(n59), .B(quotient[1]), .Y(n12) );
  MXI2XLM U63 ( .A(n30), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n37)
         );
  INVX3M U64 ( .A(\u_div/CryTmp[4][4] ), .Y(n53) );
  INVX2M U65 ( .A(\u_div/SumTmp[6][1] ), .Y(n18) );
  MX2XLM U66 ( .A(n24), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n21) );
  CLKMX2X2M U67 ( .A(n22), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n20)
         );
  INVX2M U68 ( .A(n37), .Y(\u_div/PartRem[2][3] ) );
  MXI2XLM U69 ( .A(n36), .B(n43), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  MXI2XLM U70 ( .A(n37), .B(n49), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2XLM U71 ( .A(n35), .B(n41), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX2M U72 ( .A(n74), .Y(quotient[3]) );
  MXI2XLM U73 ( .A(n23), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n35)
         );
  MXI2XLM U74 ( .A(n1), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n34) );
  NAND2BX2M U75 ( .AN(n53), .B(n70), .Y(n71) );
  INVX2M U76 ( .A(n34), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U77 ( .A(n17), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n24) );
  INVX2M U78 ( .A(\u_div/SumTmp[1][1] ), .Y(n59) );
  INVX2M U79 ( .A(\u_div/SumTmp[5][0] ), .Y(n45) );
  INVX2M U80 ( .A(a[6]), .Y(n42) );
  INVX2M U81 ( .A(a[4]), .Y(n50) );
  INVX2M U82 ( .A(\u_div/SumTmp[4][0] ), .Y(n51) );
  INVX2M U83 ( .A(\u_div/SumTmp[1][3] ), .Y(n49) );
  INVX2M U84 ( .A(\u_div/SumTmp[1][5] ), .Y(n41) );
  INVX2M U85 ( .A(n36), .Y(\u_div/PartRem[2][4] ) );
  INVX2M U86 ( .A(n35), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U87 ( .A(\u_div/SumTmp[1][4] ), .Y(n43) );
  MXI2XLM U88 ( .A(n38), .B(n54), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  INVX2M U89 ( .A(\u_div/SumTmp[1][2] ), .Y(n54) );
  MXI2X1M U90 ( .A(n34), .B(n40), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX2M U91 ( .A(\u_div/SumTmp[1][6] ), .Y(n40) );
  NAND2XLM U92 ( .A(n73), .B(\u_div/BInv [5]), .Y(n57) );
  INVX2M U93 ( .A(\u_div/SumTmp[1][0] ), .Y(n64) );
  INVX2M U94 ( .A(a[1]), .Y(n63) );
  OR3X4M U95 ( .A(n3), .B(b[2]), .C(b[1]), .Y(n25) );
  NAND2X2M U96 ( .A(b[0]), .B(n26), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U97 ( .A(a[0]), .Y(n26) );
  CLKINVX1M U98 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVXLM U99 ( .A(\u_div/PartRem[4][1] ), .Y(n27) );
  INVX2M U100 ( .A(n27), .Y(n28) );
  MX2X2M U101 ( .A(\u_div/SumTmp[3][1] ), .B(n28), .S0(n74), .Y(n30) );
  INVXLM U102 ( .A(\u_div/PartRem[3][1] ), .Y(n31) );
  INVX2M U103 ( .A(n31), .Y(n32) );
  INVXLM U104 ( .A(n8), .Y(n33) );
  INVXLM U105 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX2M U106 ( .A(n38), .Y(\u_div/PartRem[2][2] ) );
  NAND2BX2M U107 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n76) );
  MXI2X6M U108 ( .A(n63), .B(n64), .S0(n65), .Y(\u_div/PartRem[1][1] ) );
  NOR2BX8M U109 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n65) );
endmodule


module ALU_16_D_WIDTH8_FUN_WIDTH4 ( A, B, ENABLE, CLK, RST, ALU_FUN, OUT_VALID, 
        ALU_OUT );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input ENABLE, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N147, N148, N149, n34,
         n35, n36, n37, n38, n39, n40, n48, n49, n50, n54, n55, n56, n60, n61,
         n62, n66, n67, n68, n72, n73, n74, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n93, n94, n95, n97, n98, n99, n100, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n41, n42, n43, n44,
         n45, n46, n47, n51, n52, n53, n57, n58, n59, n63, n64, n65, n69, n70,
         n71, n75, n76, n86, n87, n88, n89, n90, n91, n92, n96, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178;
  wire   [7:0] ALU_OUT_Comb;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  ALU_16_D_WIDTH8_FUN_WIDTH4_DW01_sub_0 sub_52 ( .A({n22, n30, n29, n28, n27, 
        n26, n25, A[0]}), .B({B[7], n24, B[5:0]}), .CI(1'b0), .DIFF({N106, 
        N105, N104, N103, N102, N101, N100, N99}) );
  ALU_16_D_WIDTH8_FUN_WIDTH4_DW01_add_0 add_47 ( .A({n22, n30, n29, n28, n27, 
        n26, n25, A[0]}), .B({B[7], n24, B[5:0]}), .CI(1'b0), .SUM({N98, N97, 
        N96, N95, N94, N93, N92, N91}) );
  ALU_16_D_WIDTH8_FUN_WIDTH4_DW02_mult_0 mult_57 ( .A({n22, n30, n29, n28, n27, 
        n26, n25, A[0]}), .B({B[7], n24, B[5:0]}), .TC(1'b0), .PRODUCT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, N114, N113, N112, 
        N111, N110, N109, N108, N107}) );
  ALU_16_D_WIDTH8_FUN_WIDTH4_DW_div_uns_1 div_62 ( .a({n31, n30, n29, n28, n27, 
        n26, n25, A[0]}), .b({B[7], n24, B[5:0]}), .quotient({N122, N121, N120, 
        N119, N118, N117, N116, N115}) );
  DFFRQX2M OUT_VALID_reg ( .D(ENABLE), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  INVX2M U7 ( .A(1'b1), .Y(ALU_OUT[8]) );
  INVX2M U15 ( .A(1'b1), .Y(ALU_OUT[9]) );
  INVX2M U17 ( .A(1'b1), .Y(ALU_OUT[10]) );
  INVX2M U19 ( .A(1'b1), .Y(ALU_OUT[11]) );
  INVX2M U21 ( .A(1'b1), .Y(ALU_OUT[12]) );
  INVX2M U23 ( .A(1'b1), .Y(ALU_OUT[13]) );
  INVX2M U25 ( .A(1'b1), .Y(ALU_OUT[14]) );
  INVX2M U27 ( .A(1'b1), .Y(ALU_OUT[15]) );
  NOR2X3M U29 ( .A(N115), .B(n103), .Y(n129) );
  BUFX2M U30 ( .A(A[7]), .Y(n31) );
  AND2X2M U31 ( .A(n97), .B(n115), .Y(n19) );
  BUFX2M U32 ( .A(A[6]), .Y(n30) );
  BUFX5M U33 ( .A(B[6]), .Y(n24) );
  AOI211X2M U34 ( .A0(n129), .A1(n128), .B0(n127), .C0(n126), .Y(
        ALU_OUT_Comb[0]) );
  AO22XLM U35 ( .A0(n29), .A1(n131), .B0(N104), .B1(n20), .Y(n75) );
  INVXLM U36 ( .A(n29), .Y(n174) );
  AO22XLM U37 ( .A0(n30), .A1(n131), .B0(N105), .B1(n20), .Y(n88) );
  INVXLM U38 ( .A(n30), .Y(n173) );
  OAI21XLM U39 ( .A0(B[1]), .A1(n82), .B0(n83), .Y(n78) );
  AOI21XLM U40 ( .A0(n137), .A1(n134), .B0(B[1]), .Y(n138) );
  INVX2M U41 ( .A(n111), .Y(n131) );
  INVX2M U42 ( .A(n107), .Y(n133) );
  INVX2M U43 ( .A(n38), .Y(n110) );
  INVX2M U44 ( .A(n121), .Y(n92) );
  NOR2X2M U45 ( .A(n99), .B(n32), .Y(n20) );
  INVX2M U46 ( .A(n104), .Y(n130) );
  INVX2M U47 ( .A(n123), .Y(n117) );
  NOR2X2M U48 ( .A(n125), .B(n124), .Y(n127) );
  NOR2X2M U49 ( .A(n117), .B(n116), .Y(n128) );
  OAI21X2M U50 ( .A0(n93), .A1(n94), .B0(n95), .Y(n40) );
  OAI21X2M U51 ( .A0(n81), .A1(n99), .B0(n95), .Y(n39) );
  AND3X2M U52 ( .A(n100), .B(n136), .C(n23), .Y(n38) );
  OR2X2M U53 ( .A(n23), .B(n136), .Y(n99) );
  OR2X2M U54 ( .A(n81), .B(n93), .Y(n107) );
  OR2X2M U55 ( .A(n94), .B(n99), .Y(n111) );
  AND4X2M U56 ( .A(N149), .B(n132), .C(n23), .D(n136), .Y(n85) );
  NAND3BX2M U57 ( .AN(n81), .B(n136), .C(n23), .Y(n37) );
  NAND3BX2M U58 ( .AN(n135), .B(n43), .C(n42), .Y(n121) );
  INVX2M U59 ( .A(n99), .Y(n43) );
  NAND3BX2M U60 ( .AN(n136), .B(n23), .C(n132), .Y(n104) );
  OR2X2M U61 ( .A(n134), .B(n104), .Y(n123) );
  INVX2M U62 ( .A(n41), .Y(n105) );
  NAND3BX2M U63 ( .AN(n135), .B(n33), .C(n42), .Y(n41) );
  INVX2M U64 ( .A(n93), .Y(n33) );
  NOR2X2M U65 ( .A(n93), .B(n32), .Y(n21) );
  INVX2M U66 ( .A(n100), .Y(n32) );
  INVX2M U67 ( .A(n94), .Y(n132) );
  INVX2M U68 ( .A(ENABLE), .Y(n126) );
  AOI31X2M U69 ( .A0(n47), .A1(n46), .A2(n45), .B0(n126), .Y(ALU_OUT_Comb[1])
         );
  AOI22X1M U70 ( .A0(N92), .A1(n21), .B0(N100), .B1(n20), .Y(n47) );
  MX2X2M U71 ( .A(n107), .B(n111), .S0(n25), .Y(n46) );
  AOI21X2M U72 ( .A0(N108), .A1(n105), .B0(n44), .Y(n45) );
  AOI31X2M U73 ( .A0(n57), .A1(n53), .A2(n52), .B0(n126), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U74 ( .A0(N109), .A1(n105), .B0(N93), .B1(n21), .Y(n53) );
  AOI211X2M U75 ( .A0(n177), .A1(n133), .B0(n51), .C0(n72), .Y(n52) );
  AOI22XLM U76 ( .A0(n27), .A1(n130), .B0(N117), .B1(n92), .Y(n57) );
  AOI31X2M U77 ( .A0(n64), .A1(n63), .A2(n59), .B0(n126), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U78 ( .A0(N110), .A1(n105), .B0(N94), .B1(n21), .Y(n63) );
  AOI211X2M U79 ( .A0(n176), .A1(n133), .B0(n58), .C0(n66), .Y(n59) );
  AOI22XLM U80 ( .A0(n28), .A1(n130), .B0(N118), .B1(n92), .Y(n64) );
  AOI31X2M U81 ( .A0(n71), .A1(n70), .A2(n69), .B0(n126), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U82 ( .A0(N111), .A1(n105), .B0(N95), .B1(n21), .Y(n70) );
  AOI211X2M U83 ( .A0(n175), .A1(n133), .B0(n65), .C0(n60), .Y(n69) );
  AOI221XLM U84 ( .A0(n38), .A1(n173), .B0(n30), .B1(n40), .C0(n131), .Y(n49)
         );
  AOI221XLM U85 ( .A0(n30), .A1(n38), .B0(n39), .B1(n173), .C0(n133), .Y(n50)
         );
  AOI221XLM U86 ( .A0(n38), .A1(n134), .B0(n25), .B1(n40), .C0(n131), .Y(n80)
         );
  AOI221XLM U87 ( .A0(n25), .A1(n38), .B0(n39), .B1(n134), .C0(n133), .Y(n82)
         );
  AOI31X2M U88 ( .A0(N148), .A1(n23), .A2(n84), .B0(n85), .Y(n83) );
  NOR3X2M U89 ( .A(n136), .B(ALU_FUN[2]), .C(n135), .Y(n84) );
  NAND4X2M U90 ( .A(n121), .B(n120), .C(n119), .D(n118), .Y(n125) );
  AOI31X2M U91 ( .A0(n87), .A1(n86), .A2(n76), .B0(n126), .Y(ALU_OUT_Comb[5])
         );
  AOI211X2M U92 ( .A0(n174), .A1(n133), .B0(n75), .C0(n54), .Y(n76) );
  AOI22X1M U93 ( .A0(N112), .A1(n105), .B0(N96), .B1(n21), .Y(n86) );
  NOR2X2M U94 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n100) );
  AOI211X2M U95 ( .A0(n173), .A1(n133), .B0(n88), .C0(n48), .Y(n89) );
  AOI22X1M U96 ( .A0(N113), .A1(n105), .B0(N97), .B1(n21), .Y(n90) );
  NAND2X2M U97 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n81) );
  NAND3X2M U98 ( .A(n122), .B(n119), .C(n120), .Y(n103) );
  INVX2M U99 ( .A(ALU_FUN[0]), .Y(n136) );
  OR2X2M U100 ( .A(ALU_FUN[0]), .B(n23), .Y(n93) );
  INVX2M U101 ( .A(ALU_FUN[2]), .Y(n42) );
  NAND3X2M U102 ( .A(n100), .B(ALU_FUN[0]), .C(n23), .Y(n95) );
  OR2X2M U103 ( .A(ALU_FUN[1]), .B(n42), .Y(n94) );
  NAND3X2M U104 ( .A(n123), .B(n19), .C(n122), .Y(n124) );
  NAND2X2M U105 ( .A(n118), .B(n19), .Y(n116) );
  BUFX2M U106 ( .A(ALU_FUN[3]), .Y(n23) );
  INVX2M U107 ( .A(n25), .Y(n134) );
  NOR3X2M U108 ( .A(n135), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n98) );
  NAND2X2M U109 ( .A(N107), .B(n105), .Y(n118) );
  INVX2M U110 ( .A(ALU_FUN[1]), .Y(n135) );
  NAND2X2M U111 ( .A(N91), .B(n21), .Y(n122) );
  AO22X1M U112 ( .A0(n26), .A1(n131), .B0(N101), .B1(n20), .Y(n51) );
  AO22X1M U113 ( .A0(n27), .A1(n131), .B0(N102), .B1(n20), .Y(n58) );
  AO22X1M U114 ( .A0(n28), .A1(n131), .B0(N103), .B1(n20), .Y(n65) );
  INVX2M U115 ( .A(n28), .Y(n175) );
  INVX2M U116 ( .A(n27), .Y(n176) );
  INVX2M U117 ( .A(n26), .Y(n177) );
  BUFX2M U118 ( .A(A[5]), .Y(n29) );
  OAI2BB1XLM U119 ( .A0N(N116), .A1N(n92), .B0(n77), .Y(n44) );
  AOI211X2M U120 ( .A0(n26), .A1(n130), .B0(n78), .C0(n79), .Y(n77) );
  OAI2B2X1M U121 ( .A1N(B[1]), .A0(n80), .B0(n37), .B1(n178), .Y(n79) );
  BUFX2M U122 ( .A(A[4]), .Y(n28) );
  BUFX2M U123 ( .A(A[3]), .Y(n27) );
  BUFX2M U124 ( .A(A[2]), .Y(n26) );
  BUFX2M U125 ( .A(A[1]), .Y(n25) );
  AOI221XLM U126 ( .A0(n38), .A1(n176), .B0(n27), .B1(n40), .C0(n131), .Y(n67)
         );
  AOI221XLM U127 ( .A0(n27), .A1(n38), .B0(n39), .B1(n176), .C0(n133), .Y(n68)
         );
  AOI221XLM U128 ( .A0(n38), .A1(n175), .B0(n28), .B1(n40), .C0(n131), .Y(n61)
         );
  AOI221XLM U129 ( .A0(n28), .A1(n38), .B0(n39), .B1(n175), .C0(n133), .Y(n62)
         );
  OAI222XLM U130 ( .A0(n73), .A1(n165), .B0(B[2]), .B1(n74), .C0(n37), .C1(
        n134), .Y(n72) );
  AOI221XLM U131 ( .A0(n38), .A1(n177), .B0(n26), .B1(n40), .C0(n131), .Y(n73)
         );
  AOI221XLM U132 ( .A0(n26), .A1(n38), .B0(n39), .B1(n177), .C0(n133), .Y(n74)
         );
  OAI222XLM U133 ( .A0(n55), .A1(n170), .B0(B[5]), .B1(n56), .C0(n37), .C1(
        n175), .Y(n54) );
  INVXLM U134 ( .A(B[5]), .Y(n170) );
  AOI221XLM U135 ( .A0(n38), .A1(n174), .B0(n29), .B1(n40), .C0(n131), .Y(n55)
         );
  AOI221XLM U136 ( .A0(n29), .A1(n38), .B0(n39), .B1(n174), .C0(n133), .Y(n56)
         );
  INVX2M U137 ( .A(n137), .Y(n164) );
  INVX2M U138 ( .A(n148), .Y(n166) );
  MX2X2M U139 ( .A(n114), .B(n113), .S0(A[0]), .Y(n115) );
  AOI31X2M U140 ( .A0(N147), .A1(n23), .A2(n98), .B0(n85), .Y(n97) );
  INVXLM U141 ( .A(B[2]), .Y(n165) );
  AND2X2M U142 ( .A(n108), .B(n107), .Y(n114) );
  INVX2M U143 ( .A(n39), .Y(n106) );
  AND2X2M U144 ( .A(n112), .B(n111), .Y(n113) );
  INVX2M U145 ( .A(n40), .Y(n109) );
  BUFX2M U146 ( .A(A[7]), .Y(n22) );
  NAND2X2M U147 ( .A(N99), .B(n20), .Y(n119) );
  INVX2M U148 ( .A(A[0]), .Y(n178) );
  INVXLM U149 ( .A(B[4]), .Y(n171) );
  OAI222XLM U150 ( .A0(n61), .A1(n171), .B0(B[4]), .B1(n62), .C0(n37), .C1(
        n176), .Y(n60) );
  NAND2BXLM U151 ( .AN(n28), .B(B[4]), .Y(n141) );
  OAI222XLM U152 ( .A0(n67), .A1(n167), .B0(B[3]), .B1(n68), .C0(n37), .C1(
        n177), .Y(n66) );
  INVXLM U153 ( .A(B[3]), .Y(n167) );
  MX2XLM U154 ( .A(n107), .B(n111), .S0(B[0]), .Y(n120) );
  MX2XLM U155 ( .A(n106), .B(n110), .S0(B[0]), .Y(n108) );
  MX2XLM U156 ( .A(n110), .B(n109), .S0(B[0]), .Y(n112) );
  OAI222XLM U157 ( .A0(n49), .A1(n168), .B0(n24), .B1(n50), .C0(n37), .C1(n174), .Y(n48) );
  XNOR2XLM U158 ( .A(n30), .B(n24), .Y(n156) );
  INVXLM U159 ( .A(n24), .Y(n168) );
  AOI32XLM U160 ( .A0(n143), .A1(n153), .A2(n156), .B0(n24), .B1(n173), .Y(
        n144) );
  INVXLM U161 ( .A(B[7]), .Y(n169) );
  INVXLM U162 ( .A(B[0]), .Y(n163) );
  AOI31X2M U163 ( .A0(n91), .A1(n90), .A2(n89), .B0(n126), .Y(ALU_OUT_Comb[6])
         );
  AOI31X2M U164 ( .A0(n102), .A1(n101), .A2(n96), .B0(n126), .Y(
        ALU_OUT_Comb[7]) );
  AOI22X1M U165 ( .A0(N98), .A1(n21), .B0(N106), .B1(n20), .Y(n101) );
  INVXLM U166 ( .A(n22), .Y(n172) );
  NAND2XLM U167 ( .A(B[7]), .B(n172), .Y(n160) );
  AOI22XLM U168 ( .A0(N122), .A1(n92), .B0(N114), .B1(n105), .Y(n102) );
  AOI22XLM U169 ( .A0(n22), .A1(n130), .B0(N121), .B1(n92), .Y(n91) );
  AOI22XLM U170 ( .A0(n30), .A1(n130), .B0(N120), .B1(n92), .Y(n87) );
  AOI221XLM U171 ( .A0(n22), .A1(n131), .B0(n172), .B1(n133), .C0(n34), .Y(n96) );
  AOI221XLM U172 ( .A0(n38), .A1(n172), .B0(n22), .B1(n40), .C0(n131), .Y(n35)
         );
  AOI221XLM U173 ( .A0(n22), .A1(n38), .B0(n39), .B1(n172), .C0(n133), .Y(n36)
         );
  AOI22XLM U174 ( .A0(n29), .A1(n130), .B0(N119), .B1(n92), .Y(n71) );
  OAI222XLM U175 ( .A0(n35), .A1(n169), .B0(B[7]), .B1(n36), .C0(n37), .C1(
        n173), .Y(n34) );
  NOR2XLM U176 ( .A(n172), .B(B[7]), .Y(n159) );
  NAND2BX1M U177 ( .AN(B[4]), .B(n28), .Y(n152) );
  CLKNAND2X2M U178 ( .A(n152), .B(n141), .Y(n154) );
  NOR2X1M U179 ( .A(n167), .B(n27), .Y(n149) );
  NOR2X1M U180 ( .A(n165), .B(n26), .Y(n140) );
  NOR2X1M U181 ( .A(n163), .B(A[0]), .Y(n137) );
  CLKNAND2X2M U182 ( .A(n26), .B(n165), .Y(n151) );
  NAND2BX1M U183 ( .AN(n140), .B(n151), .Y(n146) );
  AOI211X1M U184 ( .A0(n25), .A1(n164), .B0(n146), .C0(n138), .Y(n139) );
  CLKNAND2X2M U185 ( .A(n27), .B(n167), .Y(n150) );
  OAI31X1M U186 ( .A0(n149), .A1(n140), .A2(n139), .B0(n150), .Y(n142) );
  NAND2BX1M U187 ( .AN(n29), .B(B[5]), .Y(n157) );
  OAI211X1M U188 ( .A0(n154), .A1(n142), .B0(n141), .C0(n157), .Y(n143) );
  NAND2BX1M U189 ( .AN(B[5]), .B(n29), .Y(n153) );
  OAI21X1M U190 ( .A0(n159), .A1(n144), .B0(n160), .Y(N149) );
  CLKNAND2X2M U191 ( .A(A[0]), .B(n163), .Y(n147) );
  OA21X1M U192 ( .A0(n147), .A1(n134), .B0(B[1]), .Y(n145) );
  AOI211X1M U193 ( .A0(n147), .A1(n134), .B0(n146), .C0(n145), .Y(n148) );
  AOI31X1M U194 ( .A0(n166), .A1(n151), .A2(n150), .B0(n149), .Y(n155) );
  OAI2B11X1M U195 ( .A1N(n155), .A0(n154), .B0(n153), .C0(n152), .Y(n158) );
  AOI32X1M U196 ( .A0(n158), .A1(n157), .A2(n156), .B0(n30), .B1(n168), .Y(
        n161) );
  AOI2B1X1M U197 ( .A1N(n161), .A0(n160), .B0(n159), .Y(n162) );
  CLKINVX1M U198 ( .A(n162), .Y(N148) );
  NOR2X1M U199 ( .A(N149), .B(N148), .Y(N147) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
  AND2X2M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
endmodule


module RST_SYNC_STAGES2_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \FF[0] ;

  DFFRQX2M \FF_reg[1]  ( .D(\FF[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \FF_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\FF[0] ) );
endmodule


module RST_SYNC_STAGES2_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \FF[0] ;

  DFFRQX2M \FF_reg[1]  ( .D(\FF[0] ), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \FF_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\FF[0] ) );
endmodule


module FIFO_FULL_ADDRESS4 ( W_INC, W_CLK, W_RST, WQ2_RPTR, W_ADDR, W_PTR, 
        W_FULL );
  input [3:0] WQ2_RPTR;
  output [2:0] W_ADDR;
  output [3:0] W_PTR;
  input W_INC, W_CLK, W_RST;
  output W_FULL;
  wire   w_full, \binary_ptr[3] , n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [2:0] gray_wr_ptr;
  wire   [3:0] binary_ptr_next;

  DFFRQX2M \binary_ptr_reg[3]  ( .D(binary_ptr_next[3]), .CK(W_CLK), .RN(W_RST), .Q(\binary_ptr[3] ) );
  DFFRQX2M \binary_ptr_reg[2]  ( .D(binary_ptr_next[2]), .CK(W_CLK), .RN(W_RST), .Q(W_ADDR[2]) );
  DFFRQX2M W_FULL_reg ( .D(w_full), .CK(W_CLK), .RN(W_RST), .Q(W_FULL) );
  DFFRQX2M \binary_ptr_reg[1]  ( .D(binary_ptr_next[1]), .CK(W_CLK), .RN(W_RST), .Q(W_ADDR[1]) );
  DFFRQX2M \binary_ptr_reg[0]  ( .D(binary_ptr_next[0]), .CK(W_CLK), .RN(W_RST), .Q(W_ADDR[0]) );
  DFFRQX2M \W_PTR_reg[3]  ( .D(binary_ptr_next[3]), .CK(W_CLK), .RN(W_RST), 
        .Q(W_PTR[3]) );
  DFFRQX2M \W_PTR_reg[2]  ( .D(gray_wr_ptr[2]), .CK(W_CLK), .RN(W_RST), .Q(
        W_PTR[2]) );
  DFFRQX2M \W_PTR_reg[1]  ( .D(gray_wr_ptr[1]), .CK(W_CLK), .RN(W_RST), .Q(
        W_PTR[1]) );
  DFFRQX2M \W_PTR_reg[0]  ( .D(gray_wr_ptr[0]), .CK(W_CLK), .RN(W_RST), .Q(
        W_PTR[0]) );
  CLKXOR2X2M U3 ( .A(binary_ptr_next[2]), .B(binary_ptr_next[1]), .Y(
        gray_wr_ptr[1]) );
  CLKXOR2X2M U4 ( .A(binary_ptr_next[1]), .B(binary_ptr_next[0]), .Y(
        gray_wr_ptr[0]) );
  CLKXOR2X2M U5 ( .A(binary_ptr_next[3]), .B(binary_ptr_next[2]), .Y(
        gray_wr_ptr[2]) );
  NOR2BX2M U6 ( .AN(W_ADDR[1]), .B(n9), .Y(n8) );
  NOR2BX2M U7 ( .AN(W_INC), .B(W_FULL), .Y(n10) );
  NOR4X1M U8 ( .A(n3), .B(n4), .C(n5), .D(n6), .Y(w_full) );
  XNOR2X2M U9 ( .A(binary_ptr_next[3]), .B(WQ2_RPTR[3]), .Y(n3) );
  CLKXOR2X2M U10 ( .A(WQ2_RPTR[0]), .B(gray_wr_ptr[0]), .Y(n5) );
  XNOR2X2M U11 ( .A(gray_wr_ptr[2]), .B(WQ2_RPTR[2]), .Y(n4) );
  NAND2X2M U12 ( .A(W_ADDR[0]), .B(n10), .Y(n9) );
  CLKXOR2X2M U13 ( .A(n8), .B(W_ADDR[2]), .Y(binary_ptr_next[2]) );
  CLKXOR2X2M U14 ( .A(WQ2_RPTR[1]), .B(gray_wr_ptr[1]), .Y(n6) );
  XNOR2X2M U15 ( .A(n9), .B(W_ADDR[1]), .Y(binary_ptr_next[1]) );
  XNOR2X2M U16 ( .A(n7), .B(\binary_ptr[3] ), .Y(binary_ptr_next[3]) );
  NAND2X2M U17 ( .A(W_ADDR[2]), .B(n8), .Y(n7) );
  CLKXOR2X2M U18 ( .A(n10), .B(W_ADDR[0]), .Y(binary_ptr_next[0]) );
endmodule


module FIFO_EMPTY_ADDRESS4 ( R_INC, R_CLK, R_RST, RQ2_WPTR, R_ADDR, R_PTR, 
        R_EMPTY );
  input [3:0] RQ2_WPTR;
  output [2:0] R_ADDR;
  output [3:0] R_PTR;
  input R_INC, R_CLK, R_RST;
  output R_EMPTY;
  wire   N1, \binary_ptr[3] , n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [2:0] gray_rd_ptr;
  wire   [3:0] binary_ptr_next;

  DFFRQX2M \binary_ptr_reg[3]  ( .D(binary_ptr_next[3]), .CK(R_CLK), .RN(R_RST), .Q(\binary_ptr[3] ) );
  DFFSQX2M R_EMPTY_reg ( .D(N1), .CK(R_CLK), .SN(R_RST), .Q(R_EMPTY) );
  DFFRQX2M \binary_ptr_reg[0]  ( .D(binary_ptr_next[0]), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[0]) );
  DFFRQX2M \binary_ptr_reg[2]  ( .D(binary_ptr_next[2]), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[2]) );
  DFFRQX2M \binary_ptr_reg[1]  ( .D(binary_ptr_next[1]), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[1]) );
  DFFRQX2M \R_PTR_reg[0]  ( .D(gray_rd_ptr[0]), .CK(R_CLK), .RN(R_RST), .Q(
        R_PTR[0]) );
  DFFRQX2M \R_PTR_reg[1]  ( .D(gray_rd_ptr[1]), .CK(R_CLK), .RN(R_RST), .Q(
        R_PTR[1]) );
  DFFRQX2M \R_PTR_reg[3]  ( .D(binary_ptr_next[3]), .CK(R_CLK), .RN(R_RST), 
        .Q(R_PTR[3]) );
  DFFRQX2M \R_PTR_reg[2]  ( .D(gray_rd_ptr[2]), .CK(R_CLK), .RN(R_RST), .Q(
        R_PTR[2]) );
  CLKXOR2X2M U3 ( .A(binary_ptr_next[2]), .B(binary_ptr_next[1]), .Y(
        gray_rd_ptr[1]) );
  CLKXOR2X2M U4 ( .A(binary_ptr_next[3]), .B(binary_ptr_next[2]), .Y(
        gray_rd_ptr[2]) );
  CLKXOR2X2M U5 ( .A(binary_ptr_next[1]), .B(binary_ptr_next[0]), .Y(
        gray_rd_ptr[0]) );
  XNOR2X2M U6 ( .A(n10), .B(\binary_ptr[3] ), .Y(binary_ptr_next[3]) );
  NAND2X2M U7 ( .A(n9), .B(R_ADDR[2]), .Y(n10) );
  XNOR2X2M U8 ( .A(n8), .B(R_ADDR[1]), .Y(binary_ptr_next[1]) );
  NOR2BX2M U9 ( .AN(R_INC), .B(R_EMPTY), .Y(n7) );
  NOR2BX2M U10 ( .AN(R_ADDR[1]), .B(n8), .Y(n9) );
  NOR4X1M U11 ( .A(n3), .B(n4), .C(n5), .D(n6), .Y(N1) );
  CLKXOR2X2M U12 ( .A(RQ2_WPTR[3]), .B(binary_ptr_next[3]), .Y(n4) );
  CLKXOR2X2M U13 ( .A(RQ2_WPTR[0]), .B(gray_rd_ptr[0]), .Y(n5) );
  CLKXOR2X2M U14 ( .A(RQ2_WPTR[2]), .B(gray_rd_ptr[2]), .Y(n3) );
  NAND2X2M U15 ( .A(R_ADDR[0]), .B(n7), .Y(n8) );
  CLKXOR2X2M U16 ( .A(n9), .B(R_ADDR[2]), .Y(binary_ptr_next[2]) );
  CLKXOR2X2M U17 ( .A(RQ2_WPTR[1]), .B(gray_rd_ptr[1]), .Y(n6) );
  CLKXOR2X2M U18 ( .A(n7), .B(R_ADDR[0]), .Y(binary_ptr_next[0]) );
endmodule


module FIFO_MEM_WIDTH8_ADDRESS4_DEPTH8 ( W_CLK, W_RST, W_DATA, W_INC, W_FULL, 
        W_ADDR, R_ADDR, R_DATA );
  input [7:0] W_DATA;
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  output [7:0] R_DATA;
  input W_CLK, W_RST, W_INC, W_FULL;
  wire   N9, N10, N11, \fifo_mem[0][7] , \fifo_mem[0][6] , \fifo_mem[0][5] ,
         \fifo_mem[0][4] , \fifo_mem[0][3] , \fifo_mem[0][2] ,
         \fifo_mem[0][1] , \fifo_mem[0][0] , \fifo_mem[1][7] ,
         \fifo_mem[1][6] , \fifo_mem[1][5] , \fifo_mem[1][4] ,
         \fifo_mem[1][3] , \fifo_mem[1][2] , \fifo_mem[1][1] ,
         \fifo_mem[1][0] , \fifo_mem[2][7] , \fifo_mem[2][6] ,
         \fifo_mem[2][5] , \fifo_mem[2][4] , \fifo_mem[2][3] ,
         \fifo_mem[2][2] , \fifo_mem[2][1] , \fifo_mem[2][0] ,
         \fifo_mem[3][7] , \fifo_mem[3][6] , \fifo_mem[3][5] ,
         \fifo_mem[3][4] , \fifo_mem[3][3] , \fifo_mem[3][2] ,
         \fifo_mem[3][1] , \fifo_mem[3][0] , \fifo_mem[4][7] ,
         \fifo_mem[4][6] , \fifo_mem[4][5] , \fifo_mem[4][4] ,
         \fifo_mem[4][3] , \fifo_mem[4][2] , \fifo_mem[4][1] ,
         \fifo_mem[4][0] , \fifo_mem[5][7] , \fifo_mem[5][6] ,
         \fifo_mem[5][5] , \fifo_mem[5][4] , \fifo_mem[5][3] ,
         \fifo_mem[5][2] , \fifo_mem[5][1] , \fifo_mem[5][0] ,
         \fifo_mem[6][7] , \fifo_mem[6][6] , \fifo_mem[6][5] ,
         \fifo_mem[6][4] , \fifo_mem[6][3] , \fifo_mem[6][2] ,
         \fifo_mem[6][1] , \fifo_mem[6][0] , \fifo_mem[7][7] ,
         \fifo_mem[7][6] , \fifo_mem[7][5] , \fifo_mem[7][4] ,
         \fifo_mem[7][3] , \fifo_mem[7][2] , \fifo_mem[7][1] ,
         \fifo_mem[7][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112;
  assign N9 = R_ADDR[0];
  assign N10 = R_ADDR[1];
  assign N11 = R_ADDR[2];

  DFFRQX2M \fifo_mem_reg[1][7]  ( .D(n77), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[1][7] ) );
  DFFRQX2M \fifo_mem_reg[1][6]  ( .D(n76), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[1][6] ) );
  DFFRQX2M \fifo_mem_reg[1][5]  ( .D(n75), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[1][5] ) );
  DFFRQX2M \fifo_mem_reg[1][4]  ( .D(n74), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[1][4] ) );
  DFFRQX2M \fifo_mem_reg[1][3]  ( .D(n73), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[1][3] ) );
  DFFRQX2M \fifo_mem_reg[1][2]  ( .D(n72), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[1][2] ) );
  DFFRQX2M \fifo_mem_reg[1][1]  ( .D(n71), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[1][1] ) );
  DFFRQX2M \fifo_mem_reg[1][0]  ( .D(n70), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[1][0] ) );
  DFFRQX2M \fifo_mem_reg[5][7]  ( .D(n45), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][7] ) );
  DFFRQX2M \fifo_mem_reg[5][6]  ( .D(n44), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][6] ) );
  DFFRQX2M \fifo_mem_reg[5][5]  ( .D(n43), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][5] ) );
  DFFRQX2M \fifo_mem_reg[5][4]  ( .D(n42), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][4] ) );
  DFFRQX2M \fifo_mem_reg[5][3]  ( .D(n41), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][3] ) );
  DFFRQX2M \fifo_mem_reg[5][2]  ( .D(n40), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][2] ) );
  DFFRQX2M \fifo_mem_reg[5][1]  ( .D(n39), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][1] ) );
  DFFRQX2M \fifo_mem_reg[5][0]  ( .D(n38), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[5][0] ) );
  DFFRQX2M \fifo_mem_reg[3][7]  ( .D(n61), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[3][7] ) );
  DFFRQX2M \fifo_mem_reg[3][6]  ( .D(n60), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[3][6] ) );
  DFFRQX2M \fifo_mem_reg[3][5]  ( .D(n59), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][5] ) );
  DFFRQX2M \fifo_mem_reg[3][4]  ( .D(n58), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][4] ) );
  DFFRQX2M \fifo_mem_reg[3][3]  ( .D(n57), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][3] ) );
  DFFRQX2M \fifo_mem_reg[3][2]  ( .D(n56), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][2] ) );
  DFFRQX2M \fifo_mem_reg[3][1]  ( .D(n55), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][1] ) );
  DFFRQX2M \fifo_mem_reg[3][0]  ( .D(n54), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[3][0] ) );
  DFFRQX2M \fifo_mem_reg[7][7]  ( .D(n29), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][7] ) );
  DFFRQX2M \fifo_mem_reg[7][6]  ( .D(n28), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][6] ) );
  DFFRQX2M \fifo_mem_reg[7][5]  ( .D(n27), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][5] ) );
  DFFRQX2M \fifo_mem_reg[7][4]  ( .D(n26), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][4] ) );
  DFFRQX2M \fifo_mem_reg[7][3]  ( .D(n25), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][3] ) );
  DFFRQX2M \fifo_mem_reg[7][2]  ( .D(n24), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][2] ) );
  DFFRQX2M \fifo_mem_reg[7][1]  ( .D(n23), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][1] ) );
  DFFRQX2M \fifo_mem_reg[7][0]  ( .D(n22), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[7][0] ) );
  DFFRQX2M \fifo_mem_reg[2][7]  ( .D(n69), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][7] ) );
  DFFRQX2M \fifo_mem_reg[2][6]  ( .D(n68), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][6] ) );
  DFFRQX2M \fifo_mem_reg[2][5]  ( .D(n67), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][5] ) );
  DFFRQX2M \fifo_mem_reg[2][4]  ( .D(n66), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][4] ) );
  DFFRQX2M \fifo_mem_reg[2][3]  ( .D(n65), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][3] ) );
  DFFRQX2M \fifo_mem_reg[2][2]  ( .D(n64), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][2] ) );
  DFFRQX2M \fifo_mem_reg[2][1]  ( .D(n63), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][1] ) );
  DFFRQX2M \fifo_mem_reg[2][0]  ( .D(n62), .CK(W_CLK), .RN(n99), .Q(
        \fifo_mem[2][0] ) );
  DFFRQX2M \fifo_mem_reg[6][7]  ( .D(n37), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[6][7] ) );
  DFFRQX2M \fifo_mem_reg[6][6]  ( .D(n36), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[6][6] ) );
  DFFRQX2M \fifo_mem_reg[6][5]  ( .D(n35), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[6][5] ) );
  DFFRQX2M \fifo_mem_reg[6][4]  ( .D(n34), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[6][4] ) );
  DFFRQX2M \fifo_mem_reg[6][3]  ( .D(n33), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[6][3] ) );
  DFFRQX2M \fifo_mem_reg[6][2]  ( .D(n32), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[6][2] ) );
  DFFRQX2M \fifo_mem_reg[6][1]  ( .D(n31), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[6][1] ) );
  DFFRQX2M \fifo_mem_reg[6][0]  ( .D(n30), .CK(W_CLK), .RN(n102), .Q(
        \fifo_mem[6][0] ) );
  DFFRQX2M \fifo_mem_reg[0][7]  ( .D(n85), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][7] ) );
  DFFRQX2M \fifo_mem_reg[0][6]  ( .D(n84), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][6] ) );
  DFFRQX2M \fifo_mem_reg[0][5]  ( .D(n83), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][5] ) );
  DFFRQX2M \fifo_mem_reg[0][4]  ( .D(n82), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][4] ) );
  DFFRQX2M \fifo_mem_reg[0][3]  ( .D(n81), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][3] ) );
  DFFRQX2M \fifo_mem_reg[0][2]  ( .D(n80), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][2] ) );
  DFFRQX2M \fifo_mem_reg[0][1]  ( .D(n79), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][1] ) );
  DFFRQX2M \fifo_mem_reg[0][0]  ( .D(n78), .CK(W_CLK), .RN(n98), .Q(
        \fifo_mem[0][0] ) );
  DFFRQX2M \fifo_mem_reg[4][7]  ( .D(n53), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][7] ) );
  DFFRQX2M \fifo_mem_reg[4][6]  ( .D(n52), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][6] ) );
  DFFRQX2M \fifo_mem_reg[4][5]  ( .D(n51), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][5] ) );
  DFFRQX2M \fifo_mem_reg[4][4]  ( .D(n50), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][4] ) );
  DFFRQX2M \fifo_mem_reg[4][3]  ( .D(n49), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][3] ) );
  DFFRQX2M \fifo_mem_reg[4][2]  ( .D(n48), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][2] ) );
  DFFRQX2M \fifo_mem_reg[4][1]  ( .D(n47), .CK(W_CLK), .RN(n100), .Q(
        \fifo_mem[4][1] ) );
  DFFRQX2M \fifo_mem_reg[4][0]  ( .D(n46), .CK(W_CLK), .RN(n101), .Q(
        \fifo_mem[4][0] ) );
  BUFX2M U2 ( .A(n15), .Y(n95) );
  BUFX2M U3 ( .A(n18), .Y(n94) );
  BUFX2M U4 ( .A(n96), .Y(n100) );
  BUFX2M U5 ( .A(n96), .Y(n99) );
  BUFX2M U6 ( .A(n96), .Y(n98) );
  BUFX2M U7 ( .A(n97), .Y(n101) );
  BUFX2M U8 ( .A(n97), .Y(n102) );
  BUFX2M U9 ( .A(W_RST), .Y(n96) );
  BUFX2M U10 ( .A(W_RST), .Y(n97) );
  NAND3X2M U11 ( .A(n103), .B(n104), .C(n12), .Y(n14) );
  NAND3X2M U12 ( .A(n103), .B(n104), .C(n16), .Y(n19) );
  NAND3X2M U13 ( .A(W_ADDR[1]), .B(n12), .C(W_ADDR[0]), .Y(n21) );
  NAND3X2M U14 ( .A(n12), .B(n104), .C(W_ADDR[0]), .Y(n13) );
  NAND3X2M U15 ( .A(W_ADDR[1]), .B(n103), .C(n16), .Y(n17) );
  NAND3X2M U16 ( .A(n12), .B(n103), .C(W_ADDR[1]), .Y(n11) );
  NOR2BX2M U17 ( .AN(n20), .B(W_ADDR[2]), .Y(n16) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n112), .A0N(\fifo_mem[6][0] ), .A1N(n11), .Y(
        n30) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n111), .A0N(\fifo_mem[6][1] ), .A1N(n11), .Y(
        n31) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n110), .A0N(\fifo_mem[6][2] ), .A1N(n11), .Y(
        n32) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n109), .A0N(\fifo_mem[6][3] ), .A1N(n11), .Y(
        n33) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n108), .A0N(\fifo_mem[6][4] ), .A1N(n11), .Y(
        n34) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n107), .A0N(\fifo_mem[6][5] ), .A1N(n11), .Y(
        n35) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n106), .A0N(\fifo_mem[6][6] ), .A1N(n11), .Y(
        n36) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n105), .A0N(\fifo_mem[6][7] ), .A1N(n11), .Y(
        n37) );
  OAI2BB2X1M U26 ( .B0(n112), .B1(n21), .A0N(\fifo_mem[7][0] ), .A1N(n21), .Y(
        n22) );
  OAI2BB2X1M U27 ( .B0(n111), .B1(n21), .A0N(\fifo_mem[7][1] ), .A1N(n21), .Y(
        n23) );
  OAI2BB2X1M U28 ( .B0(n110), .B1(n21), .A0N(\fifo_mem[7][2] ), .A1N(n21), .Y(
        n24) );
  OAI2BB2X1M U29 ( .B0(n109), .B1(n21), .A0N(\fifo_mem[7][3] ), .A1N(n21), .Y(
        n25) );
  OAI2BB2X1M U30 ( .B0(n108), .B1(n21), .A0N(\fifo_mem[7][4] ), .A1N(n21), .Y(
        n26) );
  OAI2BB2X1M U31 ( .B0(n107), .B1(n21), .A0N(\fifo_mem[7][5] ), .A1N(n21), .Y(
        n27) );
  OAI2BB2X1M U32 ( .B0(n106), .B1(n21), .A0N(\fifo_mem[7][6] ), .A1N(n21), .Y(
        n28) );
  OAI2BB2X1M U33 ( .B0(n105), .B1(n21), .A0N(\fifo_mem[7][7] ), .A1N(n21), .Y(
        n29) );
  OAI2BB2X1M U34 ( .B0(n112), .B1(n13), .A0N(\fifo_mem[5][0] ), .A1N(n13), .Y(
        n38) );
  OAI2BB2X1M U35 ( .B0(n111), .B1(n13), .A0N(\fifo_mem[5][1] ), .A1N(n13), .Y(
        n39) );
  OAI2BB2X1M U36 ( .B0(n110), .B1(n13), .A0N(\fifo_mem[5][2] ), .A1N(n13), .Y(
        n40) );
  OAI2BB2X1M U37 ( .B0(n109), .B1(n13), .A0N(\fifo_mem[5][3] ), .A1N(n13), .Y(
        n41) );
  OAI2BB2X1M U38 ( .B0(n108), .B1(n13), .A0N(\fifo_mem[5][4] ), .A1N(n13), .Y(
        n42) );
  OAI2BB2X1M U39 ( .B0(n107), .B1(n13), .A0N(\fifo_mem[5][5] ), .A1N(n13), .Y(
        n43) );
  OAI2BB2X1M U40 ( .B0(n106), .B1(n13), .A0N(\fifo_mem[5][6] ), .A1N(n13), .Y(
        n44) );
  OAI2BB2X1M U41 ( .B0(n105), .B1(n13), .A0N(\fifo_mem[5][7] ), .A1N(n13), .Y(
        n45) );
  OAI2BB2X1M U42 ( .B0(n112), .B1(n17), .A0N(\fifo_mem[2][0] ), .A1N(n17), .Y(
        n62) );
  OAI2BB2X1M U43 ( .B0(n111), .B1(n17), .A0N(\fifo_mem[2][1] ), .A1N(n17), .Y(
        n63) );
  OAI2BB2X1M U44 ( .B0(n110), .B1(n17), .A0N(\fifo_mem[2][2] ), .A1N(n17), .Y(
        n64) );
  OAI2BB2X1M U45 ( .B0(n109), .B1(n17), .A0N(\fifo_mem[2][3] ), .A1N(n17), .Y(
        n65) );
  OAI2BB2X1M U46 ( .B0(n108), .B1(n17), .A0N(\fifo_mem[2][4] ), .A1N(n17), .Y(
        n66) );
  OAI2BB2X1M U47 ( .B0(n107), .B1(n17), .A0N(\fifo_mem[2][5] ), .A1N(n17), .Y(
        n67) );
  OAI2BB2X1M U48 ( .B0(n106), .B1(n17), .A0N(\fifo_mem[2][6] ), .A1N(n17), .Y(
        n68) );
  OAI2BB2X1M U49 ( .B0(n105), .B1(n17), .A0N(\fifo_mem[2][7] ), .A1N(n17), .Y(
        n69) );
  OAI2BB2X1M U50 ( .B0(n112), .B1(n19), .A0N(\fifo_mem[0][0] ), .A1N(n19), .Y(
        n78) );
  OAI2BB2X1M U51 ( .B0(n111), .B1(n19), .A0N(\fifo_mem[0][1] ), .A1N(n19), .Y(
        n79) );
  OAI2BB2X1M U52 ( .B0(n110), .B1(n19), .A0N(\fifo_mem[0][2] ), .A1N(n19), .Y(
        n80) );
  OAI2BB2X1M U53 ( .B0(n109), .B1(n19), .A0N(\fifo_mem[0][3] ), .A1N(n19), .Y(
        n81) );
  OAI2BB2X1M U54 ( .B0(n108), .B1(n19), .A0N(\fifo_mem[0][4] ), .A1N(n19), .Y(
        n82) );
  OAI2BB2X1M U55 ( .B0(n107), .B1(n19), .A0N(\fifo_mem[0][5] ), .A1N(n19), .Y(
        n83) );
  OAI2BB2X1M U56 ( .B0(n106), .B1(n19), .A0N(\fifo_mem[0][6] ), .A1N(n19), .Y(
        n84) );
  OAI2BB2X1M U57 ( .B0(n105), .B1(n19), .A0N(\fifo_mem[0][7] ), .A1N(n19), .Y(
        n85) );
  OAI2BB2X1M U58 ( .B0(n112), .B1(n14), .A0N(\fifo_mem[4][0] ), .A1N(n14), .Y(
        n46) );
  OAI2BB2X1M U59 ( .B0(n111), .B1(n14), .A0N(\fifo_mem[4][1] ), .A1N(n14), .Y(
        n47) );
  OAI2BB2X1M U60 ( .B0(n110), .B1(n14), .A0N(\fifo_mem[4][2] ), .A1N(n14), .Y(
        n48) );
  OAI2BB2X1M U61 ( .B0(n109), .B1(n14), .A0N(\fifo_mem[4][3] ), .A1N(n14), .Y(
        n49) );
  OAI2BB2X1M U62 ( .B0(n108), .B1(n14), .A0N(\fifo_mem[4][4] ), .A1N(n14), .Y(
        n50) );
  OAI2BB2X1M U63 ( .B0(n107), .B1(n14), .A0N(\fifo_mem[4][5] ), .A1N(n14), .Y(
        n51) );
  OAI2BB2X1M U64 ( .B0(n106), .B1(n14), .A0N(\fifo_mem[4][6] ), .A1N(n14), .Y(
        n52) );
  OAI2BB2X1M U65 ( .B0(n105), .B1(n14), .A0N(\fifo_mem[4][7] ), .A1N(n14), .Y(
        n53) );
  OAI2BB2X1M U66 ( .B0(n112), .B1(n95), .A0N(\fifo_mem[3][0] ), .A1N(n95), .Y(
        n54) );
  OAI2BB2X1M U67 ( .B0(n111), .B1(n95), .A0N(\fifo_mem[3][1] ), .A1N(n95), .Y(
        n55) );
  OAI2BB2X1M U68 ( .B0(n110), .B1(n95), .A0N(\fifo_mem[3][2] ), .A1N(n95), .Y(
        n56) );
  OAI2BB2X1M U69 ( .B0(n109), .B1(n95), .A0N(\fifo_mem[3][3] ), .A1N(n95), .Y(
        n57) );
  OAI2BB2X1M U70 ( .B0(n108), .B1(n95), .A0N(\fifo_mem[3][4] ), .A1N(n95), .Y(
        n58) );
  OAI2BB2X1M U71 ( .B0(n107), .B1(n95), .A0N(\fifo_mem[3][5] ), .A1N(n95), .Y(
        n59) );
  OAI2BB2X1M U72 ( .B0(n106), .B1(n95), .A0N(\fifo_mem[3][6] ), .A1N(n95), .Y(
        n60) );
  OAI2BB2X1M U73 ( .B0(n105), .B1(n95), .A0N(\fifo_mem[3][7] ), .A1N(n95), .Y(
        n61) );
  OAI2BB2X1M U74 ( .B0(n112), .B1(n94), .A0N(\fifo_mem[1][0] ), .A1N(n94), .Y(
        n70) );
  OAI2BB2X1M U75 ( .B0(n111), .B1(n94), .A0N(\fifo_mem[1][1] ), .A1N(n94), .Y(
        n71) );
  OAI2BB2X1M U76 ( .B0(n110), .B1(n94), .A0N(\fifo_mem[1][2] ), .A1N(n94), .Y(
        n72) );
  OAI2BB2X1M U77 ( .B0(n109), .B1(n94), .A0N(\fifo_mem[1][3] ), .A1N(n94), .Y(
        n73) );
  OAI2BB2X1M U78 ( .B0(n108), .B1(n94), .A0N(\fifo_mem[1][4] ), .A1N(n94), .Y(
        n74) );
  OAI2BB2X1M U79 ( .B0(n107), .B1(n94), .A0N(\fifo_mem[1][5] ), .A1N(n94), .Y(
        n75) );
  OAI2BB2X1M U80 ( .B0(n106), .B1(n94), .A0N(\fifo_mem[1][6] ), .A1N(n94), .Y(
        n76) );
  OAI2BB2X1M U81 ( .B0(n105), .B1(n94), .A0N(\fifo_mem[1][7] ), .A1N(n94), .Y(
        n77) );
  NOR2BX2M U82 ( .AN(W_INC), .B(W_FULL), .Y(n20) );
  AND2X2M U83 ( .A(W_ADDR[2]), .B(n20), .Y(n12) );
  NAND3X2M U84 ( .A(W_ADDR[0]), .B(W_ADDR[1]), .C(n16), .Y(n15) );
  NAND3X2M U85 ( .A(W_ADDR[0]), .B(n104), .C(n16), .Y(n18) );
  INVX2M U86 ( .A(W_ADDR[0]), .Y(n103) );
  INVX2M U87 ( .A(W_ADDR[1]), .Y(n104) );
  INVX2M U88 ( .A(W_DATA[1]), .Y(n111) );
  INVX2M U89 ( .A(W_DATA[2]), .Y(n110) );
  INVX2M U90 ( .A(W_DATA[3]), .Y(n109) );
  INVX2M U91 ( .A(W_DATA[4]), .Y(n108) );
  INVX2M U92 ( .A(W_DATA[5]), .Y(n107) );
  INVX2M U93 ( .A(W_DATA[6]), .Y(n106) );
  INVX2M U94 ( .A(W_DATA[7]), .Y(n105) );
  INVX2M U95 ( .A(W_DATA[0]), .Y(n112) );
  MX2X2M U96 ( .A(n91), .B(n90), .S0(N11), .Y(R_DATA[7]) );
  MX4X1M U97 ( .A(\fifo_mem[4][7] ), .B(\fifo_mem[5][7] ), .C(\fifo_mem[6][7] ), .D(\fifo_mem[7][7] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U98 ( .A(\fifo_mem[0][7] ), .B(\fifo_mem[1][7] ), .C(\fifo_mem[2][7] ), .D(\fifo_mem[3][7] ), .S0(n93), .S1(N10), .Y(n91) );
  MX2X2M U99 ( .A(n2), .B(n1), .S0(N11), .Y(R_DATA[0]) );
  MX4X1M U100 ( .A(\fifo_mem[4][0] ), .B(\fifo_mem[5][0] ), .C(
        \fifo_mem[6][0] ), .D(\fifo_mem[7][0] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U101 ( .A(\fifo_mem[0][0] ), .B(\fifo_mem[1][0] ), .C(
        \fifo_mem[2][0] ), .D(\fifo_mem[3][0] ), .S0(n93), .S1(N10), .Y(n2) );
  MX2X2M U102 ( .A(n4), .B(n3), .S0(N11), .Y(R_DATA[1]) );
  MX4X1M U103 ( .A(\fifo_mem[4][1] ), .B(\fifo_mem[5][1] ), .C(
        \fifo_mem[6][1] ), .D(\fifo_mem[7][1] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U104 ( .A(\fifo_mem[0][1] ), .B(\fifo_mem[1][1] ), .C(
        \fifo_mem[2][1] ), .D(\fifo_mem[3][1] ), .S0(n93), .S1(N10), .Y(n4) );
  MX2X2M U105 ( .A(n6), .B(n5), .S0(N11), .Y(R_DATA[2]) );
  MX4X1M U106 ( .A(\fifo_mem[4][2] ), .B(\fifo_mem[5][2] ), .C(
        \fifo_mem[6][2] ), .D(\fifo_mem[7][2] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U107 ( .A(\fifo_mem[0][2] ), .B(\fifo_mem[1][2] ), .C(
        \fifo_mem[2][2] ), .D(\fifo_mem[3][2] ), .S0(n93), .S1(N10), .Y(n6) );
  MX2X2M U108 ( .A(n8), .B(n7), .S0(N11), .Y(R_DATA[3]) );
  MX4X1M U109 ( .A(\fifo_mem[4][3] ), .B(\fifo_mem[5][3] ), .C(
        \fifo_mem[6][3] ), .D(\fifo_mem[7][3] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U110 ( .A(\fifo_mem[0][3] ), .B(\fifo_mem[1][3] ), .C(
        \fifo_mem[2][3] ), .D(\fifo_mem[3][3] ), .S0(n93), .S1(N10), .Y(n8) );
  MX2X2M U111 ( .A(n10), .B(n9), .S0(N11), .Y(R_DATA[4]) );
  MX4X1M U112 ( .A(\fifo_mem[4][4] ), .B(\fifo_mem[5][4] ), .C(
        \fifo_mem[6][4] ), .D(\fifo_mem[7][4] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U113 ( .A(\fifo_mem[0][4] ), .B(\fifo_mem[1][4] ), .C(
        \fifo_mem[2][4] ), .D(\fifo_mem[3][4] ), .S0(n93), .S1(N10), .Y(n10)
         );
  MX2X2M U114 ( .A(n87), .B(n86), .S0(N11), .Y(R_DATA[5]) );
  MX4X1M U115 ( .A(\fifo_mem[4][5] ), .B(\fifo_mem[5][5] ), .C(
        \fifo_mem[6][5] ), .D(\fifo_mem[7][5] ), .S0(n92), .S1(N10), .Y(n86)
         );
  MX4X1M U116 ( .A(\fifo_mem[0][5] ), .B(\fifo_mem[1][5] ), .C(
        \fifo_mem[2][5] ), .D(\fifo_mem[3][5] ), .S0(n93), .S1(N10), .Y(n87)
         );
  MX2X2M U117 ( .A(n89), .B(n88), .S0(N11), .Y(R_DATA[6]) );
  MX4X1M U118 ( .A(\fifo_mem[4][6] ), .B(\fifo_mem[5][6] ), .C(
        \fifo_mem[6][6] ), .D(\fifo_mem[7][6] ), .S0(n92), .S1(N10), .Y(n88)
         );
  MX4X1M U119 ( .A(\fifo_mem[0][6] ), .B(\fifo_mem[1][6] ), .C(
        \fifo_mem[2][6] ), .D(\fifo_mem[3][6] ), .S0(n93), .S1(N10), .Y(n89)
         );
  BUFX2M U120 ( .A(N9), .Y(n93) );
  BUFX2M U121 ( .A(N9), .Y(n92) );
endmodule


module BIT_SYNC_WIDTH4_STAGES2_0 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \Sync_FFs[3][0] , \Sync_FFs[2][0] , \Sync_FFs[1][0] ,
         \Sync_FFs[0][0] ;

  DFFRQX2M \Sync_FFs_reg[3][1]  ( .D(\Sync_FFs[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \Sync_FFs_reg[2][1]  ( .D(\Sync_FFs[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \Sync_FFs_reg[1][1]  ( .D(\Sync_FFs[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \Sync_FFs_reg[0][1]  ( .D(\Sync_FFs[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \Sync_FFs_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[3][0] ) );
  DFFRQX2M \Sync_FFs_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[2][0] ) );
  DFFRQX2M \Sync_FFs_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[1][0] ) );
  DFFRQX2M \Sync_FFs_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[0][0] ) );
endmodule


module BIT_SYNC_WIDTH4_STAGES2_1 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \Sync_FFs[3][0] , \Sync_FFs[2][0] , \Sync_FFs[1][0] ,
         \Sync_FFs[0][0] ;

  DFFRQX2M \Sync_FFs_reg[3][1]  ( .D(\Sync_FFs[3][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[3]) );
  DFFRQX2M \Sync_FFs_reg[2][1]  ( .D(\Sync_FFs[2][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[2]) );
  DFFRQX2M \Sync_FFs_reg[1][1]  ( .D(\Sync_FFs[1][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[1]) );
  DFFRQX2M \Sync_FFs_reg[0][1]  ( .D(\Sync_FFs[0][0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC[0]) );
  DFFRQX2M \Sync_FFs_reg[3][0]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[3][0] ) );
  DFFRQX2M \Sync_FFs_reg[2][0]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[2][0] ) );
  DFFRQX2M \Sync_FFs_reg[1][0]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[1][0] ) );
  DFFRQX2M \Sync_FFs_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \Sync_FFs[0][0] ) );
endmodule


module FIFO_WIDTH8_ADDRESS4_DEPTH8 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, 
        WR_DATA, FULL, EMPTY, RD_DATA );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2;
  wire   [3:0] wq2_rptr;
  wire   [2:0] w_addr;
  wire   [3:0] w_ptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] r_addr;
  wire   [3:0] r_ptr;

  FIFO_FULL_ADDRESS4 full_unit ( .W_INC(W_INC), .W_CLK(W_CLK), .W_RST(n1), 
        .WQ2_RPTR(wq2_rptr), .W_ADDR(w_addr), .W_PTR(w_ptr), .W_FULL(FULL) );
  FIFO_EMPTY_ADDRESS4 empty_unit ( .R_INC(R_INC), .R_CLK(R_CLK), .R_RST(R_RST), 
        .RQ2_WPTR(rq2_wptr), .R_ADDR(r_addr), .R_PTR(r_ptr), .R_EMPTY(EMPTY)
         );
  FIFO_MEM_WIDTH8_ADDRESS4_DEPTH8 mem_unit ( .W_CLK(W_CLK), .W_RST(n1), 
        .W_DATA(WR_DATA), .W_INC(W_INC), .W_FULL(FULL), .W_ADDR(w_addr), 
        .R_ADDR(r_addr), .R_DATA(RD_DATA) );
  BIT_SYNC_WIDTH4_STAGES2_0 bit_sync_1 ( .ASYNC(r_ptr), .CLK(W_CLK), .RST(n1), 
        .SYNC(wq2_rptr) );
  BIT_SYNC_WIDTH4_STAGES2_1 bit_sync_2 ( .ASYNC(w_ptr), .CLK(R_CLK), .RST(
        R_RST), .SYNC(rq2_wptr) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
endmodule


module PULSE_GEN_BLOCK ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   out_reg, in_reg;

  DFFRQX2M in_reg_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(in_reg) );
  DFFRQX2M out_reg_reg ( .D(in_reg), .CK(CLK), .RN(RST), .Q(out_reg) );
  NOR2BX2M U3 ( .AN(in_reg), .B(out_reg), .Y(PULSE_SIG) );
endmodule


module ClkDiv_RATIO8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO8_0 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, o_div_clk
 );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output o_div_clk;
  wire   N3, div_clk, toggle_low_flg, div_by_1_or_0, N10, N17, N18, N19, N20,
         N21, N22, N23, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7, n26,
         n27, n28, n29, n30, n31, n32;
  wire   [6:0] Counter;

  ClkDiv_RATIO8_0_DW01_inc_0 add_49 ( .A(Counter), .SUM({N23, N22, N21, N20, 
        N19, N18, N17}) );
  DFFRQX2M div_by_1_or_0_reg ( .D(n30), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        div_by_1_or_0) );
  DFFRQX2M div_clk_reg ( .D(n17), .CK(I_ref_clk), .RN(I_rst_n), .Q(div_clk) );
  DFFRQX2M toggle_low_flg_reg ( .D(n18), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        toggle_low_flg) );
  DFFRQX2M \Counter_reg[6]  ( .D(n19), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[6]) );
  DFFSQX2M \Counter_reg[0]  ( .D(n25), .CK(I_ref_clk), .SN(I_rst_n), .Q(
        Counter[0]) );
  DFFRQX2M \Counter_reg[3]  ( .D(n22), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[3]) );
  DFFRQX2M \Counter_reg[2]  ( .D(n23), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[2]) );
  DFFRQX2M \Counter_reg[5]  ( .D(n20), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[5]) );
  DFFRQX2M \Counter_reg[4]  ( .D(n21), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[4]) );
  DFFRQX2M \Counter_reg[1]  ( .D(n24), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[1]) );
  NOR2X2M U3 ( .A(n30), .B(N10), .Y(n12) );
  INVX2M U4 ( .A(n8), .Y(n30) );
  MX2X2M U5 ( .A(I_ref_clk), .B(div_clk), .S0(N3), .Y(o_div_clk) );
  NAND2X2M U6 ( .A(I_div_ratio[0]), .B(N10), .Y(n11) );
  NOR3X2M U7 ( .A(n30), .B(toggle_low_flg), .C(n11), .Y(n9) );
  NAND2X2M U8 ( .A(n13), .B(n14), .Y(n25) );
  AOI22X1M U9 ( .A0(N17), .A1(n12), .B0(Counter[0]), .B1(n30), .Y(n13) );
  AOI31XLM U10 ( .A0(n8), .A1(n31), .A2(N10), .B0(n9), .Y(n14) );
  NAND2BX2M U11 ( .AN(n9), .B(n10), .Y(n18) );
  OAI21X2M U12 ( .A0(n30), .A1(n11), .B0(toggle_low_flg), .Y(n10) );
  XNOR2X2M U13 ( .A(div_clk), .B(n1), .Y(n17) );
  NAND2X2M U14 ( .A(N10), .B(n8), .Y(n1) );
  AO22X1M U15 ( .A0(Counter[1]), .A1(n30), .B0(N18), .B1(n12), .Y(n24) );
  AO22X1M U16 ( .A0(Counter[2]), .A1(n30), .B0(N19), .B1(n12), .Y(n23) );
  AO22X1M U17 ( .A0(Counter[3]), .A1(n30), .B0(N20), .B1(n12), .Y(n22) );
  AO22X1M U18 ( .A0(Counter[4]), .A1(n30), .B0(N21), .B1(n12), .Y(n21) );
  AO22X1M U19 ( .A0(Counter[5]), .A1(n30), .B0(N22), .B1(n12), .Y(n20) );
  AO22X1M U20 ( .A0(Counter[6]), .A1(n30), .B0(N23), .B1(n12), .Y(n19) );
  AOI21X2M U21 ( .A0(n15), .A1(n16), .B0(n32), .Y(n8) );
  NOR4X1M U22 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n16) );
  NOR3X2M U23 ( .A(I_div_ratio[1]), .B(I_div_ratio[3]), .C(I_div_ratio[2]), 
        .Y(n15) );
  NOR2X2M U24 ( .A(div_by_1_or_0), .B(n32), .Y(N3) );
  INVX2M U25 ( .A(I_div_ratio[0]), .Y(n31) );
  INVX2M U26 ( .A(I_clk_en), .Y(n32) );
  XNOR2X1M U27 ( .A(I_div_ratio[4]), .B(Counter[3]), .Y(n7) );
  XNOR2X1M U28 ( .A(I_div_ratio[3]), .B(Counter[2]), .Y(n6) );
  NOR2BX1M U29 ( .AN(I_div_ratio[1]), .B(Counter[0]), .Y(n2) );
  OAI2B2X1M U30 ( .A1N(Counter[1]), .A0(n2), .B0(I_div_ratio[2]), .B1(n2), .Y(
        n5) );
  NOR2BX1M U31 ( .AN(Counter[0]), .B(I_div_ratio[1]), .Y(n3) );
  OAI2B2X1M U32 ( .A1N(I_div_ratio[2]), .A0(n3), .B0(Counter[1]), .B1(n3), .Y(
        n4) );
  NAND4X1M U33 ( .A(n7), .B(n6), .C(n5), .D(n4), .Y(n29) );
  CLKXOR2X2M U34 ( .A(I_div_ratio[7]), .B(Counter[6]), .Y(n28) );
  CLKXOR2X2M U35 ( .A(I_div_ratio[5]), .B(Counter[4]), .Y(n27) );
  CLKXOR2X2M U36 ( .A(I_div_ratio[6]), .B(Counter[5]), .Y(n26) );
  NOR4X1M U37 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N10) );
endmodule


module ClkDiv_RATIO8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO8_1 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, o_div_clk
 );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output o_div_clk;
  wire   N3, div_clk, toggle_low_flg, div_by_1_or_0, N10, N17, N18, N19, N20,
         N21, N22, N23, n1, n2, n3, n4, n5, n6, n7, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50;
  wire   [6:0] Counter;

  ClkDiv_RATIO8_1_DW01_inc_0 add_49 ( .A(Counter), .SUM({N23, N22, N21, N20, 
        N19, N18, N17}) );
  DFFRQX2M div_by_1_or_0_reg ( .D(n30), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        div_by_1_or_0) );
  DFFRQX2M div_clk_reg ( .D(n41), .CK(I_ref_clk), .RN(I_rst_n), .Q(div_clk) );
  DFFRQX2M toggle_low_flg_reg ( .D(n40), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        toggle_low_flg) );
  DFFRQX2M \Counter_reg[6]  ( .D(n39), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[6]) );
  DFFRQX2M \Counter_reg[3]  ( .D(n36), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[3]) );
  DFFRQX2M \Counter_reg[5]  ( .D(n38), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[5]) );
  DFFRQX2M \Counter_reg[4]  ( .D(n37), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[4]) );
  DFFSQX2M \Counter_reg[0]  ( .D(n33), .CK(I_ref_clk), .SN(I_rst_n), .Q(
        Counter[0]) );
  DFFRQX2M \Counter_reg[2]  ( .D(n35), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[2]) );
  DFFRQX2M \Counter_reg[1]  ( .D(n34), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        Counter[1]) );
  NOR2X2M U3 ( .A(n30), .B(N10), .Y(n46) );
  NAND2X2M U4 ( .A(I_div_ratio[0]), .B(N10), .Y(n47) );
  INVX2M U5 ( .A(n50), .Y(n30) );
  INVX2M U6 ( .A(I_div_ratio[0]), .Y(n31) );
  MX2X2M U7 ( .A(I_ref_clk), .B(div_clk), .S0(N3), .Y(o_div_clk) );
  NOR3X2M U8 ( .A(n30), .B(toggle_low_flg), .C(n47), .Y(n49) );
  NAND2X2M U9 ( .A(n45), .B(n44), .Y(n33) );
  AOI22X1M U10 ( .A0(N17), .A1(n46), .B0(Counter[0]), .B1(n30), .Y(n45) );
  AOI31XLM U11 ( .A0(n50), .A1(n31), .A2(N10), .B0(n49), .Y(n44) );
  NAND2BX2M U12 ( .AN(n49), .B(n48), .Y(n40) );
  OAI21X2M U13 ( .A0(n30), .A1(n47), .B0(toggle_low_flg), .Y(n48) );
  XNOR2X2M U14 ( .A(div_clk), .B(n1), .Y(n41) );
  NAND2X2M U15 ( .A(N10), .B(n50), .Y(n1) );
  AO22X1M U16 ( .A0(Counter[1]), .A1(n30), .B0(N18), .B1(n46), .Y(n34) );
  AO22X1M U17 ( .A0(Counter[2]), .A1(n30), .B0(N19), .B1(n46), .Y(n35) );
  AO22X1M U18 ( .A0(Counter[3]), .A1(n30), .B0(N20), .B1(n46), .Y(n36) );
  AO22X1M U19 ( .A0(Counter[4]), .A1(n30), .B0(N21), .B1(n46), .Y(n37) );
  AO22X1M U20 ( .A0(Counter[5]), .A1(n30), .B0(N22), .B1(n46), .Y(n38) );
  AO22X1M U21 ( .A0(Counter[6]), .A1(n30), .B0(N23), .B1(n46), .Y(n39) );
  AOI21X2M U22 ( .A0(n43), .A1(n42), .B0(n32), .Y(n50) );
  NOR4X1M U23 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n42) );
  NOR3X2M U24 ( .A(I_div_ratio[1]), .B(I_div_ratio[3]), .C(I_div_ratio[2]), 
        .Y(n43) );
  NOR2X2M U25 ( .A(div_by_1_or_0), .B(n32), .Y(N3) );
  INVX2M U26 ( .A(I_clk_en), .Y(n32) );
  XNOR2X1M U27 ( .A(I_div_ratio[4]), .B(Counter[3]), .Y(n7) );
  XNOR2X1M U28 ( .A(I_div_ratio[3]), .B(Counter[2]), .Y(n6) );
  NOR2BX1M U29 ( .AN(I_div_ratio[1]), .B(Counter[0]), .Y(n2) );
  OAI2B2X1M U30 ( .A1N(Counter[1]), .A0(n2), .B0(I_div_ratio[2]), .B1(n2), .Y(
        n5) );
  NOR2BX1M U31 ( .AN(Counter[0]), .B(I_div_ratio[1]), .Y(n3) );
  OAI2B2X1M U32 ( .A1N(I_div_ratio[2]), .A0(n3), .B0(Counter[1]), .B1(n3), .Y(
        n4) );
  NAND4X1M U33 ( .A(n7), .B(n6), .C(n5), .D(n4), .Y(n29) );
  CLKXOR2X2M U34 ( .A(I_div_ratio[7]), .B(Counter[6]), .Y(n28) );
  CLKXOR2X2M U35 ( .A(I_div_ratio[5]), .B(Counter[4]), .Y(n27) );
  CLKXOR2X2M U36 ( .A(I_div_ratio[6]), .B(Counter[5]), .Y(n26) );
  NOR4X1M U37 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N10) );
endmodule


module CUSTOM_MUX_D_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  OAI211X2M U13 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NOR3X2M U16 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR3X2M U17 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U18 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U19 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[1]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module SYS_TOP ( REF_CLK, RST, UART_CLK, RX_IN, TX_OUT, parity_error, 
        framing_error );
  input REF_CLK, RST, UART_CLK, RX_IN;
  output TX_OUT, parity_error, framing_error;
  wire   tx_clk, rx_clk, sync_rst_2, rx_data_valid, busy, f_empty, sync_rst_1,
         rx_sync_valid, rf_rd_data_vld, wren, rden, alu_en, alu_out_valid,
         fifo_full, fifo_data_vld, ALU_CLK, RD_INC, n1, n2, n3, n4, n5;
  wire   [7:0] uart_config;
  wire   [7:0] rx_p_data;
  wire   [7:0] fifo_data;
  wire   [7:0] rx_sync_data;
  wire   [7:0] rf_rd_data;
  wire   [3:0] rf_address;
  wire   [7:0] rf_w_data;
  wire   [3:0] alu_func;
  wire   [15:0] alu_out;
  wire   [7:0] in_data_fifo;
  wire   [7:0] OP_A;
  wire   [7:0] OP_B;
  wire   [7:0] division_ratio;
  wire   [7:0] rx_division_ratio;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;

  UART_TOP_D_WIDTH8 uart_unit ( .TX_CLK(tx_clk), .RX_CLK(rx_clk), .SYNC_RST(n4), .RX_IN(RX_IN), .TX_IN_VALID(n1), .TX_IN_P(fifo_data), .UART_CONFIG(
        uart_config[7:2]), .Par_en(uart_config[0]), .Par_type(uart_config[1]), 
        .RX_OUT_P(rx_p_data), .RX_OUT_V(rx_data_valid), .TX_OUT(TX_OUT), 
        .TX_OUT_V(busy), .parity_error(parity_error), .framing_error(
        framing_error) );
  DATA_SYNC_D_WIDTH8_STAGES2 data_sync_unit ( .CLK(REF_CLK), .RST(n2), 
        .bus_enable(rx_data_valid), .unsync_bus(rx_p_data), .sync_bus(
        rx_sync_data), .enable_pulse(rx_sync_valid) );
  SYS_CTRL_D_WIDTH8_FUNC_ALU4_ADDRESS4 sys_ctrl_unit ( .CLK(REF_CLK), .RST(n2), 
        .RX_D_VLD(rx_sync_valid), .OUT_VALID(alu_out_valid), .RX_P_DATA(
        rx_sync_data), .RD_DATA(rf_rd_data), .RD_DATA_VALID(rf_rd_data_vld), 
        .FIFO_FULL(fifo_full), .ALU_OUT({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, alu_out[7:0]}), .ALU_EN(alu_en), .ALU_FUNC(alu_func), 
        .Address(rf_address), .WrEn(wren), .RdEn(rden), .TX_P_DATA(
        in_data_fifo), .TX_D_VLD(fifo_data_vld), .WrData(rf_w_data) );
  Reg_file_ADDRESS4_D_WIDTH8_DEPTH8 reg_file_unit ( .clk(REF_CLK), .rst(n2), 
        .WrEn(wren), .RdEn(rden), .Address(rf_address), .WrData(rf_w_data), 
        .RdData(rf_rd_data), .RD_DATA_VALID(rf_rd_data_vld), .REG0(OP_A), 
        .REG1(OP_B), .REG2(uart_config), .REG3(division_ratio) );
  ALU_16_D_WIDTH8_FUN_WIDTH4 alu_unit ( .A(OP_A), .B(OP_B), .ENABLE(alu_en), 
        .CLK(ALU_CLK), .RST(n2), .ALU_FUN(alu_func), .OUT_VALID(alu_out_valid), 
        .ALU_OUT({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, alu_out[7:0]}) );
  CLK_GATE clk_gating_unit ( .CLK_EN(1'b1), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  RST_SYNC_STAGES2_0 RST_SYNC_1 ( .CLK(REF_CLK), .RST(RST), .SYNC_RST(
        sync_rst_1) );
  RST_SYNC_STAGES2_1 RST_SYNC_2 ( .CLK(UART_CLK), .RST(RST), .SYNC_RST(
        sync_rst_2) );
  FIFO_WIDTH8_ADDRESS4_DEPTH8 asynch_fifo ( .W_CLK(REF_CLK), .W_RST(n2), 
        .W_INC(fifo_data_vld), .R_CLK(tx_clk), .R_RST(n4), .R_INC(RD_INC), 
        .WR_DATA(in_data_fifo), .FULL(fifo_full), .EMPTY(f_empty), .RD_DATA(
        fifo_data) );
  PULSE_GEN_BLOCK pulse_gen_block ( .CLK(tx_clk), .RST(n4), .LVL_SIG(busy), 
        .PULSE_SIG(RD_INC) );
  ClkDiv_RATIO8_0 tx_clk_div ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(
        1'b1), .I_div_ratio(division_ratio), .o_div_clk(tx_clk) );
  ClkDiv_RATIO8_1 rx_clk_div ( .I_ref_clk(UART_CLK), .I_rst_n(n4), .I_clk_en(
        1'b1), .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, rx_division_ratio[3:0]}), 
        .o_div_clk(rx_clk) );
  CUSTOM_MUX_D_WIDTH8 custom_mux_unit ( .IN(uart_config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        rx_division_ratio[3:0]}) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  INVX2M U3 ( .A(f_empty), .Y(n1) );
  INVX4M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(sync_rst_2), .Y(n5) );
  INVX2M U6 ( .A(sync_rst_1), .Y(n3) );
endmodule

