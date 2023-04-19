// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : PEDynamic2
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module PEDynamic2 (
  input      [15:0]   io_left_data_data,
  input               io_left_data_start_output,
  input               io_left_data_stall,
  input      [15:0]   io_left_bypass_0_data,
  input               io_left_bypass_0_start_output,
  input               io_left_bypass_0_stall,
  input      [15:0]   io_left_bypass_1_data,
  input               io_left_bypass_1_start_output,
  input               io_left_bypass_1_stall,
  input      [15:0]   io_left_bypass_2_data,
  input               io_left_bypass_2_start_output,
  input               io_left_bypass_2_stall,
  input      [15:0]   io_left_bypass_3_data,
  input               io_left_bypass_3_start_output,
  input               io_left_bypass_3_stall,
  input      [15:0]   io_left_bypass_4_data,
  input               io_left_bypass_4_start_output,
  input               io_left_bypass_4_stall,
  input      [15:0]   io_left_bypass_5_data,
  input               io_left_bypass_5_start_output,
  input               io_left_bypass_5_stall,
  input      [15:0]   io_left_bypass_6_data,
  input               io_left_bypass_6_start_output,
  input               io_left_bypass_6_stall,
  input      [15:0]   io_left_bypass_7_data,
  input               io_left_bypass_7_start_output,
  input               io_left_bypass_7_stall,
  input      [15:0]   io_left_bypass_8_data,
  input               io_left_bypass_8_start_output,
  input               io_left_bypass_8_stall,
  input      [15:0]   io_left_bypass_9_data,
  input               io_left_bypass_9_start_output,
  input               io_left_bypass_9_stall,
  input      [15:0]   io_left_bypass_10_data,
  input               io_left_bypass_10_start_output,
  input               io_left_bypass_10_stall,
  input      [15:0]   io_left_bypass_11_data,
  input               io_left_bypass_11_start_output,
  input               io_left_bypass_11_stall,
  input      [15:0]   io_left_bypass_12_data,
  input               io_left_bypass_12_start_output,
  input               io_left_bypass_12_stall,
  input      [15:0]   io_left_bypass_13_data,
  input               io_left_bypass_13_start_output,
  input               io_left_bypass_13_stall,
  input      [15:0]   io_left_bypass_14_data,
  input               io_left_bypass_14_start_output,
  input               io_left_bypass_14_stall,
  input      [15:0]   io_left_bypass_15_data,
  input               io_left_bypass_15_start_output,
  input               io_left_bypass_15_stall,
  output     [15:0]   io_right_data_data,
  output              io_right_data_start_output,
  output              io_right_data_stall,
  output     [15:0]   io_right_bypass_0_data,
  output              io_right_bypass_0_start_output,
  output              io_right_bypass_0_stall,
  output     [15:0]   io_right_bypass_1_data,
  output              io_right_bypass_1_start_output,
  output              io_right_bypass_1_stall,
  output     [15:0]   io_right_bypass_2_data,
  output              io_right_bypass_2_start_output,
  output              io_right_bypass_2_stall,
  output     [15:0]   io_right_bypass_3_data,
  output              io_right_bypass_3_start_output,
  output              io_right_bypass_3_stall,
  output     [15:0]   io_right_bypass_4_data,
  output              io_right_bypass_4_start_output,
  output              io_right_bypass_4_stall,
  output     [15:0]   io_right_bypass_5_data,
  output              io_right_bypass_5_start_output,
  output              io_right_bypass_5_stall,
  output     [15:0]   io_right_bypass_6_data,
  output              io_right_bypass_6_start_output,
  output              io_right_bypass_6_stall,
  output     [15:0]   io_right_bypass_7_data,
  output              io_right_bypass_7_start_output,
  output              io_right_bypass_7_stall,
  output     [15:0]   io_right_bypass_8_data,
  output              io_right_bypass_8_start_output,
  output              io_right_bypass_8_stall,
  output     [15:0]   io_right_bypass_9_data,
  output              io_right_bypass_9_start_output,
  output              io_right_bypass_9_stall,
  output     [15:0]   io_right_bypass_10_data,
  output              io_right_bypass_10_start_output,
  output              io_right_bypass_10_stall,
  output     [15:0]   io_right_bypass_11_data,
  output              io_right_bypass_11_start_output,
  output              io_right_bypass_11_stall,
  output     [15:0]   io_right_bypass_12_data,
  output              io_right_bypass_12_start_output,
  output              io_right_bypass_12_stall,
  output     [15:0]   io_right_bypass_13_data,
  output              io_right_bypass_13_start_output,
  output              io_right_bypass_13_stall,
  output     [15:0]   io_right_bypass_14_data,
  output              io_right_bypass_14_start_output,
  output              io_right_bypass_14_stall,
  output     [15:0]   io_right_bypass_15_data,
  output              io_right_bypass_15_start_output,
  output              io_right_bypass_15_stall,
  input      [15:0]   io_top_data_data,
  output     [15:0]   io_top_bypass_data,
  output     [15:0]   io_bottom_data_data,
  input      [15:0]   io_bottom_bypass_data,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_io_out_r_data;
  wire                pe_io_out_r_start_output;
  wire                pe_io_out_r_stall;
  wire       [15:0]   pe_io_out_c_data;

  PEOS pe (
    .io_in_r_data          (io_left_data_data[15:0]  ), //i
    .io_in_r_start_output  (io_left_data_start_output), //i
    .io_in_r_stall         (io_left_data_stall       ), //i
    .io_out_r_data         (pe_io_out_r_data[15:0]   ), //o
    .io_out_r_start_output (pe_io_out_r_start_output ), //o
    .io_out_r_stall        (pe_io_out_r_stall        ), //o
    .io_in_c_data          (io_top_data_data[15:0]   ), //i
    .io_out_c_data         (pe_io_out_c_data[15:0]   ), //o
    .clk                   (clk                      ), //i
    .reset                 (reset                    )  //i
  );
  assign io_right_data_data = pe_io_out_r_data; // @[ArrayDynamic2.scala 35:17]
  assign io_right_data_start_output = pe_io_out_r_start_output; // @[ArrayDynamic2.scala 35:17]
  assign io_right_data_stall = pe_io_out_r_stall; // @[ArrayDynamic2.scala 35:17]
  assign io_bottom_data_data = pe_io_out_c_data; // @[ArrayDynamic2.scala 36:18]
  assign io_right_bypass_0_data = io_left_bypass_0_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_0_start_output = io_left_bypass_0_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_0_stall = io_left_bypass_0_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_1_data = io_left_bypass_1_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_1_start_output = io_left_bypass_1_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_1_stall = io_left_bypass_1_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_2_data = io_left_bypass_2_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_2_start_output = io_left_bypass_2_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_2_stall = io_left_bypass_2_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_3_data = io_left_bypass_3_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_3_start_output = io_left_bypass_3_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_3_stall = io_left_bypass_3_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_4_data = io_left_bypass_4_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_4_start_output = io_left_bypass_4_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_4_stall = io_left_bypass_4_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_5_data = io_left_bypass_5_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_5_start_output = io_left_bypass_5_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_5_stall = io_left_bypass_5_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_6_data = io_left_bypass_6_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_6_start_output = io_left_bypass_6_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_6_stall = io_left_bypass_6_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_7_data = io_left_bypass_7_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_7_start_output = io_left_bypass_7_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_7_stall = io_left_bypass_7_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_8_data = io_left_bypass_8_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_8_start_output = io_left_bypass_8_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_8_stall = io_left_bypass_8_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_9_data = io_left_bypass_9_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_9_start_output = io_left_bypass_9_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_9_stall = io_left_bypass_9_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_10_data = io_left_bypass_10_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_10_start_output = io_left_bypass_10_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_10_stall = io_left_bypass_10_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_11_data = io_left_bypass_11_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_11_start_output = io_left_bypass_11_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_11_stall = io_left_bypass_11_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_12_data = io_left_bypass_12_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_12_start_output = io_left_bypass_12_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_12_stall = io_left_bypass_12_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_13_data = io_left_bypass_13_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_13_start_output = io_left_bypass_13_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_13_stall = io_left_bypass_13_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_14_data = io_left_bypass_14_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_14_start_output = io_left_bypass_14_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_14_stall = io_left_bypass_14_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_15_data = io_left_bypass_15_data; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_15_start_output = io_left_bypass_15_start_output; // @[ArrayDynamic2.scala 38:19]
  assign io_right_bypass_15_stall = io_left_bypass_15_stall; // @[ArrayDynamic2.scala 38:19]
  assign io_top_bypass_data = io_bottom_bypass_data; // @[ArrayDynamic2.scala 39:17]

endmodule

module PEOS (
  input      [15:0]   io_in_r_data,
  input               io_in_r_start_output,
  input               io_in_r_stall,
  output     [15:0]   io_out_r_data,
  output              io_out_r_start_output,
  output              io_out_r_stall,
  input      [15:0]   io_in_c_data,
  output     [15:0]   io_out_c_data,
  input               clk,
  input               reset
);

  wire       [15:0]   mac_1_io_result;
  wire                ctrl_not_stall;
  wire       [15:0]   mac_result;
  wire       [15:0]   zero;
  reg        [15:0]   output_reg;
  reg                 io_in_r_stall_regNext;
  reg        [15:0]   io_in_r_data_regNextWhen;
  reg                 io_in_r_start_output_regNextWhen;
  reg        [15:0]   _zz_io_out_c_data;

  Mac mac_1 (
    .io_psum            (output_reg[15:0]     ), //i
    .io_weight          (io_in_c_data[15:0]   ), //i
    .io_inputActivation (io_in_r_data[15:0]   ), //i
    .io_result          (mac_1_io_result[15:0])  //o
  );
  assign ctrl_not_stall = (! io_in_r_stall); // @[BaseType.scala 299:24]
  assign zero = 16'h0; // @[SInt.scala 506:56]
  assign mac_result = mac_1_io_result; // @[PEOS.scala 62:14]
  assign io_out_r_stall = io_in_r_stall_regNext; // @[PEOS.scala 65:18]
  assign io_out_r_data = io_in_r_data_regNextWhen; // @[PEOS.scala 66:17]
  assign io_out_r_start_output = io_in_r_start_output_regNextWhen; // @[PEOS.scala 67:25]
  assign io_out_c_data = _zz_io_out_c_data; // @[PEOS.scala 70:17]
  always @(posedge clk) begin
    if(ctrl_not_stall) begin
      output_reg <= (io_in_r_start_output ? zero : mac_result); // @[PEOS.scala 55:31]
    end
    io_in_r_stall_regNext <= io_in_r_stall; // @[Reg.scala 39:30]
    if(ctrl_not_stall) begin
      io_in_r_data_regNextWhen <= io_in_r_data; // @[PEOS.scala 66:31]
    end
    if(ctrl_not_stall) begin
      io_in_r_start_output_regNextWhen <= io_in_r_start_output; // @[PEOS.scala 67:39]
    end
    if(ctrl_not_stall) begin
      _zz_io_out_c_data <= (io_in_r_start_output ? output_reg : io_in_c_data); // @[PEOS.scala 70:31]
    end
  end


endmodule

module Mac (
  input      [15:0]   io_psum,
  input      [15:0]   io_weight,
  input      [15:0]   io_inputActivation,
  output     [15:0]   io_result
);

  wire       [31:0]   _zz_io_result;
  wire       [31:0]   _zz_io_result_1;
  wire       [31:0]   _zz_io_result_2;

  assign _zz_io_result = ($signed(_zz_io_result_1) + $signed(_zz_io_result_2));
  assign _zz_io_result_1 = ($signed(io_inputActivation) * $signed(io_weight));
  assign _zz_io_result_2 = {{16{io_psum[15]}}, io_psum};
  assign io_result = _zz_io_result[15:0]; // @[Mac.scala 14:31]

endmodule
