// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : Register_1
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module Register (
  input      [15:0]   io_a,
  output     [15:0]   io_b,
  input               clk,
  input               reset
);

  reg        [15:0]   io_a_regNext;

  assign io_b = io_a_regNext; // @[Units.scala 32:8]
  always @(posedge clk) begin
    io_a_regNext <= io_a; // @[Reg.scala 39:30]
  end


endmodule
