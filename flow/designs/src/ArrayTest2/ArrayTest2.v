// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTest2
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module ArrayTest2 (
  input      [15:0]   io_left_0_data_0_data,
  input      [15:0]   io_left_0_data_1_data,
  input      [15:0]   io_left_0_data_2_data,
  input      [15:0]   io_left_0_data_3_data,
  input      [15:0]   io_left_1_data_0_data,
  input      [15:0]   io_left_1_data_1_data,
  input      [15:0]   io_left_1_data_2_data,
  input      [15:0]   io_left_1_data_3_data,
  output     [15:0]   io_right_0_data_0_data,
  output     [15:0]   io_right_0_data_1_data,
  output     [15:0]   io_right_0_data_2_data,
  output     [15:0]   io_right_0_data_3_data,
  output     [15:0]   io_right_1_data_0_data,
  output     [15:0]   io_right_1_data_1_data,
  output     [15:0]   io_right_1_data_2_data,
  output     [15:0]   io_right_1_data_3_data,
  input      [15:0]   io_top_0_data_0_data,
  input      [15:0]   io_top_0_data_1_data,
  input      [15:0]   io_top_0_data_2_data,
  input      [15:0]   io_top_0_data_3_data,
  input      [15:0]   io_top_1_data_0_data,
  input      [15:0]   io_top_1_data_1_data,
  input      [15:0]   io_top_1_data_2_data,
  input      [15:0]   io_top_1_data_3_data,
  output     [15:0]   io_bottom_0_data_0_data,
  output     [15:0]   io_bottom_0_data_1_data,
  output     [15:0]   io_bottom_0_data_2_data,
  output     [15:0]   io_bottom_0_data_3_data,
  output     [15:0]   io_bottom_1_data_0_data,
  output     [15:0]   io_bottom_1_data_1_data,
  output     [15:0]   io_bottom_1_data_2_data,
  output     [15:0]   io_bottom_1_data_3_data,
  input               clk,
  input               reset
);

  wire       [15:0]   sub_0_0_io_right_data_0_data;
  wire       [15:0]   sub_0_0_io_right_data_1_data;
  wire       [15:0]   sub_0_0_io_right_data_2_data;
  wire       [15:0]   sub_0_0_io_right_data_3_data;
  wire       [15:0]   sub_0_0_io_bottom_data_0_data;
  wire       [15:0]   sub_0_0_io_bottom_data_1_data;
  wire       [15:0]   sub_0_0_io_bottom_data_2_data;
  wire       [15:0]   sub_0_0_io_bottom_data_3_data;
  wire       [15:0]   sub_0_1_io_right_data_0_data;
  wire       [15:0]   sub_0_1_io_right_data_1_data;
  wire       [15:0]   sub_0_1_io_right_data_2_data;
  wire       [15:0]   sub_0_1_io_right_data_3_data;
  wire       [15:0]   sub_0_1_io_bottom_data_0_data;
  wire       [15:0]   sub_0_1_io_bottom_data_1_data;
  wire       [15:0]   sub_0_1_io_bottom_data_2_data;
  wire       [15:0]   sub_0_1_io_bottom_data_3_data;
  wire       [15:0]   sub_1_0_io_right_data_0_data;
  wire       [15:0]   sub_1_0_io_right_data_1_data;
  wire       [15:0]   sub_1_0_io_right_data_2_data;
  wire       [15:0]   sub_1_0_io_right_data_3_data;
  wire       [15:0]   sub_1_0_io_bottom_data_0_data;
  wire       [15:0]   sub_1_0_io_bottom_data_1_data;
  wire       [15:0]   sub_1_0_io_bottom_data_2_data;
  wire       [15:0]   sub_1_0_io_bottom_data_3_data;
  wire       [15:0]   sub_1_1_io_right_data_0_data;
  wire       [15:0]   sub_1_1_io_right_data_1_data;
  wire       [15:0]   sub_1_1_io_right_data_2_data;
  wire       [15:0]   sub_1_1_io_right_data_3_data;
  wire       [15:0]   sub_1_1_io_bottom_data_0_data;
  wire       [15:0]   sub_1_1_io_bottom_data_1_data;
  wire       [15:0]   sub_1_1_io_bottom_data_2_data;
  wire       [15:0]   sub_1_1_io_bottom_data_3_data;

  SubArrayTest2 sub_0_0 (
    .io_left_data_0_data   (io_left_0_data_0_data[15:0]        ), //i
    .io_left_data_1_data   (io_left_0_data_1_data[15:0]        ), //i
    .io_left_data_2_data   (io_left_0_data_2_data[15:0]        ), //i
    .io_left_data_3_data   (io_left_0_data_3_data[15:0]        ), //i
    .io_right_data_0_data  (sub_0_0_io_right_data_0_data[15:0] ), //o
    .io_right_data_1_data  (sub_0_0_io_right_data_1_data[15:0] ), //o
    .io_right_data_2_data  (sub_0_0_io_right_data_2_data[15:0] ), //o
    .io_right_data_3_data  (sub_0_0_io_right_data_3_data[15:0] ), //o
    .io_top_data_0_data    (io_top_0_data_0_data[15:0]         ), //i
    .io_top_data_1_data    (io_top_0_data_1_data[15:0]         ), //i
    .io_top_data_2_data    (io_top_0_data_2_data[15:0]         ), //i
    .io_top_data_3_data    (io_top_0_data_3_data[15:0]         ), //i
    .io_bottom_data_0_data (sub_0_0_io_bottom_data_0_data[15:0]), //o
    .io_bottom_data_1_data (sub_0_0_io_bottom_data_1_data[15:0]), //o
    .io_bottom_data_2_data (sub_0_0_io_bottom_data_2_data[15:0]), //o
    .io_bottom_data_3_data (sub_0_0_io_bottom_data_3_data[15:0]), //o
    .clk                   (clk                                ), //i
    .reset                 (reset                              )  //i
  );
  SubArrayTest2 sub_0_1 (
    .io_left_data_0_data   (sub_0_0_io_right_data_0_data[15:0] ), //i
    .io_left_data_1_data   (sub_0_0_io_right_data_1_data[15:0] ), //i
    .io_left_data_2_data   (sub_0_0_io_right_data_2_data[15:0] ), //i
    .io_left_data_3_data   (sub_0_0_io_right_data_3_data[15:0] ), //i
    .io_right_data_0_data  (sub_0_1_io_right_data_0_data[15:0] ), //o
    .io_right_data_1_data  (sub_0_1_io_right_data_1_data[15:0] ), //o
    .io_right_data_2_data  (sub_0_1_io_right_data_2_data[15:0] ), //o
    .io_right_data_3_data  (sub_0_1_io_right_data_3_data[15:0] ), //o
    .io_top_data_0_data    (io_top_1_data_0_data[15:0]         ), //i
    .io_top_data_1_data    (io_top_1_data_1_data[15:0]         ), //i
    .io_top_data_2_data    (io_top_1_data_2_data[15:0]         ), //i
    .io_top_data_3_data    (io_top_1_data_3_data[15:0]         ), //i
    .io_bottom_data_0_data (sub_0_1_io_bottom_data_0_data[15:0]), //o
    .io_bottom_data_1_data (sub_0_1_io_bottom_data_1_data[15:0]), //o
    .io_bottom_data_2_data (sub_0_1_io_bottom_data_2_data[15:0]), //o
    .io_bottom_data_3_data (sub_0_1_io_bottom_data_3_data[15:0]), //o
    .clk                   (clk                                ), //i
    .reset                 (reset                              )  //i
  );
  SubArrayTest2 sub_1_0 (
    .io_left_data_0_data   (io_left_1_data_0_data[15:0]        ), //i
    .io_left_data_1_data   (io_left_1_data_1_data[15:0]        ), //i
    .io_left_data_2_data   (io_left_1_data_2_data[15:0]        ), //i
    .io_left_data_3_data   (io_left_1_data_3_data[15:0]        ), //i
    .io_right_data_0_data  (sub_1_0_io_right_data_0_data[15:0] ), //o
    .io_right_data_1_data  (sub_1_0_io_right_data_1_data[15:0] ), //o
    .io_right_data_2_data  (sub_1_0_io_right_data_2_data[15:0] ), //o
    .io_right_data_3_data  (sub_1_0_io_right_data_3_data[15:0] ), //o
    .io_top_data_0_data    (sub_0_0_io_bottom_data_0_data[15:0]), //i
    .io_top_data_1_data    (sub_0_0_io_bottom_data_1_data[15:0]), //i
    .io_top_data_2_data    (sub_0_0_io_bottom_data_2_data[15:0]), //i
    .io_top_data_3_data    (sub_0_0_io_bottom_data_3_data[15:0]), //i
    .io_bottom_data_0_data (sub_1_0_io_bottom_data_0_data[15:0]), //o
    .io_bottom_data_1_data (sub_1_0_io_bottom_data_1_data[15:0]), //o
    .io_bottom_data_2_data (sub_1_0_io_bottom_data_2_data[15:0]), //o
    .io_bottom_data_3_data (sub_1_0_io_bottom_data_3_data[15:0]), //o
    .clk                   (clk                                ), //i
    .reset                 (reset                              )  //i
  );
  SubArrayTest2 sub_1_1 (
    .io_left_data_0_data   (sub_1_0_io_right_data_0_data[15:0] ), //i
    .io_left_data_1_data   (sub_1_0_io_right_data_1_data[15:0] ), //i
    .io_left_data_2_data   (sub_1_0_io_right_data_2_data[15:0] ), //i
    .io_left_data_3_data   (sub_1_0_io_right_data_3_data[15:0] ), //i
    .io_right_data_0_data  (sub_1_1_io_right_data_0_data[15:0] ), //o
    .io_right_data_1_data  (sub_1_1_io_right_data_1_data[15:0] ), //o
    .io_right_data_2_data  (sub_1_1_io_right_data_2_data[15:0] ), //o
    .io_right_data_3_data  (sub_1_1_io_right_data_3_data[15:0] ), //o
    .io_top_data_0_data    (sub_0_1_io_bottom_data_0_data[15:0]), //i
    .io_top_data_1_data    (sub_0_1_io_bottom_data_1_data[15:0]), //i
    .io_top_data_2_data    (sub_0_1_io_bottom_data_2_data[15:0]), //i
    .io_top_data_3_data    (sub_0_1_io_bottom_data_3_data[15:0]), //i
    .io_bottom_data_0_data (sub_1_1_io_bottom_data_0_data[15:0]), //o
    .io_bottom_data_1_data (sub_1_1_io_bottom_data_1_data[15:0]), //o
    .io_bottom_data_2_data (sub_1_1_io_bottom_data_2_data[15:0]), //o
    .io_bottom_data_3_data (sub_1_1_io_bottom_data_3_data[15:0]), //o
    .clk                   (clk                                ), //i
    .reset                 (reset                              )  //i
  );
  assign io_right_0_data_0_data = sub_0_1_io_right_data_0_data; // @[SystolicConnect.scala 50:16]
  assign io_right_0_data_1_data = sub_0_1_io_right_data_1_data; // @[SystolicConnect.scala 50:16]
  assign io_right_0_data_2_data = sub_0_1_io_right_data_2_data; // @[SystolicConnect.scala 50:16]
  assign io_right_0_data_3_data = sub_0_1_io_right_data_3_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data_0_data = sub_1_1_io_right_data_0_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data_1_data = sub_1_1_io_right_data_1_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data_2_data = sub_1_1_io_right_data_2_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data_3_data = sub_1_1_io_right_data_3_data; // @[SystolicConnect.scala 50:16]
  assign io_bottom_0_data_0_data = sub_1_0_io_bottom_data_0_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_0_data_1_data = sub_1_0_io_bottom_data_1_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_0_data_2_data = sub_1_0_io_bottom_data_2_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_0_data_3_data = sub_1_0_io_bottom_data_3_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data_0_data = sub_1_1_io_bottom_data_0_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data_1_data = sub_1_1_io_bottom_data_1_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data_2_data = sub_1_1_io_bottom_data_2_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data_3_data = sub_1_1_io_bottom_data_3_data; // @[SystolicConnect.scala 56:16]

endmodule
