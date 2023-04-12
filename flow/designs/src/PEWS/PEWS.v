// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : PEWS
// Git hash  : aeab30821bf33dec846c2049cebcf2d24a28afa4

`timescale 1ns/1ps

module PEWS (
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

  wire       [15:0]   mac_1_io_result;
  wire                ctrl_not_stall;
  wire                when_PEWS_l54;
  reg        [15:0]   weight_reg;
  reg                 io_in_r_stall_regNext;
  reg        [15:0]   io_in_r_data_regNextWhen;
  reg                 io_in_r_stop_weight_regNextWhen;
  reg        [15:0]   _zz_io_out_c_data;
  reg                 io_in_c_is_weight_regNextWhen;

  Mac mac_1 (
    .io_psum            (io_in_c_data[15:0]   ), //i
    .io_weight          (weight_reg[15:0]     ), //i
    .io_inputActivation (io_in_r_data[15:0]   ), //i
    .io_result          (mac_1_io_result[15:0])  //o
  );
  assign ctrl_not_stall = (! io_in_r_stall); // @[BaseType.scala 299:24]
  assign when_PEWS_l54 = (io_in_r_stop_weight && ctrl_not_stall); // @[BaseType.scala 305:24]
  assign io_out_r_stall = io_in_r_stall_regNext; // @[PEWS.scala 64:18]
  assign io_out_r_data = io_in_r_data_regNextWhen; // @[PEWS.scala 65:17]
  assign io_out_r_stop_weight = io_in_r_stop_weight_regNextWhen; // @[PEWS.scala 66:24]
  assign io_out_c_data = _zz_io_out_c_data; // @[PEWS.scala 69:17]
  assign io_out_c_is_weight = io_in_c_is_weight_regNextWhen; // @[PEWS.scala 70:22]
  always @(posedge clk) begin
    if(when_PEWS_l54) begin
      weight_reg <= io_in_c_data; // @[PEWS.scala 54:31]
    end
    io_in_r_stall_regNext <= io_in_r_stall; // @[Reg.scala 39:30]
    if(ctrl_not_stall) begin
      io_in_r_data_regNextWhen <= io_in_r_data; // @[PEWS.scala 65:31]
    end
    if(ctrl_not_stall) begin
      io_in_r_stop_weight_regNextWhen <= io_in_r_stop_weight; // @[PEWS.scala 66:38]
    end
    if(ctrl_not_stall) begin
      _zz_io_out_c_data <= (io_in_c_is_weight ? io_in_c_data : mac_1_io_result); // @[PEWS.scala 69:31]
    end
    if(ctrl_not_stall) begin
      io_in_c_is_weight_regNextWhen <= io_in_c_is_weight; // @[PEWS.scala 70:36]
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
