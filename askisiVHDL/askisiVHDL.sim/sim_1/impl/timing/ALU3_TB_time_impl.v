// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Aug 30 19:22:05 2017
// Host        : Valia running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Valia/Downloads/5o/VHDL/ergasia/askisiVHDL/askisiVHDL.sim/sim_1/impl/timing/ALU3_TB_time_impl.v
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

  wire ONE;
  wire \bus_pc_OBUF[10]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[14]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[18]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[22]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[26]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[30]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[31]_inst_i_1_GND_1 ;
  wire \bus_pc_OBUF[6]_inst_i_1_GND_1 ;

  assign M[29] = \bus_pc_OBUF[31]_inst_i_1_GND_1 ;
  assign M[28] = \bus_pc_OBUF[30]_inst_i_1_GND_1 ;
  assign M[27] = \bus_pc_OBUF[30]_inst_i_1_GND_1 ;
  assign M[26] = \bus_pc_OBUF[30]_inst_i_1_GND_1 ;
  assign M[25] = \bus_pc_OBUF[30]_inst_i_1_GND_1 ;
  assign M[24] = \bus_pc_OBUF[26]_inst_i_1_GND_1 ;
  assign M[23] = \bus_pc_OBUF[26]_inst_i_1_GND_1 ;
  assign M[22] = \bus_pc_OBUF[26]_inst_i_1_GND_1 ;
  assign M[21] = \bus_pc_OBUF[26]_inst_i_1_GND_1 ;
  assign M[20] = \bus_pc_OBUF[22]_inst_i_1_GND_1 ;
  assign M[19] = \bus_pc_OBUF[22]_inst_i_1_GND_1 ;
  assign M[18] = \bus_pc_OBUF[22]_inst_i_1_GND_1 ;
  assign M[17] = \bus_pc_OBUF[22]_inst_i_1_GND_1 ;
  assign M[16] = \bus_pc_OBUF[18]_inst_i_1_GND_1 ;
  assign M[15] = \bus_pc_OBUF[18]_inst_i_1_GND_1 ;
  assign M[14] = \bus_pc_OBUF[18]_inst_i_1_GND_1 ;
  assign M[13] = \bus_pc_OBUF[18]_inst_i_1_GND_1 ;
  assign M[12] = \bus_pc_OBUF[14]_inst_i_1_GND_1 ;
  assign M[11] = \bus_pc_OBUF[14]_inst_i_1_GND_1 ;
  assign M[10] = \bus_pc_OBUF[14]_inst_i_1_GND_1 ;
  assign M[9] = \bus_pc_OBUF[14]_inst_i_1_GND_1 ;
  assign M[8] = \bus_pc_OBUF[10]_inst_i_1_GND_1 ;
  assign M[7] = \bus_pc_OBUF[10]_inst_i_1_GND_1 ;
  assign M[6] = \bus_pc_OBUF[10]_inst_i_1_GND_1 ;
  assign M[5] = \bus_pc_OBUF[10]_inst_i_1_GND_1 ;
  assign M[4] = \bus_pc_OBUF[6]_inst_i_1_GND_1 ;
  assign M[3] = \bus_pc_OBUF[6]_inst_i_1_GND_1 ;
  assign M[2] = \bus_pc_OBUF[6]_inst_i_1_GND_1 ;
  assign M[1] = \bus_pc_OBUF[6]_inst_i_1_GND_1 ;
  assign M[0] = ONE;
  VCC VCC
       (.P(ONE));
  GND \bus_pc_OBUF[10]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[10]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[14]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[14]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[18]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[18]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[22]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[22]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[26]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[26]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[30]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[30]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[31]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[31]_inst_i_1_GND_1 ));
  GND \bus_pc_OBUF[6]_inst_i_1_GND 
       (.G(\bus_pc_OBUF[6]_inst_i_1_GND_1 ));
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

  wire ZERO_14;
  wire ZERO_15;

  assign Q[1] = ZERO_14;
  assign Q[0] = ZERO_15;
  GND GND_14
       (.G(ZERO_14));
  GND GND_15
       (.G(ZERO_15));
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

  wire [29:0]Q;
  wire NLW_XLXI_1_clear_IBUF_UNCONNECTED;
  wire NLW_XLXI_1_clock_IBUF_BUFG_UNCONNECTED;
  wire NLW_XLXI_1_pc_UNCONNECTED;
  wire [15:0]NLW_XLXI_1_D_UNCONNECTED;
  wire [13:0]NLW_XLXI_1_NPC_UNCONNECTED;
  wire [14:2]NLW_XLXI_1_Q_UNCONNECTED;

  (* HU_SET = "XLXI_1_28" *) 
  FD16CE_MXILINX_R32we XLXI_1
       (.D(NLW_XLXI_1_D_UNCONNECTED[15:0]),
        .NPC(NLW_XLXI_1_NPC_UNCONNECTED[13:0]),
        .Q({NLW_XLXI_1_Q_UNCONNECTED[14:2],Q[1:0]}),
        .clear_IBUF(NLW_XLXI_1_clear_IBUF_UNCONNECTED),
        .clock_IBUF_BUFG(NLW_XLXI_1_clock_IBUF_BUFG_UNCONNECTED),
        .pc(NLW_XLXI_1_pc_UNCONNECTED));
endmodule

(* ECO_CHECKSUM = "3d9515ac" *) 
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

  wire [31:0]alu_out;
  wire [31:0]bus_W_out;
  wire [31:0]bus_pc;
  wire [31:0]bus_pc_IBUF;
  wire [5:0]function_output;
  wire [5:0]opcode;
  wire NLW_U7_clear_IBUF_UNCONNECTED;
  wire NLW_U7_clock_IBUF_BUFG_UNCONNECTED;
  wire NLW_U7_pc_UNCONNECTED;
  wire [31:0]NLW_U7_D_UNCONNECTED;
  wire [29:0]NLW_U7_NPC_UNCONNECTED;
  wire [29:2]NLW_U7_Q_UNCONNECTED;
  wire [29:0]NLW_U8_NPC_UNCONNECTED;
  wire [27:0]NLW_U8_Q_UNCONNECTED;

initial begin
 $sdf_annotate("ALU3_TB_time_impl.sdf",,,,"tool_control");
end
  R32we U7
       (.D(NLW_U7_D_UNCONNECTED[31:0]),
        .NPC(NLW_U7_NPC_UNCONNECTED[29:0]),
        .Q({NLW_U7_Q_UNCONNECTED[29:2],bus_pc_IBUF[1:0]}),
        .clear_IBUF(NLW_U7_clear_IBUF_UNCONNECTED),
        .clock_IBUF_BUFG(NLW_U7_clock_IBUF_BUFG_UNCONNECTED),
        .pc(NLW_U7_pc_UNCONNECTED));
  ADD U8
       (.M(bus_pc_IBUF[31:2]),
        .NPC(NLW_U8_NPC_UNCONNECTED[29:0]),
        .Q(NLW_U8_Q_UNCONNECTED[27:0]));
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
