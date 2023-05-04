// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : Multiplier
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module Multiplier (
  input      [15:0]   io_a,
  input      [15:0]   io_b,
  output     [15:0]   io_c
);

  wire       [31:0]   _zz_io_c;

  assign _zz_io_c = ($signed(io_a) * $signed(io_b));
  assign io_c = _zz_io_c[15:0]; // @[Units.scala 13:8]

endmodule
