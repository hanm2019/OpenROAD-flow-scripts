// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTest2
// Git hash  : 738314ecc1e67e9e32a4d64ca25df18865be1d37

`timescale 1ns/1ps

module SubArrayTest2 (
  input      [15:0]   io_left_data_0_data,
  input      [15:0]   io_left_data_1_data,
  input      [15:0]   io_left_data_2_data,
  input      [15:0]   io_left_data_3_data,
  output     [15:0]   io_right_data_0_data,
  output     [15:0]   io_right_data_1_data,
  output     [15:0]   io_right_data_2_data,
  output     [15:0]   io_right_data_3_data,
  input      [15:0]   io_top_data_0_data,
  input      [15:0]   io_top_data_1_data,
  input      [15:0]   io_top_data_2_data,
  input      [15:0]   io_top_data_3_data,
  output     [15:0]   io_bottom_data_0_data,
  output     [15:0]   io_bottom_data_1_data,
  output     [15:0]   io_bottom_data_2_data,
  output     [15:0]   io_bottom_data_3_data,
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
  wire       [15:0]   pe_1_0_io_right_data;
  wire       [15:0]   pe_1_0_io_bottom_data;
  wire       [15:0]   pe_1_1_io_right_data;
  wire       [15:0]   pe_1_1_io_bottom_data;
  wire       [15:0]   pe_1_2_io_right_data;
  wire       [15:0]   pe_1_2_io_bottom_data;
  wire       [15:0]   pe_1_3_io_right_data;
  wire       [15:0]   pe_1_3_io_bottom_data;
  wire       [15:0]   pe_2_0_io_right_data;
  wire       [15:0]   pe_2_0_io_bottom_data;
  wire       [15:0]   pe_2_1_io_right_data;
  wire       [15:0]   pe_2_1_io_bottom_data;
  wire       [15:0]   pe_2_2_io_right_data;
  wire       [15:0]   pe_2_2_io_bottom_data;
  wire       [15:0]   pe_2_3_io_right_data;
  wire       [15:0]   pe_2_3_io_bottom_data;
  wire       [15:0]   pe_3_0_io_right_data;
  wire       [15:0]   pe_3_0_io_bottom_data;
  wire       [15:0]   pe_3_1_io_right_data;
  wire       [15:0]   pe_3_1_io_bottom_data;
  wire       [15:0]   pe_3_2_io_right_data;
  wire       [15:0]   pe_3_2_io_bottom_data;
  wire       [15:0]   pe_3_3_io_right_data;
  wire       [15:0]   pe_3_3_io_bottom_data;

  PETest pe_0_0 (
    .io_left_data   (io_left_data_0_data[15:0]  ), //i
    .io_right_data  (pe_0_0_io_right_data[15:0] ), //o
    .io_top_data    (io_top_data_0_data[15:0]   ), //i
    .io_bottom_data (pe_0_0_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_1 (
    .io_left_data   (pe_0_0_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_1_io_right_data[15:0] ), //o
    .io_top_data    (io_top_data_1_data[15:0]   ), //i
    .io_bottom_data (pe_0_1_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_2 (
    .io_left_data   (pe_0_1_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_2_io_right_data[15:0] ), //o
    .io_top_data    (io_top_data_2_data[15:0]   ), //i
    .io_bottom_data (pe_0_2_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_0_3 (
    .io_left_data   (pe_0_2_io_right_data[15:0] ), //i
    .io_right_data  (pe_0_3_io_right_data[15:0] ), //o
    .io_top_data    (io_top_data_3_data[15:0]   ), //i
    .io_bottom_data (pe_0_3_io_bottom_data[15:0]), //o
    .clk            (clk                        ), //i
    .reset          (reset                      )  //i
  );
  PETest pe_1_0 (
    .io_left_data   (io_left_data_1_data[15:0]  ), //i
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
  PETest pe_2_0 (
    .io_left_data   (io_left_data_2_data[15:0]  ), //i
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
  PETest pe_3_0 (
    .io_left_data   (io_left_data_3_data[15:0]  ), //i
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
  assign io_right_data_0_data = pe_0_3_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_data_1_data = pe_1_3_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_data_2_data = pe_2_3_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_right_data_3_data = pe_3_3_io_right_data; // @[SystolicConnect.scala 50:16]
  assign io_bottom_data_0_data = pe_3_0_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_data_1_data = pe_3_1_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_data_2_data = pe_3_2_io_bottom_data; // @[SystolicConnect.scala 56:16]
  assign io_bottom_data_3_data = pe_3_3_io_bottom_data; // @[SystolicConnect.scala 56:16]

endmodule
