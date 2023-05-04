// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayTPU
// Git hash  : 880d730121882c0a9e393151e88289ab6120d150

`timescale 1ns/1ps

module ArrayTPU (
  input      [15:0]   io_in_r_0_data,
  input               io_in_r_0_stop_weight,
  input               io_in_r_0_stall,
  input      [15:0]   io_in_r_1_data,
  input               io_in_r_1_stop_weight,
  input               io_in_r_1_stall,
  input      [15:0]   io_in_r_2_data,
  input               io_in_r_2_stop_weight,
  input               io_in_r_2_stall,
  input      [15:0]   io_in_r_3_data,
  input               io_in_r_3_stop_weight,
  input               io_in_r_3_stall,
  output     [15:0]   io_out_r_0_data,
  output              io_out_r_0_stop_weight,
  output              io_out_r_0_stall,
  output     [15:0]   io_out_r_1_data,
  output              io_out_r_1_stop_weight,
  output              io_out_r_1_stall,
  output     [15:0]   io_out_r_2_data,
  output              io_out_r_2_stop_weight,
  output              io_out_r_2_stall,
  output     [15:0]   io_out_r_3_data,
  output              io_out_r_3_stop_weight,
  output              io_out_r_3_stall,
  input      [15:0]   io_in_c_0_data,
  input               io_in_c_0_is_weight,
  input      [15:0]   io_in_c_1_data,
  input               io_in_c_1_is_weight,
  input      [15:0]   io_in_c_2_data,
  input               io_in_c_2_is_weight,
  input      [15:0]   io_in_c_3_data,
  input               io_in_c_3_is_weight,
  output     [15:0]   io_out_c_0_data,
  output              io_out_c_0_is_weight,
  output     [15:0]   io_out_c_1_data,
  output              io_out_c_1_is_weight,
  output     [15:0]   io_out_c_2_data,
  output              io_out_c_2_is_weight,
  output     [15:0]   io_out_c_3_data,
  output              io_out_c_3_is_weight,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_mat_0_0_io_out_r_data;
  wire                pe_mat_0_0_io_out_r_stop_weight;
  wire                pe_mat_0_0_io_out_r_stall;
  wire       [15:0]   pe_mat_0_0_io_out_c_data;
  wire                pe_mat_0_0_io_out_c_is_weight;
  wire       [15:0]   pe_mat_0_1_io_out_r_data;
  wire                pe_mat_0_1_io_out_r_stop_weight;
  wire                pe_mat_0_1_io_out_r_stall;
  wire       [15:0]   pe_mat_0_1_io_out_c_data;
  wire                pe_mat_0_1_io_out_c_is_weight;
  wire       [15:0]   pe_mat_0_2_io_out_r_data;
  wire                pe_mat_0_2_io_out_r_stop_weight;
  wire                pe_mat_0_2_io_out_r_stall;
  wire       [15:0]   pe_mat_0_2_io_out_c_data;
  wire                pe_mat_0_2_io_out_c_is_weight;
  wire       [15:0]   pe_mat_0_3_io_out_r_data;
  wire                pe_mat_0_3_io_out_r_stop_weight;
  wire                pe_mat_0_3_io_out_r_stall;
  wire       [15:0]   pe_mat_0_3_io_out_c_data;
  wire                pe_mat_0_3_io_out_c_is_weight;
  wire       [15:0]   pe_mat_1_0_io_out_r_data;
  wire                pe_mat_1_0_io_out_r_stop_weight;
  wire                pe_mat_1_0_io_out_r_stall;
  wire       [15:0]   pe_mat_1_0_io_out_c_data;
  wire                pe_mat_1_0_io_out_c_is_weight;
  wire       [15:0]   pe_mat_1_1_io_out_r_data;
  wire                pe_mat_1_1_io_out_r_stop_weight;
  wire                pe_mat_1_1_io_out_r_stall;
  wire       [15:0]   pe_mat_1_1_io_out_c_data;
  wire                pe_mat_1_1_io_out_c_is_weight;
  wire       [15:0]   pe_mat_1_2_io_out_r_data;
  wire                pe_mat_1_2_io_out_r_stop_weight;
  wire                pe_mat_1_2_io_out_r_stall;
  wire       [15:0]   pe_mat_1_2_io_out_c_data;
  wire                pe_mat_1_2_io_out_c_is_weight;
  wire       [15:0]   pe_mat_1_3_io_out_r_data;
  wire                pe_mat_1_3_io_out_r_stop_weight;
  wire                pe_mat_1_3_io_out_r_stall;
  wire       [15:0]   pe_mat_1_3_io_out_c_data;
  wire                pe_mat_1_3_io_out_c_is_weight;
  wire       [15:0]   pe_mat_2_0_io_out_r_data;
  wire                pe_mat_2_0_io_out_r_stop_weight;
  wire                pe_mat_2_0_io_out_r_stall;
  wire       [15:0]   pe_mat_2_0_io_out_c_data;
  wire                pe_mat_2_0_io_out_c_is_weight;
  wire       [15:0]   pe_mat_2_1_io_out_r_data;
  wire                pe_mat_2_1_io_out_r_stop_weight;
  wire                pe_mat_2_1_io_out_r_stall;
  wire       [15:0]   pe_mat_2_1_io_out_c_data;
  wire                pe_mat_2_1_io_out_c_is_weight;
  wire       [15:0]   pe_mat_2_2_io_out_r_data;
  wire                pe_mat_2_2_io_out_r_stop_weight;
  wire                pe_mat_2_2_io_out_r_stall;
  wire       [15:0]   pe_mat_2_2_io_out_c_data;
  wire                pe_mat_2_2_io_out_c_is_weight;
  wire       [15:0]   pe_mat_2_3_io_out_r_data;
  wire                pe_mat_2_3_io_out_r_stop_weight;
  wire                pe_mat_2_3_io_out_r_stall;
  wire       [15:0]   pe_mat_2_3_io_out_c_data;
  wire                pe_mat_2_3_io_out_c_is_weight;
  wire       [15:0]   pe_mat_3_0_io_out_r_data;
  wire                pe_mat_3_0_io_out_r_stop_weight;
  wire                pe_mat_3_0_io_out_r_stall;
  wire       [15:0]   pe_mat_3_0_io_out_c_data;
  wire                pe_mat_3_0_io_out_c_is_weight;
  wire       [15:0]   pe_mat_3_1_io_out_r_data;
  wire                pe_mat_3_1_io_out_r_stop_weight;
  wire                pe_mat_3_1_io_out_r_stall;
  wire       [15:0]   pe_mat_3_1_io_out_c_data;
  wire                pe_mat_3_1_io_out_c_is_weight;
  wire       [15:0]   pe_mat_3_2_io_out_r_data;
  wire                pe_mat_3_2_io_out_r_stop_weight;
  wire                pe_mat_3_2_io_out_r_stall;
  wire       [15:0]   pe_mat_3_2_io_out_c_data;
  wire                pe_mat_3_2_io_out_c_is_weight;
  wire       [15:0]   pe_mat_3_3_io_out_r_data;
  wire                pe_mat_3_3_io_out_r_stop_weight;
  wire                pe_mat_3_3_io_out_r_stall;
  wire       [15:0]   pe_mat_3_3_io_out_c_data;
  wire                pe_mat_3_3_io_out_c_is_weight;

  PEWS_15 pe_mat_0_0 (
    .io_in_r_data         (io_in_r_0_data[15:0]           ), //i
    .io_in_r_stop_weight  (io_in_r_0_stop_weight          ), //i
    .io_in_r_stall        (io_in_r_0_stall                ), //i
    .io_out_r_data        (pe_mat_0_0_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_0_0_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_0_0_io_out_r_stall      ), //o
    .io_in_c_data         (io_in_c_0_data[15:0]           ), //i
    .io_in_c_is_weight    (io_in_c_0_is_weight            ), //i
    .io_out_c_data        (pe_mat_0_0_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_0_0_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_0_1 (
    .io_in_r_data         (pe_mat_0_0_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_0_0_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_0_0_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_0_1_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_0_1_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_0_1_io_out_r_stall      ), //o
    .io_in_c_data         (io_in_c_1_data[15:0]           ), //i
    .io_in_c_is_weight    (io_in_c_1_is_weight            ), //i
    .io_out_c_data        (pe_mat_0_1_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_0_1_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_0_2 (
    .io_in_r_data         (pe_mat_0_1_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_0_1_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_0_1_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_0_2_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_0_2_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_0_2_io_out_r_stall      ), //o
    .io_in_c_data         (io_in_c_2_data[15:0]           ), //i
    .io_in_c_is_weight    (io_in_c_2_is_weight            ), //i
    .io_out_c_data        (pe_mat_0_2_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_0_2_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_0_3 (
    .io_in_r_data         (pe_mat_0_2_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_0_2_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_0_2_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_0_3_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_0_3_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_0_3_io_out_r_stall      ), //o
    .io_in_c_data         (io_in_c_3_data[15:0]           ), //i
    .io_in_c_is_weight    (io_in_c_3_is_weight            ), //i
    .io_out_c_data        (pe_mat_0_3_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_0_3_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_1_0 (
    .io_in_r_data         (io_in_r_1_data[15:0]           ), //i
    .io_in_r_stop_weight  (io_in_r_1_stop_weight          ), //i
    .io_in_r_stall        (io_in_r_1_stall                ), //i
    .io_out_r_data        (pe_mat_1_0_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_1_0_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_1_0_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_0_0_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_0_0_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_1_0_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_1_0_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_1_1 (
    .io_in_r_data         (pe_mat_1_0_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_1_0_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_1_0_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_1_1_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_1_1_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_1_1_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_0_1_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_0_1_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_1_1_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_1_1_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_1_2 (
    .io_in_r_data         (pe_mat_1_1_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_1_1_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_1_1_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_1_2_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_1_2_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_1_2_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_0_2_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_0_2_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_1_2_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_1_2_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_1_3 (
    .io_in_r_data         (pe_mat_1_2_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_1_2_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_1_2_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_1_3_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_1_3_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_1_3_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_0_3_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_0_3_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_1_3_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_1_3_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_2_0 (
    .io_in_r_data         (io_in_r_2_data[15:0]           ), //i
    .io_in_r_stop_weight  (io_in_r_2_stop_weight          ), //i
    .io_in_r_stall        (io_in_r_2_stall                ), //i
    .io_out_r_data        (pe_mat_2_0_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_2_0_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_2_0_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_1_0_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_1_0_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_2_0_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_2_0_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_2_1 (
    .io_in_r_data         (pe_mat_2_0_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_2_0_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_2_0_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_2_1_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_2_1_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_2_1_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_1_1_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_1_1_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_2_1_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_2_1_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_2_2 (
    .io_in_r_data         (pe_mat_2_1_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_2_1_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_2_1_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_2_2_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_2_2_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_2_2_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_1_2_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_1_2_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_2_2_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_2_2_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_2_3 (
    .io_in_r_data         (pe_mat_2_2_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_2_2_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_2_2_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_2_3_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_2_3_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_2_3_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_1_3_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_1_3_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_2_3_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_2_3_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_3_0 (
    .io_in_r_data         (io_in_r_3_data[15:0]           ), //i
    .io_in_r_stop_weight  (io_in_r_3_stop_weight          ), //i
    .io_in_r_stall        (io_in_r_3_stall                ), //i
    .io_out_r_data        (pe_mat_3_0_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_3_0_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_3_0_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_2_0_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_2_0_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_3_0_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_3_0_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_3_1 (
    .io_in_r_data         (pe_mat_3_0_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_3_0_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_3_0_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_3_1_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_3_1_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_3_1_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_2_1_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_2_1_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_3_1_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_3_1_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_3_2 (
    .io_in_r_data         (pe_mat_3_1_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_3_1_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_3_1_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_3_2_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_3_2_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_3_2_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_2_2_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_2_2_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_3_2_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_3_2_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  PEWS_15 pe_mat_3_3 (
    .io_in_r_data         (pe_mat_3_2_io_out_r_data[15:0] ), //i
    .io_in_r_stop_weight  (pe_mat_3_2_io_out_r_stop_weight), //i
    .io_in_r_stall        (pe_mat_3_2_io_out_r_stall      ), //i
    .io_out_r_data        (pe_mat_3_3_io_out_r_data[15:0] ), //o
    .io_out_r_stop_weight (pe_mat_3_3_io_out_r_stop_weight), //o
    .io_out_r_stall       (pe_mat_3_3_io_out_r_stall      ), //o
    .io_in_c_data         (pe_mat_2_3_io_out_c_data[15:0] ), //i
    .io_in_c_is_weight    (pe_mat_2_3_io_out_c_is_weight  ), //i
    .io_out_c_data        (pe_mat_3_3_io_out_c_data[15:0] ), //o
    .io_out_c_is_weight   (pe_mat_3_3_io_out_c_is_weight  ), //o
    .clk                  (clk                            ), //i
    .reset                (reset                          )  //i
  );
  assign io_out_r_0_data = pe_mat_0_3_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_0_stop_weight = pe_mat_0_3_io_out_r_stop_weight; // @[SystolicConnect.scala 50:16]
  assign io_out_r_0_stall = pe_mat_0_3_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_data = pe_mat_1_3_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_stop_weight = pe_mat_1_3_io_out_r_stop_weight; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_stall = pe_mat_1_3_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_data = pe_mat_2_3_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_stop_weight = pe_mat_2_3_io_out_r_stop_weight; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_stall = pe_mat_2_3_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_data = pe_mat_3_3_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_stop_weight = pe_mat_3_3_io_out_r_stop_weight; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_stall = pe_mat_3_3_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_c_0_data = pe_mat_3_0_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_0_is_weight = pe_mat_3_0_io_out_c_is_weight; // @[SystolicConnect.scala 56:16]
  assign io_out_c_1_data = pe_mat_3_1_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_1_is_weight = pe_mat_3_1_io_out_c_is_weight; // @[SystolicConnect.scala 56:16]
  assign io_out_c_2_data = pe_mat_3_2_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_2_is_weight = pe_mat_3_2_io_out_c_is_weight; // @[SystolicConnect.scala 56:16]
  assign io_out_c_3_data = pe_mat_3_3_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_3_is_weight = pe_mat_3_3_io_out_c_is_weight; // @[SystolicConnect.scala 56:16]

endmodule

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

//PEWS_15 replaced by PEWS_15

module PEWS_15 (
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

  wire       [15:0]   mac_16_io_result;
  wire                ctrl_not_stall;
  wire                when_PEWS_l54;
  reg        [15:0]   weight_reg;
  reg                 io_in_r_stall_regNext;
  reg        [15:0]   io_in_r_data_regNextWhen;
  reg                 io_in_r_stop_weight_regNextWhen;
  reg        [15:0]   _zz_io_out_c_data;
  reg                 io_in_c_is_weight_regNextWhen;

  Mac_15 mac_16 (
    .io_psum            (io_in_c_data[15:0]    ), //i
    .io_weight          (weight_reg[15:0]      ), //i
    .io_inputActivation (io_in_r_data[15:0]    ), //i
    .io_result          (mac_16_io_result[15:0])  //o
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
      _zz_io_out_c_data <= (io_in_c_is_weight ? io_in_c_data : mac_16_io_result); // @[PEWS.scala 69:31]
    end
    if(ctrl_not_stall) begin
      io_in_c_is_weight_regNextWhen <= io_in_c_is_weight; // @[PEWS.scala 70:36]
    end
  end


endmodule

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

//Mac_15 replaced by Mac_15

module Mac_15 (
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
