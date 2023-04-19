// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : PEWS_bf16
// Git hash  : 687c9bff0f412828a813f4d984c233bda9a99ee1

`timescale 1ns/1ps

module PEWS_bf16 (
  input      [15:0]   io_in_r_data,
  input               io_in_r_stop_weight,
  input               io_in_r_stall,
  output     [15:0]   io_out_r_data,
  output              io_out_r_stop_weight,
  output              io_out_r_stall,
  input      [15:0]   io_in_c_data,
  input               io_in_c_is_weight,
  output     [15:0]   io_out_c_data,
  output              io_out_c_is_weight,
  input               clk,
  input               reset
);

  wire       [15:0]   mac_a;
  wire       [15:0]   mac_b;
  wire       [15:0]   mac_c;
  wire       [15:0]   mac_result_1;
  wire                ctrl_not_stall;
  wire                when_PEWS_bf16_l31;
  reg        [15:0]   weight_reg;
  wire       [15:0]   mac_result;
  reg                 io_in_r_stall_regNext;
  reg        [15:0]   io_in_r_data_regNextWhen;
  reg                 io_in_r_stop_weight_regNextWhen;
  reg        [15:0]   _zz_io_out_c_data;
  reg                 io_in_c_is_weight_regNextWhen;

  MacBF16 mac (
    .a      (mac_a[15:0]       ), //i
    .b      (mac_b[15:0]       ), //i
    .c      (mac_c[15:0]       ), //i
    .result (mac_result_1[15:0])  //o
  );
  assign ctrl_not_stall = (! io_in_r_stall); // @[BaseType.scala 299:24]
  assign when_PEWS_bf16_l31 = (io_in_r_stop_weight && ctrl_not_stall); // @[BaseType.scala 305:24]
  assign mac_c = io_in_c_data; // @[PEWS_bf16.scala 36:12]
  assign mac_b = weight_reg; // @[PEWS_bf16.scala 37:12]
  assign mac_a = io_in_r_data; // @[PEWS_bf16.scala 38:12]
  assign mac_result = mac_result_1; // @[PEWS_bf16.scala 39:14]
  assign io_out_r_stall = io_in_r_stall_regNext; // @[PEWS_bf16.scala 42:18]
  assign io_out_r_data = io_in_r_data_regNextWhen; // @[PEWS_bf16.scala 43:17]
  assign io_out_r_stop_weight = io_in_r_stop_weight_regNextWhen; // @[PEWS_bf16.scala 44:24]
  assign io_out_c_data = _zz_io_out_c_data; // @[PEWS_bf16.scala 47:17]
  assign io_out_c_is_weight = io_in_c_is_weight_regNextWhen; // @[PEWS_bf16.scala 48:22]
  always @(posedge clk) begin
    if(when_PEWS_bf16_l31) begin
      weight_reg <= io_in_c_data; // @[PEWS_bf16.scala 31:31]
    end
    io_in_r_stall_regNext <= io_in_r_stall; // @[Reg.scala 39:30]
    if(ctrl_not_stall) begin
      io_in_r_data_regNextWhen <= io_in_r_data; // @[PEWS_bf16.scala 43:31]
    end
    if(ctrl_not_stall) begin
      io_in_r_stop_weight_regNextWhen <= io_in_r_stop_weight; // @[PEWS_bf16.scala 44:38]
    end
    if(ctrl_not_stall) begin
      _zz_io_out_c_data <= (io_in_c_is_weight ? io_in_c_data : mac_result); // @[PEWS_bf16.scala 47:31]
    end
    if(ctrl_not_stall) begin
      io_in_c_is_weight_regNextWhen <= io_in_c_is_weight; // @[PEWS_bf16.scala 48:36]
    end
  end


endmodule
