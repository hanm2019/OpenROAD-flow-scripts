// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTest2
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module PETest (
  input      [15:0]   io_left_data,
  output     [15:0]   io_right_data,
  input      [15:0]   io_top_data,
  output     [15:0]   io_bottom_data,
  input               clk,
  input               reset
);

  reg        [15:0]   io_top_regNext_data;
  reg        [15:0]   io_left_regNext_data;

  assign io_bottom_data = io_top_regNext_data; // @[PETest.scala 21:13]
  assign io_right_data = io_left_regNext_data; // @[PETest.scala 22:12]
  always @(posedge clk) begin
    io_top_regNext_data <= io_top_data; // @[Reg.scala 39:30]
    io_left_regNext_data <= io_left_data; // @[Reg.scala 39:30]
  end


endmodule
