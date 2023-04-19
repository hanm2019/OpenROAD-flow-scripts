// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTest
// Git hash  : 687c9bff0f412828a813f4d984c233bda9a99ee1

`timescale 1ns/1ps

module ArrayTest (
  input      [15:0]   io_left_0_data,
  input      [15:0]   io_left_1_data,
  input      [15:0]   io_left_2_data,
  input      [15:0]   io_left_3_data,
  input      [15:0]   io_left_4_data,
  input      [15:0]   io_left_5_data,
  input      [15:0]   io_left_6_data,
  input      [15:0]   io_left_7_data,
  output     [15:0]   io_right_0_data,
  output     [15:0]   io_right_1_data,
  output     [15:0]   io_right_2_data,
  output     [15:0]   io_right_3_data,
  output     [15:0]   io_right_4_data,
  output     [15:0]   io_right_5_data,
  output     [15:0]   io_right_6_data,
  output     [15:0]   io_right_7_data,
  input      [15:0]   io_top_0_data,
  input      [15:0]   io_top_1_data,
  input      [15:0]   io_top_2_data,
  input      [15:0]   io_top_3_data,
  input      [15:0]   io_top_4_data,
  input      [15:0]   io_top_5_data,
  input      [15:0]   io_top_6_data,
  input      [15:0]   io_top_7_data,
  output     [15:0]   io_bottom_0_data,
  output     [15:0]   io_bottom_1_data,
  output     [15:0]   io_bottom_2_data,
  output     [15:0]   io_bottom_3_data,
  output     [15:0]   io_bottom_4_data,
  output     [15:0]   io_bottom_5_data,
  output     [15:0]   io_bottom_6_data,
  output     [15:0]   io_bottom_7_data,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_0_0_io_right_data;
  wire       [15:0]   pe_0_0_io_bottom_data;
  wire       [15:0]   pe_0_1_io_right_data;
  wire       [15:0]   pe_0_1_io_bottom_data;
  wire       [15:0]   pe_0_2_io_right_data;
  wire       [15:0]   pe_0_2_io_bottom_data;
  wire       [15:0]   pe_0_3_io_right_data;
  wire       [15:0]   pe_0_3_io_bottom_data;
  wire       [15:0]   pe_0_4_io_right_data;
  wire       [15:0]   pe_0_4_io_bottom_data;
  wire       [15:0]   pe_0_5_io_right_data;
  wire       [15:0]   pe_0_5_io_bottom_data;
  wire       [15:0]   pe_0_6_io_right_data;
  wire       [15:0]   pe_0_6_io_bottom_data;
  wire       [15:0]   pe_0_7_io_right_data;
  wire       [15:0]   pe_0_7_io_bottom_data;
  wire       [15:0]   pe_1_0_io_right_data;
  wire       [15:0]   pe_1_0_io_bottom_data;
  wire       [15:0]   pe_1_1_io_right_data;
  wire       [15:0]   pe_1_1_io_bottom_data;
  wire       [15:0]   pe_1_2_io_right_data;
  wire       [15:0]   pe_1_2_io_bottom_data;
  wire       [15:0]   pe_1_3_io_right_data;
  wire       [15:0]   pe_1_3_io_bottom_data;
  wire       [15:0]   pe_1_4_io_right_data;
  wire       [15:0]   pe_1_4_io_bottom_data;
  wire       [15:0]   pe_1_5_io_right_data;
  wire       [15:0]   pe_1_5_io_bottom_data;
  wire       [15:0]   pe_1_6_io_right_data;
  wire       [15:0]   pe_1_6_io_bottom_data;
  wire       [15:0]   pe_1_7_io_right_data;
  wire       [15:0]   pe_1_7_io_bottom_data;
  wire       [15:0]   pe_2_0_io_right_data;
  wire       [15:0]   pe_2_0_io_bottom_data;
  wire       [15:0]   pe_2_1_io_right_data;
  wire       [15:0]   pe_2_1_io_bottom_data;
  wire       [15:0]   pe_2_2_io_right_data;
  wire       [15:0]   pe_2_2_io_bottom_data;
  wire       [15:0]   pe_2_3_io_right_data;
  wire       [15:0]   pe_2_3_io_bottom_data;
  wire       [15:0]   pe_2_4_io_right_data;
  wire       [15:0]   pe_2_4_io_bottom_data;
  wire       [15:0]   pe_2_5_io_right_data;
  wire       [15:0]   pe_2_5_io_bottom_data;
  wire       [15:0]   pe_2_6_io_right_data;
  wire       [15:0]   pe_2_6_io_bottom_data;
  wire       [15:0]   pe_2_7_io_right_data;
  wire       [15:0]   pe_2_7_io_bottom_data;
  wire       [15:0]   pe_3_0_io_right_data;
  wire       [15:0]   pe_3_0_io_bottom_data;
  wire       [15:0]   pe_3_1_io_right_data;
  wire       [15:0]   pe_3_1_io_bottom_data;
  wire       [15:0]   pe_3_2_io_right_data;
  wire       [15:0]   pe_3_2_io_bottom_data;
  wire       [15:0]   pe_3_3_io_right_data;
  wire       [15:0]   pe_3_3_io_bottom_data;
  wire       [15:0]   pe_3_4_io_right_data;
  wire       [15:0]   pe_3_4_io_bottom_data;
  wire       [15:0]   pe_3_5_io_right_data;
  wire       [15:0]   pe_3_5_io_bottom_data;
  wire       [15:0]   pe_3_6_io_right_data;
  wire       [15:0]   pe_3_6_io_bottom_data;
  wire       [15:0]   pe_3_7_io_right_data;
  wire       [15:0]   pe_3_7_io_bottom_data;
  wire       [15:0]   pe_4_0_io_right_data;
  wire       [15:0]   pe_4_0_io_bottom_data;
  wire       [15:0]   pe_4_1_io_right_data;
  wire       [15:0]   pe_4_1_io_bottom_data;
  wire       [15:0]   pe_4_2_io_right_data;
  wire       [15:0]   pe_4_2_io_bottom_data;
  wire       [15:0]   pe_4_3_io_right_data;
  wire       [15:0]   pe_4_3_io_bottom_data;
  wire       [15:0]   pe_4_4_io_right_data;
  wire       [15:0]   pe_4_4_io_bottom_data;
  wire       [15:0]   pe_4_5_io_right_data;
  wire       [15:0]   pe_4_5_io_bottom_data;
  wire       [15:0]   pe_4_6_io_right_data;
  wire       [15:0]   pe_4_6_io_bottom_data;
  wire       [15:0]   pe_4_7_io_right_data;
  wire       [15:0]   pe_4_7_io_bottom_data;
  wire       [15:0]   pe_5_0_io_right_data;
  wire       [15:0]   pe_5_0_io_bottom_data;
  wire       [15:0]   pe_5_1_io_right_data;
  wire       [15:0]   pe_5_1_io_bottom_data;
  wire       [15:0]   pe_5_2_io_right_data;
  wire       [15:0]   pe_5_2_io_bottom_data;
  wire       [15:0]   pe_5_3_io_right_data;
  wire       [15:0]   pe_5_3_io_bottom_data;
  wire       [15:0]   pe_5_4_io_right_data;
  wire       [15:0]   pe_5_4_io_bottom_data;
  wire       [15:0]   pe_5_5_io_right_data;
  wire       [15:0]   pe_5_5_io_bottom_data;
  wire       [15:0]   pe_5_6_io_right_data;
  wire       [15:0]   pe_5_6_io_bottom_data;
  wire       [15:0]   pe_5_7_io_right_data;
  wire       [15:0]   pe_5_7_io_bottom_data;
  wire       [15:0]   pe_6_0_io_right_data;
  wire       [15:0]   pe_6_0_io_bottom_data;
  wire       [15:0]   pe_6_1_io_right_data;
  wire       [15:0]   pe_6_1_io_bottom_data;
  wire       [15:0]   pe_6_2_io_right_data;
  wire       [15:0]   pe_6_2_io_bottom_data;
  wire       [15:0]   pe_6_3_io_right_data;
  wire       [15:0]   pe_6_3_io_bottom_data;
  wire       [15:0]   pe_6_4_io_right_data;
  wire       [15:0]   pe_6_4_io_bottom_data;
  wire       [15:0]   pe_6_5_io_right_data;
  wire       [15:0]   pe_6_5_io_bottom_data;
  wire       [15:0]   pe_6_6_io_right_data;
  wire       [15:0]   pe_6_6_io_bottom_data;
  wire       [15:0]   pe_6_7_io_right_data;
  wire       [15:0]   pe_6_7_io_bottom_data;
  wire       [15:0]   pe_7_0_io_right_data;
  wire       [15:0]   pe_7_0_io_bottom_data;
  wire       [15:0]   pe_7_1_io_right_data;
  wire       [15:0]   pe_7_1_io_bottom_data;
  wire       [15:0]   pe_7_2_io_right_data;
  wire       [15:0]   pe_7_2_io_bottom_data;
  wire       [15:0]   pe_7_3_io_right_data;
  wire       [15:0]   pe_7_3_io_bottom_data;
  wire       [15:0]   pe_7_4_io_right_data;
  wire       [15:0]   pe_7_4_io_bottom_data;
  wire       [15:0]   pe_7_5_io_right_data;
  wire       [15:0]   pe_7_5_io_bottom_data;
  wire       [15:0]   pe_7_6_io_right_data;
  wire       [15:0]   pe_7_6_io_bottom_data;
  wire       [15:0]   pe_7_7_io_right_data;
  wire       [15:0]   pe_7_7_io_bottom_data;

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
  PETest pe_0_2 (
    .io_left_data   (pe_0_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_2_io_right_data[15:0] ), //o
    .io_top_data    (io_top_2_data[15:0]        ), //i
    .io_bottom_data (pe_0_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_3 (
    .io_left_data   (pe_0_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_3_io_right_data[15:0] ), //o
    .io_top_data    (io_top_3_data[15:0]        ), //i
    .io_bottom_data (pe_0_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_4 (
    .io_left_data   (pe_0_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_4_io_right_data[15:0] ), //o
    .io_top_data    (io_top_4_data[15:0]        ), //i
    .io_bottom_data (pe_0_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_5 (
    .io_left_data   (pe_0_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_5_io_right_data[15:0] ), //o
    .io_top_data    (io_top_5_data[15:0]        ), //i
    .io_bottom_data (pe_0_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_6 (
    .io_left_data   (pe_0_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_6_io_right_data[15:0] ), //o
    .io_top_data    (io_top_6_data[15:0]        ), //i
    .io_bottom_data (pe_0_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_7 (
    .io_left_data   (pe_0_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_7_io_right_data[15:0] ), //o
    .io_top_data    (io_top_7_data[15:0]        ), //i
    .io_bottom_data (pe_0_7_io_bottom_data[15:0]), //o
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
  PETest pe_1_2 (
    .io_left_data   (pe_1_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_3 (
    .io_left_data   (pe_1_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_4 (
    .io_left_data   (pe_1_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_5 (
    .io_left_data   (pe_1_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_6 (
    .io_left_data   (pe_1_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_7 (
    .io_left_data   (pe_1_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_1_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_0_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_1_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_0 (
    .io_left_data   (io_left_2_data[15:0]       ), //i
    .io_right_data  (pe_2_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_1 (
    .io_left_data   (pe_2_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_2 (
    .io_left_data   (pe_2_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_3 (
    .io_left_data   (pe_2_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_4 (
    .io_left_data   (pe_2_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_5 (
    .io_left_data   (pe_2_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_6 (
    .io_left_data   (pe_2_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_2_7 (
    .io_left_data   (pe_2_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_2_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_1_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_2_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_0 (
    .io_left_data   (io_left_3_data[15:0]       ), //i
    .io_right_data  (pe_3_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_1 (
    .io_left_data   (pe_3_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_2 (
    .io_left_data   (pe_3_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_3 (
    .io_left_data   (pe_3_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_4 (
    .io_left_data   (pe_3_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_5 (
    .io_left_data   (pe_3_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_6 (
    .io_left_data   (pe_3_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_3_7 (
    .io_left_data   (pe_3_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_3_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_2_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_3_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_0 (
    .io_left_data   (io_left_4_data[15:0]       ), //i
    .io_right_data  (pe_4_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_1 (
    .io_left_data   (pe_4_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_2 (
    .io_left_data   (pe_4_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_3 (
    .io_left_data   (pe_4_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_4 (
    .io_left_data   (pe_4_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_5 (
    .io_left_data   (pe_4_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_6 (
    .io_left_data   (pe_4_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_4_7 (
    .io_left_data   (pe_4_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_4_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_3_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_4_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_0 (
    .io_left_data   (io_left_5_data[15:0]       ), //i
    .io_right_data  (pe_5_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_1 (
    .io_left_data   (pe_5_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_2 (
    .io_left_data   (pe_5_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_3 (
    .io_left_data   (pe_5_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_4 (
    .io_left_data   (pe_5_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_5 (
    .io_left_data   (pe_5_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_6 (
    .io_left_data   (pe_5_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_5_7 (
    .io_left_data   (pe_5_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_5_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_4_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_5_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_0 (
    .io_left_data   (io_left_6_data[15:0]       ), //i
    .io_right_data  (pe_6_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_1 (
    .io_left_data   (pe_6_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_2 (
    .io_left_data   (pe_6_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_3 (
    .io_left_data   (pe_6_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_4 (
    .io_left_data   (pe_6_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_5 (
    .io_left_data   (pe_6_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_6 (
    .io_left_data   (pe_6_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_6_7 (
    .io_left_data   (pe_6_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_6_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_5_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_6_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_0 (
    .io_left_data   (io_left_7_data[15:0]       ), //i
    .io_right_data  (pe_7_0_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_0_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_1 (
    .io_left_data   (pe_7_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_1_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_1_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_2 (
    .io_left_data   (pe_7_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_2_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_2_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_3 (
    .io_left_data   (pe_7_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_3_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_3_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_4 (
    .io_left_data   (pe_7_3_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_4_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_4_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_4_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_5 (
    .io_left_data   (pe_7_4_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_5_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_5_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_5_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_6 (
    .io_left_data   (pe_7_5_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_6_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_6_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_6_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_7_7 (
    .io_left_data   (pe_7_6_io_right_data[15:0] ), //i
    .io_right_data  (pe_7_7_io_right_data[15:0] ), //o
    .io_top_data    (pe_6_7_io_bottom_data[15:0]), //i
    .io_bottom_data (pe_7_7_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  assign io_right_0_data = pe_0_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_1_data = pe_1_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_2_data = pe_2_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_3_data = pe_3_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_4_data = pe_4_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_5_data = pe_5_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_6_data = pe_6_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_7_data = pe_7_7_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_bottom_0_data = pe_7_0_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_1_data = pe_7_1_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_2_data = pe_7_2_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_3_data = pe_7_3_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_4_data = pe_7_4_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_5_data = pe_7_5_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_6_data = pe_7_6_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_7_data = pe_7_7_io_bottom_data; // @[SystolicConnect.scala 56:16]

endmodule
