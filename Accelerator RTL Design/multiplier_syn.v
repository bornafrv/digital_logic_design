// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: multiplier.v
// Megafunction Name(s):
// 			lpm_mult
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 22.1std.2 Build 922 07/20/2023 SC Lite Edition
// ************************************************************


//Copyright (C) 2023  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


//lpm_mult DEVICE_FAMILY="Cyclone IV GX" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTHA=16 LPM_WIDTHB=16 LPM_WIDTHP=32 MAXIMIZE_SPEED=5 dataa datab result
//VERSION_BEGIN 22.1 cbx_cycloneii 2023:07:21:07:12:21:SC cbx_lpm_add_sub 2023:07:21:07:12:21:SC cbx_lpm_mult 2023:07:21:07:12:21:SC cbx_mgl 2023:07:21:07:12:36:SC cbx_nadder 2023:07:21:07:12:21:SC cbx_padd 2023:07:21:07:12:21:SC cbx_stratix 2023:07:21:07:12:21:SC cbx_stratixii 2023:07:21:07:12:21:SC cbx_util_mgl 2023:07:21:07:12:21:SC  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = dsp_9bit 2 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  multiplier_mult
	( 
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   [15:0]  dataa;
	input   [15:0]  datab;
	output   [31:0]  result;

	wire  [31:0]   wire_mac_mult1_dataout;
	wire  [31:0]   wire_mac_out2_dataout;

	cycloneiv_mac_mult   mac_mult1
	( 
	.dataa({dataa}),
	.datab({datab}),
	.dataout(wire_mac_mult1_dataout),
	.signa(1'b0),
	.signb(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clk(1'b1),
	.ena(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_mult1.dataa_clock = "none",
		mac_mult1.dataa_width = 16,
		mac_mult1.datab_clock = "none",
		mac_mult1.datab_width = 16,
		mac_mult1.signa_clock = "none",
		mac_mult1.signb_clock = "none",
		mac_mult1.lpm_type = "cycloneiv_mac_mult";
	cycloneiv_mac_out   mac_out2
	( 
	.dataa(wire_mac_mult1_dataout),
	.dataout(wire_mac_out2_dataout)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clk(1'b1),
	.ena(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_out2.dataa_width = 32,
		mac_out2.output_clock = "none",
		mac_out2.lpm_type = "cycloneiv_mac_out";
	assign
		result = wire_mac_out2_dataout[31:0];
endmodule //multiplier_mult
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module multiplier (
	dataa,
	datab,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	[15:0]  dataa;
	input	[15:0]  datab;
	output	[31:0]  result;

	wire [31:0] sub_wire0;
	wire [31:0] result = sub_wire0[31:0];

	multiplier_mult	multiplier_mult_component (
				.dataa (dataa),
				.datab (datab),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "0"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SignedMult NUMERIC "0"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
// Retrieval info: PRIVATE: WidthA NUMERIC "16"
// Retrieval info: PRIVATE: WidthB NUMERIC "16"
// Retrieval info: PRIVATE: WidthP NUMERIC "32"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "0"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=5"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "16"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "16"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "32"
// Retrieval info: USED_PORT: dataa 0 0 16 0 INPUT NODEFVAL "dataa[15..0]"
// Retrieval info: USED_PORT: datab 0 0 16 0 INPUT NODEFVAL "datab[15..0]"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @dataa 0 0 16 0 dataa 0 0 16 0
// Retrieval info: CONNECT: @datab 0 0 16 0 datab 0 0 16 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
