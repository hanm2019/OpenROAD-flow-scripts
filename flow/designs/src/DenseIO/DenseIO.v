// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : DenseIO
// Git hash  : aeab30821bf33dec846c2049cebcf2d24a28afa4

`timescale 1ns/1ps

module DenseIO (
  input      [527:0]  io_left,
  input      [527:0]  io_bottom,
  output reg [527:0]  io_right,
  output reg [527:0]  io_top,
  input               clk,
  input               reset
);

  reg        [15:0]   sum;

  always @(*) begin
    io_right[15 : 0] = sum; // @[DenseIO.scala 19:27]
    io_right[527 : 16] = io_left[527 : 16]; // @[DenseIO.scala 21:27]
  end

  always @(*) begin
    io_top[15 : 0] = sum; // @[DenseIO.scala 20:25]
    io_top[527 : 16] = io_bottom[527 : 16]; // @[DenseIO.scala 22:25]
  end

  always @(posedge clk) begin
    sum <= (io_left[15 : 0] + io_bottom[15 : 0]); // @[Reg.scala 39:30]
  end


endmodule
