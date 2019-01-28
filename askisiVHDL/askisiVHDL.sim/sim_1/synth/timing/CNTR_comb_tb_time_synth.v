// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Aug 30 18:51:55 2017
// Host        : Valia running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Valia/Downloads/5o/VHDL/ergasia/askisiVHDL/askisiVHDL.sim/sim_1/synth/timing/CNTR_comb_tb_time_synth.v
// Design      : datapath
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ADD
   (M,
    NPC,
    Q);
  output [29:0]M;
  input [29:0]NPC;
  input [27:0]Q;

  wire [29:0]M;
  wire [29:0]NPC;
  wire [27:0]Q;
  wire \bus_pc_OBUF[10]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[10]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[10]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[10]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[14]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[14]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[14]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[14]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[18]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[18]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[18]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[18]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[22]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[22]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[22]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[22]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[26]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[26]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[26]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[26]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[30]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[30]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[30]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[30]_inst_i_1_n_3 ;
  wire \bus_pc_OBUF[6]_inst_i_1_n_0 ;
  wire \bus_pc_OBUF[6]_inst_i_1_n_1 ;
  wire \bus_pc_OBUF[6]_inst_i_1_n_2 ;
  wire \bus_pc_OBUF[6]_inst_i_1_n_3 ;
  wire [3:0]\NLW_bus_pc_OBUF[31]_inst_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_bus_pc_OBUF[31]_inst_i_1_O_UNCONNECTED ;

  CARRY4 \bus_pc_OBUF[10]_inst_i_1 
       (.CI(\bus_pc_OBUF[6]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[10]_inst_i_1_n_0 ,\bus_pc_OBUF[10]_inst_i_1_n_1 ,\bus_pc_OBUF[10]_inst_i_1_n_2 ,\bus_pc_OBUF[10]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(M[8:5]),
        .S(NPC[8:5]));
  CARRY4 \bus_pc_OBUF[14]_inst_i_1 
       (.CI(\bus_pc_OBUF[10]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[14]_inst_i_1_n_0 ,\bus_pc_OBUF[14]_inst_i_1_n_1 ,\bus_pc_OBUF[14]_inst_i_1_n_2 ,\bus_pc_OBUF[14]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(M[12:9]),
        .S(NPC[12:9]));
  CARRY4 \bus_pc_OBUF[18]_inst_i_1 
       (.CI(\bus_pc_OBUF[14]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[18]_inst_i_1_n_0 ,\bus_pc_OBUF[18]_inst_i_1_n_1 ,\bus_pc_OBUF[18]_inst_i_1_n_2 ,\bus_pc_OBUF[18]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(M[16:13]),
        .S(NPC[16:13]));
  CARRY4 \bus_pc_OBUF[22]_inst_i_1 
       (.CI(\bus_pc_OBUF[18]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[22]_inst_i_1_n_0 ,\bus_pc_OBUF[22]_inst_i_1_n_1 ,\bus_pc_OBUF[22]_inst_i_1_n_2 ,\bus_pc_OBUF[22]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(M[20:17]),
        .S(NPC[20:17]));
  CARRY4 \bus_pc_OBUF[26]_inst_i_1 
       (.CI(\bus_pc_OBUF[22]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[26]_inst_i_1_n_0 ,\bus_pc_OBUF[26]_inst_i_1_n_1 ,\bus_pc_OBUF[26]_inst_i_1_n_2 ,\bus_pc_OBUF[26]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(M[24:21]),
        .S(NPC[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    \bus_pc_OBUF[2]_inst_i_1 
       (.I0(NPC[0]),
        .O(M[0]));
  CARRY4 \bus_pc_OBUF[30]_inst_i_1 
       (.CI(\bus_pc_OBUF[26]_inst_i_1_n_0 ),
        .CO({\bus_pc_OBUF[30]_inst_i_1_n_0 ,\bus_pc_OBUF[30]_inst_i_1_n_1 ,\bus_pc_OBUF[30]_inst_i_1_n_2 ,\bus_pc_OBUF[30]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(M[28:25]),
        .S(NPC[28:25]));
  CARRY4 \bus_pc_OBUF[31]_inst_i_1 
       (.CI(\bus_pc_OBUF[30]_inst_i_1_n_0 ),
        .CO(\NLW_bus_pc_OBUF[31]_inst_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bus_pc_OBUF[31]_inst_i_1_O_UNCONNECTED [3:1],M[29]}),
        .S({1'b0,1'b0,1'b0,NPC[29]}));
  CARRY4 \bus_pc_OBUF[6]_inst_i_1 
       (.CI(1'b0),
        .CO({\bus_pc_OBUF[6]_inst_i_1_n_0 ,\bus_pc_OBUF[6]_inst_i_1_n_1 ,\bus_pc_OBUF[6]_inst_i_1_n_2 ,\bus_pc_OBUF[6]_inst_i_1_n_3 }),
        .CYINIT(NPC[0]),
        .DI(Q[3:0]),
        .O(M[4:1]),
        .S(NPC[4:1]));
endmodule

module CNTR_fsm
   (pc,
    clock_IBUF_BUFG,
    clear_IBUF);
  output pc;
  input clock_IBUF_BUFG;
  input clear_IBUF;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire clear_IBUF;
  wire clock_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire pc;

  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear_IBUF),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear_IBUF),
        .D(1'b0),
        .Q(current_state[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clear_IBUF),
        .D(1'b0),
        .Q(current_state[2]));
  LUT3 #(
    .INIT(8'hA8)) 
    PC_write
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(pc));
endmodule

module FD16CE_MXILINX_R32
   (Q,
    D,
    clock,
    CLR);
  output [15:0]Q;
  input [15:0]D;
  input clock;
  input CLR;

  wire CLR;
  wire [15:0]D;
  wire [15:0]Q;
  wire clock;

  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q0
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[0]),
        .Q(Q[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q1
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[1]),
        .Q(Q[1]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q10
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[10]),
        .Q(Q[10]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q11
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[11]),
        .Q(Q[11]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q12
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[12]),
        .Q(Q[12]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q13
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[13]),
        .Q(Q[13]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q14
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[14]),
        .Q(Q[14]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q15
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[15]),
        .Q(Q[15]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q2
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[2]),
        .Q(Q[2]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q3
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[3]),
        .Q(Q[3]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q4
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[4]),
        .Q(Q[4]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q5
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[5]),
        .Q(Q[5]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q6
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[6]),
        .Q(Q[6]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q7
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[7]),
        .Q(Q[7]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q8
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[8]),
        .Q(Q[8]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q9
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "FD16CE_MXILINX_R32" *) 
module FD16CE_MXILINX_R32_0
   (Q,
    D,
    clock,
    CLR);
  output [15:0]Q;
  input [15:0]D;
  input clock;
  input CLR;

  wire CLR;
  wire [15:0]D;
  wire [15:0]Q;
  wire clock;

  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q0
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[0]),
        .Q(Q[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q1
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[1]),
        .Q(Q[1]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q10
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[10]),
        .Q(Q[10]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q11
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[11]),
        .Q(Q[11]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q12
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[12]),
        .Q(Q[12]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q13
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[13]),
        .Q(Q[13]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q14
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[14]),
        .Q(Q[14]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q15
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[15]),
        .Q(Q[15]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q2
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[2]),
        .Q(Q[2]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q3
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[3]),
        .Q(Q[3]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q4
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[4]),
        .Q(Q[4]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q5
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[5]),
        .Q(Q[5]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q6
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[6]),
        .Q(Q[6]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q7
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[7]),
        .Q(Q[7]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q8
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[8]),
        .Q(Q[8]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q9
       (.C(clock),
        .CE(1'b1),
        .CLR(CLR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module FD16CE_MXILINX_R32we
   (NPC,
    Q,
    pc,
    D,
    clock_IBUF_BUFG,
    clear_IBUF);
  output [13:0]NPC;
  output [14:0]Q;
  input pc;
  input [15:0]D;
  input clock_IBUF_BUFG;
  input clear_IBUF;

  wire [15:0]D;
  wire [13:0]NPC;
  wire [14:0]Q;
  wire clear_IBUF;
  wire clock_IBUF_BUFG;
  wire pc;

  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q0
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q1
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q10
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[10]),
        .Q(Q[9]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q11
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[11]),
        .Q(Q[10]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q12
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[12]),
        .Q(Q[11]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q13
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[13]),
        .Q(Q[12]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q14
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[14]),
        .Q(Q[13]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q15
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[15]),
        .Q(Q[14]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q2
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[2]),
        .Q(NPC[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q3
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[3]),
        .Q(Q[2]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q4
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[4]),
        .Q(Q[3]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q5
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[5]),
        .Q(Q[4]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q6
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[6]),
        .Q(Q[5]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q7
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[7]),
        .Q(Q[6]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q8
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[8]),
        .Q(Q[7]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q9
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[9]),
        .Q(Q[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[10]_inst_i_2 
       (.I0(Q[9]),
        .O(NPC[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[10]_inst_i_3 
       (.I0(Q[8]),
        .O(NPC[7]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[10]_inst_i_4 
       (.I0(Q[7]),
        .O(NPC[6]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[10]_inst_i_5 
       (.I0(Q[6]),
        .O(NPC[5]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[14]_inst_i_2 
       (.I0(Q[13]),
        .O(NPC[12]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[14]_inst_i_3 
       (.I0(Q[12]),
        .O(NPC[11]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[14]_inst_i_4 
       (.I0(Q[11]),
        .O(NPC[10]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[14]_inst_i_5 
       (.I0(Q[10]),
        .O(NPC[9]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[18]_inst_i_5 
       (.I0(Q[14]),
        .O(NPC[13]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[6]_inst_i_2 
       (.I0(Q[5]),
        .O(NPC[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[6]_inst_i_3 
       (.I0(Q[4]),
        .O(NPC[3]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[6]_inst_i_4 
       (.I0(Q[3]),
        .O(NPC[2]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[6]_inst_i_5 
       (.I0(Q[2]),
        .O(NPC[1]));
endmodule

(* ORIG_REF_NAME = "FD16CE_MXILINX_R32we" *) 
module FD16CE_MXILINX_R32we_1
   (NPC,
    Q,
    pc,
    D,
    clock_IBUF_BUFG,
    clear_IBUF);
  output [15:0]NPC;
  output [14:0]Q;
  input pc;
  input [15:0]D;
  input clock_IBUF_BUFG;
  input clear_IBUF;

  wire [15:0]D;
  wire [15:0]NPC;
  wire [14:0]Q;
  wire clear_IBUF;
  wire clock_IBUF_BUFG;
  wire pc;
  wire [31:31]pc_output;

  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q0
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q1
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q10
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[10]),
        .Q(Q[10]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q11
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[11]),
        .Q(Q[11]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q12
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[12]),
        .Q(Q[12]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q13
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[13]),
        .Q(Q[13]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q14
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[14]),
        .Q(Q[14]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q15
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[15]),
        .Q(pc_output));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q2
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q3
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q4
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[4]),
        .Q(Q[4]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q5
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[5]),
        .Q(Q[5]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q6
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[6]),
        .Q(Q[6]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q7
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[7]),
        .Q(Q[7]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q8
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[8]),
        .Q(Q[8]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    I_Q9
       (.C(clock_IBUF_BUFG),
        .CE(pc),
        .CLR(clear_IBUF),
        .D(D[9]),
        .Q(Q[9]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[18]_inst_i_2 
       (.I0(Q[2]),
        .O(NPC[2]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[18]_inst_i_3 
       (.I0(Q[1]),
        .O(NPC[1]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[18]_inst_i_4 
       (.I0(Q[0]),
        .O(NPC[0]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[22]_inst_i_2 
       (.I0(Q[6]),
        .O(NPC[6]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[22]_inst_i_3 
       (.I0(Q[5]),
        .O(NPC[5]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[22]_inst_i_4 
       (.I0(Q[4]),
        .O(NPC[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[22]_inst_i_5 
       (.I0(Q[3]),
        .O(NPC[3]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[26]_inst_i_2 
       (.I0(Q[10]),
        .O(NPC[10]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[26]_inst_i_3 
       (.I0(Q[9]),
        .O(NPC[9]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[26]_inst_i_4 
       (.I0(Q[8]),
        .O(NPC[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[26]_inst_i_5 
       (.I0(Q[7]),
        .O(NPC[7]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[30]_inst_i_2 
       (.I0(Q[14]),
        .O(NPC[14]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[30]_inst_i_3 
       (.I0(Q[13]),
        .O(NPC[13]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[30]_inst_i_4 
       (.I0(Q[12]),
        .O(NPC[12]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[30]_inst_i_5 
       (.I0(Q[11]),
        .O(NPC[11]));
  LUT1 #(
    .INIT(2'h2)) 
    \bus_pc_OBUF[31]_inst_i_2 
       (.I0(pc_output),
        .O(NPC[15]));
endmodule

module R32
   (Q,
    D,
    clock,
    CLR);
  output [31:0]Q;
  input [31:0]D;
  input clock;
  input CLR;

  wire CLR;
  wire [31:0]D;
  wire [31:0]Q;
  wire clock;

  (* HU_SET = "XLXI_1_30" *) 
  FD16CE_MXILINX_R32 XLXI_1
       (.CLR(CLR),
        .D(D[15:0]),
        .Q(Q[15:0]),
        .clock(clock));
  (* HU_SET = "XLXI_2_31" *) 
  FD16CE_MXILINX_R32_0 XLXI_2
       (.CLR(CLR),
        .D(D[31:16]),
        .Q(Q[31:16]),
        .clock(clock));
endmodule

module R32we
   (NPC,
    Q,
    pc,
    D,
    clock_IBUF_BUFG,
    clear_IBUF);
  output [29:0]NPC;
  output [29:0]Q;
  input pc;
  input [31:0]D;
  input clock_IBUF_BUFG;
  input clear_IBUF;

  wire [31:0]D;
  wire [29:0]NPC;
  wire [29:0]Q;
  wire clear_IBUF;
  wire clock_IBUF_BUFG;
  wire pc;

  (* HU_SET = "XLXI_1_28" *) 
  FD16CE_MXILINX_R32we XLXI_1
       (.D(D[15:0]),
        .NPC(NPC[13:0]),
        .Q(Q[14:0]),
        .clear_IBUF(clear_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .pc(pc));
  (* HU_SET = "XLXI_2_29" *) 
  FD16CE_MXILINX_R32we_1 XLXI_2
       (.D(D[31:16]),
        .NPC(NPC[29:14]),
        .Q(Q[29:15]),
        .clear_IBUF(clear_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .pc(pc));
endmodule

(* NotValidForBitStream *)
module datapath
   (clock,
    clear,
    bus_pc,
    opcode,
    function_output,
    alu_out,
    bus_W_out);
  input clock;
  input clear;
  inout [31:0]bus_pc;
  inout [5:0]opcode;
  inout [5:0]function_output;
  output [31:0]alu_out;
  output [31:0]bus_W_out;

  wire [31:0]IN0;
  wire U7_n_0;
  wire U7_n_1;
  wire U7_n_10;
  wire U7_n_11;
  wire U7_n_12;
  wire U7_n_13;
  wire U7_n_14;
  wire U7_n_15;
  wire U7_n_16;
  wire U7_n_17;
  wire U7_n_18;
  wire U7_n_19;
  wire U7_n_2;
  wire U7_n_20;
  wire U7_n_21;
  wire U7_n_22;
  wire U7_n_23;
  wire U7_n_24;
  wire U7_n_25;
  wire U7_n_26;
  wire U7_n_27;
  wire U7_n_28;
  wire U7_n_3;
  wire U7_n_4;
  wire U7_n_5;
  wire U7_n_6;
  wire U7_n_7;
  wire U7_n_8;
  wire U7_n_9;
  wire [31:0]alu_out;
  wire [31:0]bus_W_out;
  wire [31:0]bus_pc;
  wire [31:0]bus_pc_IBUF;
  wire clear;
  wire clear_IBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [5:0]function_output;
  wire [5:0]opcode;
  wire pc;
  wire [30:2]pc_output;

initial begin
 $sdf_annotate("CNTR_comb_tb_time_synth.sdf",,,,"tool_control");
end
  CNTR_fsm U5
       (.clear_IBUF(clear_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .pc(pc));
  R32we U7
       (.D(IN0),
        .NPC({U7_n_0,U7_n_1,U7_n_2,U7_n_3,U7_n_4,U7_n_5,U7_n_6,U7_n_7,U7_n_8,U7_n_9,U7_n_10,U7_n_11,U7_n_12,U7_n_13,U7_n_14,U7_n_15,U7_n_16,U7_n_17,U7_n_18,U7_n_19,U7_n_20,U7_n_21,U7_n_22,U7_n_23,U7_n_24,U7_n_25,U7_n_26,U7_n_27,U7_n_28,pc_output[2]}),
        .Q({pc_output[30:3],bus_pc_IBUF[1:0]}),
        .clear_IBUF(clear_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .pc(pc));
  ADD U8
       (.M(bus_pc_IBUF[31:2]),
        .NPC({U7_n_0,U7_n_1,U7_n_2,U7_n_3,U7_n_4,U7_n_5,U7_n_6,U7_n_7,U7_n_8,U7_n_9,U7_n_10,U7_n_11,U7_n_12,U7_n_13,U7_n_14,U7_n_15,U7_n_16,U7_n_17,U7_n_18,U7_n_19,U7_n_20,U7_n_21,U7_n_22,U7_n_23,U7_n_24,U7_n_25,U7_n_26,U7_n_27,U7_n_28,pc_output[2]}),
        .Q(pc_output[30:3]));
  R32 U9
       (.CLR(clear_IBUF),
        .D(bus_pc_IBUF),
        .Q(IN0),
        .clock(clock_IBUF_BUFG));
  OBUF \alu_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(alu_out[0]));
  OBUF \alu_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(alu_out[10]));
  OBUF \alu_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(alu_out[11]));
  OBUF \alu_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(alu_out[12]));
  OBUF \alu_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(alu_out[13]));
  OBUF \alu_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(alu_out[14]));
  OBUF \alu_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(alu_out[15]));
  OBUF \alu_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(alu_out[16]));
  OBUF \alu_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(alu_out[17]));
  OBUF \alu_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(alu_out[18]));
  OBUF \alu_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(alu_out[19]));
  OBUF \alu_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(alu_out[1]));
  OBUF \alu_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(alu_out[20]));
  OBUF \alu_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(alu_out[21]));
  OBUF \alu_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(alu_out[22]));
  OBUF \alu_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(alu_out[23]));
  OBUF \alu_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(alu_out[24]));
  OBUF \alu_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(alu_out[25]));
  OBUF \alu_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(alu_out[26]));
  OBUF \alu_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(alu_out[27]));
  OBUF \alu_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(alu_out[28]));
  OBUF \alu_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(alu_out[29]));
  OBUF \alu_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(alu_out[2]));
  OBUF \alu_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(alu_out[30]));
  OBUF \alu_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(alu_out[31]));
  OBUF \alu_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(alu_out[3]));
  OBUF \alu_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(alu_out[4]));
  OBUF \alu_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(alu_out[5]));
  OBUF \alu_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(alu_out[6]));
  OBUF \alu_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(alu_out[7]));
  OBUF \alu_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(alu_out[8]));
  OBUF \alu_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(alu_out[9]));
  OBUF \bus_W_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(bus_W_out[0]));
  OBUF \bus_W_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(bus_W_out[10]));
  OBUF \bus_W_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(bus_W_out[11]));
  OBUF \bus_W_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(bus_W_out[12]));
  OBUF \bus_W_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(bus_W_out[13]));
  OBUF \bus_W_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(bus_W_out[14]));
  OBUF \bus_W_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(bus_W_out[15]));
  OBUF \bus_W_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(bus_W_out[16]));
  OBUF \bus_W_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(bus_W_out[17]));
  OBUF \bus_W_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(bus_W_out[18]));
  OBUF \bus_W_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(bus_W_out[19]));
  OBUF \bus_W_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(bus_W_out[1]));
  OBUF \bus_W_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(bus_W_out[20]));
  OBUF \bus_W_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(bus_W_out[21]));
  OBUF \bus_W_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(bus_W_out[22]));
  OBUF \bus_W_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(bus_W_out[23]));
  OBUF \bus_W_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(bus_W_out[24]));
  OBUF \bus_W_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(bus_W_out[25]));
  OBUF \bus_W_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(bus_W_out[26]));
  OBUF \bus_W_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(bus_W_out[27]));
  OBUF \bus_W_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(bus_W_out[28]));
  OBUF \bus_W_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(bus_W_out[29]));
  OBUF \bus_W_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(bus_W_out[2]));
  OBUF \bus_W_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(bus_W_out[30]));
  OBUF \bus_W_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(bus_W_out[31]));
  OBUF \bus_W_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(bus_W_out[3]));
  OBUF \bus_W_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(bus_W_out[4]));
  OBUF \bus_W_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(bus_W_out[5]));
  OBUF \bus_W_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(bus_W_out[6]));
  OBUF \bus_W_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(bus_W_out[7]));
  OBUF \bus_W_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(bus_W_out[8]));
  OBUF \bus_W_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(bus_W_out[9]));
  OBUF \bus_pc_OBUF[0]_inst 
       (.I(bus_pc_IBUF[0]),
        .O(bus_pc[0]));
  OBUF \bus_pc_OBUF[10]_inst 
       (.I(bus_pc_IBUF[10]),
        .O(bus_pc[10]));
  OBUF \bus_pc_OBUF[11]_inst 
       (.I(bus_pc_IBUF[11]),
        .O(bus_pc[11]));
  OBUF \bus_pc_OBUF[12]_inst 
       (.I(bus_pc_IBUF[12]),
        .O(bus_pc[12]));
  OBUF \bus_pc_OBUF[13]_inst 
       (.I(bus_pc_IBUF[13]),
        .O(bus_pc[13]));
  OBUF \bus_pc_OBUF[14]_inst 
       (.I(bus_pc_IBUF[14]),
        .O(bus_pc[14]));
  OBUF \bus_pc_OBUF[15]_inst 
       (.I(bus_pc_IBUF[15]),
        .O(bus_pc[15]));
  OBUF \bus_pc_OBUF[16]_inst 
       (.I(bus_pc_IBUF[16]),
        .O(bus_pc[16]));
  OBUF \bus_pc_OBUF[17]_inst 
       (.I(bus_pc_IBUF[17]),
        .O(bus_pc[17]));
  OBUF \bus_pc_OBUF[18]_inst 
       (.I(bus_pc_IBUF[18]),
        .O(bus_pc[18]));
  OBUF \bus_pc_OBUF[19]_inst 
       (.I(bus_pc_IBUF[19]),
        .O(bus_pc[19]));
  OBUF \bus_pc_OBUF[1]_inst 
       (.I(bus_pc_IBUF[1]),
        .O(bus_pc[1]));
  OBUF \bus_pc_OBUF[20]_inst 
       (.I(bus_pc_IBUF[20]),
        .O(bus_pc[20]));
  OBUF \bus_pc_OBUF[21]_inst 
       (.I(bus_pc_IBUF[21]),
        .O(bus_pc[21]));
  OBUF \bus_pc_OBUF[22]_inst 
       (.I(bus_pc_IBUF[22]),
        .O(bus_pc[22]));
  OBUF \bus_pc_OBUF[23]_inst 
       (.I(bus_pc_IBUF[23]),
        .O(bus_pc[23]));
  OBUF \bus_pc_OBUF[24]_inst 
       (.I(bus_pc_IBUF[24]),
        .O(bus_pc[24]));
  OBUF \bus_pc_OBUF[25]_inst 
       (.I(bus_pc_IBUF[25]),
        .O(bus_pc[25]));
  OBUF \bus_pc_OBUF[26]_inst 
       (.I(bus_pc_IBUF[26]),
        .O(bus_pc[26]));
  OBUF \bus_pc_OBUF[27]_inst 
       (.I(bus_pc_IBUF[27]),
        .O(bus_pc[27]));
  OBUF \bus_pc_OBUF[28]_inst 
       (.I(bus_pc_IBUF[28]),
        .O(bus_pc[28]));
  OBUF \bus_pc_OBUF[29]_inst 
       (.I(bus_pc_IBUF[29]),
        .O(bus_pc[29]));
  OBUF \bus_pc_OBUF[2]_inst 
       (.I(bus_pc_IBUF[2]),
        .O(bus_pc[2]));
  OBUF \bus_pc_OBUF[30]_inst 
       (.I(bus_pc_IBUF[30]),
        .O(bus_pc[30]));
  OBUF \bus_pc_OBUF[31]_inst 
       (.I(bus_pc_IBUF[31]),
        .O(bus_pc[31]));
  OBUF \bus_pc_OBUF[3]_inst 
       (.I(bus_pc_IBUF[3]),
        .O(bus_pc[3]));
  OBUF \bus_pc_OBUF[4]_inst 
       (.I(bus_pc_IBUF[4]),
        .O(bus_pc[4]));
  OBUF \bus_pc_OBUF[5]_inst 
       (.I(bus_pc_IBUF[5]),
        .O(bus_pc[5]));
  OBUF \bus_pc_OBUF[6]_inst 
       (.I(bus_pc_IBUF[6]),
        .O(bus_pc[6]));
  OBUF \bus_pc_OBUF[7]_inst 
       (.I(bus_pc_IBUF[7]),
        .O(bus_pc[7]));
  OBUF \bus_pc_OBUF[8]_inst 
       (.I(bus_pc_IBUF[8]),
        .O(bus_pc[8]));
  OBUF \bus_pc_OBUF[9]_inst 
       (.I(bus_pc_IBUF[9]),
        .O(bus_pc[9]));
  IBUF clear_IBUF_inst
       (.I(clear),
        .O(clear_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  OBUF \function_output_OBUF[0]_inst 
       (.I(1'b0),
        .O(function_output[0]));
  OBUF \function_output_OBUF[1]_inst 
       (.I(1'b0),
        .O(function_output[1]));
  OBUF \function_output_OBUF[2]_inst 
       (.I(1'b0),
        .O(function_output[2]));
  OBUF \function_output_OBUF[3]_inst 
       (.I(1'b0),
        .O(function_output[3]));
  OBUF \function_output_OBUF[4]_inst 
       (.I(1'b0),
        .O(function_output[4]));
  OBUF \function_output_OBUF[5]_inst 
       (.I(1'b0),
        .O(function_output[5]));
  OBUF \opcode_OBUF[0]_inst 
       (.I(1'b0),
        .O(opcode[0]));
  OBUF \opcode_OBUF[1]_inst 
       (.I(1'b0),
        .O(opcode[1]));
  OBUF \opcode_OBUF[2]_inst 
       (.I(1'b0),
        .O(opcode[2]));
  OBUF \opcode_OBUF[3]_inst 
       (.I(1'b0),
        .O(opcode[3]));
  OBUF \opcode_OBUF[4]_inst 
       (.I(1'b0),
        .O(opcode[4]));
  OBUF \opcode_OBUF[5]_inst 
       (.I(1'b0),
        .O(opcode[5]));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
