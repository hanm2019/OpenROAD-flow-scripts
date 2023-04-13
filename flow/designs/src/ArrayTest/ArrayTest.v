// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTest
// Git hash  : aeab30821bf33dec846c2049cebcf2d24a28afa4

`timescale 1ns/1ps

module ArrayTest (
  input      [15:0]   io_left_0_data,
  input      [15:0]   io_left_1_data,
  output     [15:0]   io_right_0_data,
  output     [15:0]   io_right_1_data,
  input      [15:0]   io_top_0_data,
  input      [15:0]   io_top_1_data,
  output     [15:0]   io_bottom_0_data,
  output     [15:0]   io_bottom_1_data,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_0_0_io_right_data;
  wire       [15:0]   pe_0_0_io_bottom_data;
  wire       [15:0]   pe_0_1_io_right_data;
  wire       [15:0]   pe_0_1_io_bottom_data;
  wire       [15:0]   pe_1_0_io_right_data;
  wire       [15:0]   pe_1_0_io_bottom_data;
  wire       [15:0]   pe_1_1_io_right_data;
  wire       [15:0]   pe_1_1_io_bottom_data;

  PETest pe_0_0 (
    .io_left_data   (io_left_0_data[15:0]       ), //i
    .io_right_data  (pe_0_0_io_right_data[15:0] ), //o
    .io_top_data    (io_top_0_data[15:0]        ), //i
    .io_bottom_data (pe_0_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_1 (
    .io_left_data   (pe_0_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_1_io_right_data[15:0] ), //o
    .io_top_data    (io_top_1_data[15:0]        ), //i
    .io_bottom_data (pe_0_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_0 (
    .io_left_data   (io_left_1_data[15:0]       ), //i
    .io_right_data  (pe_1_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_1 (
    .io_left_data   (pe_1_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  assign io_right_0_data = pe_0_1_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data = pe_1_1_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_bottom_0_data = pe_1_0_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data = pe_1_1_io_bottom_data; // @[SystolicConnect.scala 56:16]

endmodule

//PETest replaced by PETest

//PETest replaced by PETest

//PETest replaced by PETest

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

  assign io_bottom_data = io_top_regNext_data; // @[PETest.scala 26:13]
  assign io_right_data = io_left_regNext_data; // @[PETest.scala 27:12]
  always @(posedge clk) begin
    io_top_regNext_data <= io_top_data; // @[Reg.scala 39:30]
    io_left_regNext_data <= io_left_data; // @[Reg.scala 39:30]
  end


endmodule
