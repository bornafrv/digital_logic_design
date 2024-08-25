// megafunction wizard: %LPM_COUNTER%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_COUNTER 

// ============================================================
// File Name: downCounter.v
// Megafunction Name(s):
// 			LPM_COUNTER
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


//lpm_counter DEVICE_FAMILY="Cyclone IV GX" lpm_direction="DOWN" lpm_port_updown="PORT_UNUSED" lpm_width=8 aclr clock cnt_en cout data q sload
//VERSION_BEGIN 22.1 cbx_cycloneii 2023:07:21:07:12:21:SC cbx_lpm_add_sub 2023:07:21:07:12:21:SC cbx_lpm_compare 2023:07:21:07:12:21:SC cbx_lpm_counter 2023:07:21:07:12:21:SC cbx_lpm_decode 2023:07:21:07:12:20:SC cbx_mgl 2023:07:21:07:12:36:SC cbx_nadder 2023:07:21:07:12:21:SC cbx_stratix 2023:07:21:07:12:21:SC cbx_stratixii 2023:07:21:07:12:21:SC  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 8 reg 8 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  downCounter_cntr
	( 
	aclr,
	clock,
	cnt_en,
	cout,
	data,
	q,
	sload) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   cnt_en;
	output   cout;
	input   [7:0]  data;
	output   [7:0]  q;
	input   sload;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   cnt_en;
	tri0   [7:0]  data;
	tri0   sload;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [0:0]   wire_counter_comb_bita_0combout;
	wire  [0:0]   wire_counter_comb_bita_1combout;
	wire  [0:0]   wire_counter_comb_bita_2combout;
	wire  [0:0]   wire_counter_comb_bita_3combout;
	wire  [0:0]   wire_counter_comb_bita_4combout;
	wire  [0:0]   wire_counter_comb_bita_5combout;
	wire  [0:0]   wire_counter_comb_bita_6combout;
	wire  [0:0]   wire_counter_comb_bita_7combout;
	wire  [0:0]   wire_counter_comb_bita_0cout;
	wire  [0:0]   wire_counter_comb_bita_1cout;
	wire  [0:0]   wire_counter_comb_bita_2cout;
	wire  [0:0]   wire_counter_comb_bita_3cout;
	wire  [0:0]   wire_counter_comb_bita_4cout;
	wire  [0:0]   wire_counter_comb_bita_5cout;
	wire  [0:0]   wire_counter_comb_bita_6cout;
	wire  [0:0]   wire_counter_comb_bita_7cout;
	wire	[7:0]	wire_counter_reg_bit_d;
	wire	[7:0]	wire_counter_reg_bit_asdata;
	reg	[7:0]	counter_reg_bit;
	wire	[7:0]	wire_counter_reg_bit_ena;
	wire	[7:0]	wire_counter_reg_bit_sload;
	wire  aclr_actual;
	wire clk_en;
	wire  cout_actual;
	wire  external_cin;
	wire  [7:0]  s_val;
	wire  [7:0]  safe_q;
	wire sclr;
	wire sset;
	wire  time_to_clear;
	wire  updown_dir;

	cycloneiv_lcell_comb   counter_comb_bita_0
	( 
	.cin(external_cin),
	.combout(wire_counter_comb_bita_0combout[0:0]),
	.cout(wire_counter_comb_bita_0cout[0:0]),
	.dataa(counter_reg_bit[0]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_0.lut_mask = 16'h5A90,
		counter_comb_bita_0.sum_lutc_input = "cin",
		counter_comb_bita_0.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_1
	( 
	.cin(wire_counter_comb_bita_0cout[0:0]),
	.combout(wire_counter_comb_bita_1combout[0:0]),
	.cout(wire_counter_comb_bita_1cout[0:0]),
	.dataa(counter_reg_bit[1]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_1.lut_mask = 16'h5A90,
		counter_comb_bita_1.sum_lutc_input = "cin",
		counter_comb_bita_1.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_2
	( 
	.cin(wire_counter_comb_bita_1cout[0:0]),
	.combout(wire_counter_comb_bita_2combout[0:0]),
	.cout(wire_counter_comb_bita_2cout[0:0]),
	.dataa(counter_reg_bit[2]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_2.lut_mask = 16'h5A90,
		counter_comb_bita_2.sum_lutc_input = "cin",
		counter_comb_bita_2.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_3
	( 
	.cin(wire_counter_comb_bita_2cout[0:0]),
	.combout(wire_counter_comb_bita_3combout[0:0]),
	.cout(wire_counter_comb_bita_3cout[0:0]),
	.dataa(counter_reg_bit[3]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_3.lut_mask = 16'h5A90,
		counter_comb_bita_3.sum_lutc_input = "cin",
		counter_comb_bita_3.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_4
	( 
	.cin(wire_counter_comb_bita_3cout[0:0]),
	.combout(wire_counter_comb_bita_4combout[0:0]),
	.cout(wire_counter_comb_bita_4cout[0:0]),
	.dataa(counter_reg_bit[4]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_4.lut_mask = 16'h5A90,
		counter_comb_bita_4.sum_lutc_input = "cin",
		counter_comb_bita_4.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_5
	( 
	.cin(wire_counter_comb_bita_4cout[0:0]),
	.combout(wire_counter_comb_bita_5combout[0:0]),
	.cout(wire_counter_comb_bita_5cout[0:0]),
	.dataa(counter_reg_bit[5]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_5.lut_mask = 16'h5A90,
		counter_comb_bita_5.sum_lutc_input = "cin",
		counter_comb_bita_5.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_6
	( 
	.cin(wire_counter_comb_bita_5cout[0:0]),
	.combout(wire_counter_comb_bita_6combout[0:0]),
	.cout(wire_counter_comb_bita_6cout[0:0]),
	.dataa(counter_reg_bit[6]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_6.lut_mask = 16'h5A90,
		counter_comb_bita_6.sum_lutc_input = "cin",
		counter_comb_bita_6.lpm_type = "cycloneiv_lcell_comb";
	cycloneiv_lcell_comb   counter_comb_bita_7
	( 
	.cin(wire_counter_comb_bita_6cout[0:0]),
	.combout(wire_counter_comb_bita_7combout[0:0]),
	.cout(wire_counter_comb_bita_7cout[0:0]),
	.dataa(counter_reg_bit[7]),
	.datab(updown_dir),
	.datad(1'b1),
	.datac(1'b0)
	);
	defparam
		counter_comb_bita_7.lut_mask = 16'h5A90,
		counter_comb_bita_7.sum_lutc_input = "cin",
		counter_comb_bita_7.lpm_type = "cycloneiv_lcell_comb";
	// synopsys translate_off
	initial
		counter_reg_bit[0:0] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[0:0] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[0:0] == 1'b1) 
			if (wire_counter_reg_bit_sload[0:0] == 1'b1) counter_reg_bit[0:0] <= wire_counter_reg_bit_asdata[0:0];
			else  counter_reg_bit[0:0] <= wire_counter_reg_bit_d[0:0];
	// synopsys translate_off
	initial
		counter_reg_bit[1:1] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[1:1] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[1:1] == 1'b1) 
			if (wire_counter_reg_bit_sload[1:1] == 1'b1) counter_reg_bit[1:1] <= wire_counter_reg_bit_asdata[1:1];
			else  counter_reg_bit[1:1] <= wire_counter_reg_bit_d[1:1];
	// synopsys translate_off
	initial
		counter_reg_bit[2:2] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[2:2] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[2:2] == 1'b1) 
			if (wire_counter_reg_bit_sload[2:2] == 1'b1) counter_reg_bit[2:2] <= wire_counter_reg_bit_asdata[2:2];
			else  counter_reg_bit[2:2] <= wire_counter_reg_bit_d[2:2];
	// synopsys translate_off
	initial
		counter_reg_bit[3:3] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[3:3] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[3:3] == 1'b1) 
			if (wire_counter_reg_bit_sload[3:3] == 1'b1) counter_reg_bit[3:3] <= wire_counter_reg_bit_asdata[3:3];
			else  counter_reg_bit[3:3] <= wire_counter_reg_bit_d[3:3];
	// synopsys translate_off
	initial
		counter_reg_bit[4:4] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[4:4] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[4:4] == 1'b1) 
			if (wire_counter_reg_bit_sload[4:4] == 1'b1) counter_reg_bit[4:4] <= wire_counter_reg_bit_asdata[4:4];
			else  counter_reg_bit[4:4] <= wire_counter_reg_bit_d[4:4];
	// synopsys translate_off
	initial
		counter_reg_bit[5:5] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[5:5] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[5:5] == 1'b1) 
			if (wire_counter_reg_bit_sload[5:5] == 1'b1) counter_reg_bit[5:5] <= wire_counter_reg_bit_asdata[5:5];
			else  counter_reg_bit[5:5] <= wire_counter_reg_bit_d[5:5];
	// synopsys translate_off
	initial
		counter_reg_bit[6:6] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[6:6] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[6:6] == 1'b1) 
			if (wire_counter_reg_bit_sload[6:6] == 1'b1) counter_reg_bit[6:6] <= wire_counter_reg_bit_asdata[6:6];
			else  counter_reg_bit[6:6] <= wire_counter_reg_bit_d[6:6];
	// synopsys translate_off
	initial
		counter_reg_bit[7:7] = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr_actual)
		if (aclr_actual == 1'b1) counter_reg_bit[7:7] <= 1'b0;
		else if  (wire_counter_reg_bit_ena[7:7] == 1'b1) 
			if (wire_counter_reg_bit_sload[7:7] == 1'b1) counter_reg_bit[7:7] <= wire_counter_reg_bit_asdata[7:7];
			else  counter_reg_bit[7:7] <= wire_counter_reg_bit_d[7:7];
	assign
		wire_counter_reg_bit_asdata = ({8{(~ sclr)}} & (({8{sset}} & s_val) | ({8{(~ sset)}} & data))),
		wire_counter_reg_bit_d = {wire_counter_comb_bita_7combout[0:0], wire_counter_comb_bita_6combout[0:0], wire_counter_comb_bita_5combout[0:0], wire_counter_comb_bita_4combout[0:0], wire_counter_comb_bita_3combout[0:0], wire_counter_comb_bita_2combout[0:0], wire_counter_comb_bita_1combout[0:0], wire_counter_comb_bita_0combout[0:0]};
	assign
		wire_counter_reg_bit_ena = {8{(clk_en & (((sclr | sset) | sload) | cnt_en))}},
		wire_counter_reg_bit_sload = {8{((sclr | sset) | sload)}};
	assign
		aclr_actual = aclr,
		clk_en = 1'b1,
		cout = cout_actual,
		cout_actual = (wire_counter_comb_bita_7cout[0:0] | (time_to_clear & updown_dir)),
		external_cin = 1'b1,
		q = safe_q,
		s_val = {8{1'b1}},
		safe_q = counter_reg_bit,
		sclr = 1'b0,
		sset = 1'b0,
		time_to_clear = 1'b0,
		updown_dir = 1'b0;
endmodule //downCounter_cntr
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module downCounter (
	aclr,
	clock,
	cnt_en,
	data,
	sload,
	cout,
	q)/* synthesis synthesis_clearbox = 1 */;

	input	  aclr;
	input	  clock;
	input	  cnt_en;
	input	[7:0]  data;
	input	  sload;
	output	  cout;
	output	[7:0]  q;

	wire  sub_wire0;
	wire [7:0] sub_wire1;
	wire  cout = sub_wire0;
	wire [7:0] q = sub_wire1[7:0];

	downCounter_cntr	downCounter_cntr_component (
				.aclr (aclr),
				.clock (clock),
				.cnt_en (cnt_en),
				.data (data),
				.sload (sload),
				.cout (sub_wire0),
				.q (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "1"
// Retrieval info: PRIVATE: ALOAD NUMERIC "0"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
// Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "1"
// Retrieval info: PRIVATE: Direction NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
// Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
// Retrieval info: PRIVATE: SCLR NUMERIC "0"
// Retrieval info: PRIVATE: SLOAD NUMERIC "1"
// Retrieval info: PRIVATE: SSET NUMERIC "0"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: nBit NUMERIC "8"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "DOWN"
// Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL "cnt_en"
// Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL "cout"
// Retrieval info: USED_PORT: data 0 0 8 0 INPUT NODEFVAL "data[7..0]"
// Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL "q[7..0]"
// Retrieval info: USED_PORT: sload 0 0 0 0 INPUT NODEFVAL "sload"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 8 0 data 0 0 8 0
// Retrieval info: CONNECT: @sload 0 0 0 0 sload 0 0 0 0
// Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
// Retrieval info: CONNECT: q 0 0 8 0 @q 0 0 8 0
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL downCounter_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
