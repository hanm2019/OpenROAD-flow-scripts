// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : ArrayGemmini
// Git hash  : 880d730121882c0a9e393151e88289ab6120d150

`timescale 1ns/1ps

module ArrayGemmini (
  input      [15:0]   io_in_r_0_data,
  input               io_in_r_0_load_store,
  input               io_in_r_0_df_is_ws,
  input               io_in_r_0_stall,
  input      [15:0]   io_in_r_1_data,
  input               io_in_r_1_load_store,
  input               io_in_r_1_df_is_ws,
  input               io_in_r_1_stall,
  input      [15:0]   io_in_r_2_data,
  input               io_in_r_2_load_store,
  input               io_in_r_2_df_is_ws,
  input               io_in_r_2_stall,
  input      [15:0]   io_in_r_3_data,
  input               io_in_r_3_load_store,
  input               io_in_r_3_df_is_ws,
  input               io_in_r_3_stall,
  input      [15:0]   io_in_r_4_data,
  input               io_in_r_4_load_store,
  input               io_in_r_4_df_is_ws,
  input               io_in_r_4_stall,
  input      [15:0]   io_in_r_5_data,
  input               io_in_r_5_load_store,
  input               io_in_r_5_df_is_ws,
  input               io_in_r_5_stall,
  input      [15:0]   io_in_r_6_data,
  input               io_in_r_6_load_store,
  input               io_in_r_6_df_is_ws,
  input               io_in_r_6_stall,
  input      [15:0]   io_in_r_7_data,
  input               io_in_r_7_load_store,
  input               io_in_r_7_df_is_ws,
  input               io_in_r_7_stall,
  output     [15:0]   io_out_r_0_data,
  output              io_out_r_0_load_store,
  output              io_out_r_0_df_is_ws,
  output              io_out_r_0_stall,
  output     [15:0]   io_out_r_1_data,
  output              io_out_r_1_load_store,
  output              io_out_r_1_df_is_ws,
  output              io_out_r_1_stall,
  output     [15:0]   io_out_r_2_data,
  output              io_out_r_2_load_store,
  output              io_out_r_2_df_is_ws,
  output              io_out_r_2_stall,
  output     [15:0]   io_out_r_3_data,
  output              io_out_r_3_load_store,
  output              io_out_r_3_df_is_ws,
  output              io_out_r_3_stall,
  output     [15:0]   io_out_r_4_data,
  output              io_out_r_4_load_store,
  output              io_out_r_4_df_is_ws,
  output              io_out_r_4_stall,
  output     [15:0]   io_out_r_5_data,
  output              io_out_r_5_load_store,
  output              io_out_r_5_df_is_ws,
  output              io_out_r_5_stall,
  output     [15:0]   io_out_r_6_data,
  output              io_out_r_6_load_store,
  output              io_out_r_6_df_is_ws,
  output              io_out_r_6_stall,
  output     [15:0]   io_out_r_7_data,
  output              io_out_r_7_load_store,
  output              io_out_r_7_df_is_ws,
  output              io_out_r_7_stall,
  input      [15:0]   io_in_c_0_data,
  input               io_in_c_0_is_stationary,
  input      [15:0]   io_in_c_1_data,
  input               io_in_c_1_is_stationary,
  input      [15:0]   io_in_c_2_data,
  input               io_in_c_2_is_stationary,
  input      [15:0]   io_in_c_3_data,
  input               io_in_c_3_is_stationary,
  input      [15:0]   io_in_c_4_data,
  input               io_in_c_4_is_stationary,
  input      [15:0]   io_in_c_5_data,
  input               io_in_c_5_is_stationary,
  input      [15:0]   io_in_c_6_data,
  input               io_in_c_6_is_stationary,
  input      [15:0]   io_in_c_7_data,
  input               io_in_c_7_is_stationary,
  output     [15:0]   io_out_c_0_data,
  output              io_out_c_0_is_stationary,
  output     [15:0]   io_out_c_1_data,
  output              io_out_c_1_is_stationary,
  output     [15:0]   io_out_c_2_data,
  output              io_out_c_2_is_stationary,
  output     [15:0]   io_out_c_3_data,
  output              io_out_c_3_is_stationary,
  output     [15:0]   io_out_c_4_data,
  output              io_out_c_4_is_stationary,
  output     [15:0]   io_out_c_5_data,
  output              io_out_c_5_is_stationary,
  output     [15:0]   io_out_c_6_data,
  output              io_out_c_6_is_stationary,
  output     [15:0]   io_out_c_7_data,
  output              io_out_c_7_is_stationary,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_mat_0_0_io_out_r_data;
  wire                pe_mat_0_0_io_out_r_load_store;
  wire                pe_mat_0_0_io_out_r_df_is_ws;
  wire                pe_mat_0_0_io_out_r_stall;
  wire       [15:0]   pe_mat_0_0_io_out_c_data;
  wire                pe_mat_0_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_1_io_out_r_data;
  wire                pe_mat_0_1_io_out_r_load_store;
  wire                pe_mat_0_1_io_out_r_df_is_ws;
  wire                pe_mat_0_1_io_out_r_stall;
  wire       [15:0]   pe_mat_0_1_io_out_c_data;
  wire                pe_mat_0_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_2_io_out_r_data;
  wire                pe_mat_0_2_io_out_r_load_store;
  wire                pe_mat_0_2_io_out_r_df_is_ws;
  wire                pe_mat_0_2_io_out_r_stall;
  wire       [15:0]   pe_mat_0_2_io_out_c_data;
  wire                pe_mat_0_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_3_io_out_r_data;
  wire                pe_mat_0_3_io_out_r_load_store;
  wire                pe_mat_0_3_io_out_r_df_is_ws;
  wire                pe_mat_0_3_io_out_r_stall;
  wire       [15:0]   pe_mat_0_3_io_out_c_data;
  wire                pe_mat_0_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_4_io_out_r_data;
  wire                pe_mat_0_4_io_out_r_load_store;
  wire                pe_mat_0_4_io_out_r_df_is_ws;
  wire                pe_mat_0_4_io_out_r_stall;
  wire       [15:0]   pe_mat_0_4_io_out_c_data;
  wire                pe_mat_0_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_5_io_out_r_data;
  wire                pe_mat_0_5_io_out_r_load_store;
  wire                pe_mat_0_5_io_out_r_df_is_ws;
  wire                pe_mat_0_5_io_out_r_stall;
  wire       [15:0]   pe_mat_0_5_io_out_c_data;
  wire                pe_mat_0_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_6_io_out_r_data;
  wire                pe_mat_0_6_io_out_r_load_store;
  wire                pe_mat_0_6_io_out_r_df_is_ws;
  wire                pe_mat_0_6_io_out_r_stall;
  wire       [15:0]   pe_mat_0_6_io_out_c_data;
  wire                pe_mat_0_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_0_7_io_out_r_data;
  wire                pe_mat_0_7_io_out_r_load_store;
  wire                pe_mat_0_7_io_out_r_df_is_ws;
  wire                pe_mat_0_7_io_out_r_stall;
  wire       [15:0]   pe_mat_0_7_io_out_c_data;
  wire                pe_mat_0_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_0_io_out_r_data;
  wire                pe_mat_1_0_io_out_r_load_store;
  wire                pe_mat_1_0_io_out_r_df_is_ws;
  wire                pe_mat_1_0_io_out_r_stall;
  wire       [15:0]   pe_mat_1_0_io_out_c_data;
  wire                pe_mat_1_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_1_io_out_r_data;
  wire                pe_mat_1_1_io_out_r_load_store;
  wire                pe_mat_1_1_io_out_r_df_is_ws;
  wire                pe_mat_1_1_io_out_r_stall;
  wire       [15:0]   pe_mat_1_1_io_out_c_data;
  wire                pe_mat_1_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_2_io_out_r_data;
  wire                pe_mat_1_2_io_out_r_load_store;
  wire                pe_mat_1_2_io_out_r_df_is_ws;
  wire                pe_mat_1_2_io_out_r_stall;
  wire       [15:0]   pe_mat_1_2_io_out_c_data;
  wire                pe_mat_1_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_3_io_out_r_data;
  wire                pe_mat_1_3_io_out_r_load_store;
  wire                pe_mat_1_3_io_out_r_df_is_ws;
  wire                pe_mat_1_3_io_out_r_stall;
  wire       [15:0]   pe_mat_1_3_io_out_c_data;
  wire                pe_mat_1_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_4_io_out_r_data;
  wire                pe_mat_1_4_io_out_r_load_store;
  wire                pe_mat_1_4_io_out_r_df_is_ws;
  wire                pe_mat_1_4_io_out_r_stall;
  wire       [15:0]   pe_mat_1_4_io_out_c_data;
  wire                pe_mat_1_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_5_io_out_r_data;
  wire                pe_mat_1_5_io_out_r_load_store;
  wire                pe_mat_1_5_io_out_r_df_is_ws;
  wire                pe_mat_1_5_io_out_r_stall;
  wire       [15:0]   pe_mat_1_5_io_out_c_data;
  wire                pe_mat_1_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_6_io_out_r_data;
  wire                pe_mat_1_6_io_out_r_load_store;
  wire                pe_mat_1_6_io_out_r_df_is_ws;
  wire                pe_mat_1_6_io_out_r_stall;
  wire       [15:0]   pe_mat_1_6_io_out_c_data;
  wire                pe_mat_1_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_1_7_io_out_r_data;
  wire                pe_mat_1_7_io_out_r_load_store;
  wire                pe_mat_1_7_io_out_r_df_is_ws;
  wire                pe_mat_1_7_io_out_r_stall;
  wire       [15:0]   pe_mat_1_7_io_out_c_data;
  wire                pe_mat_1_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_0_io_out_r_data;
  wire                pe_mat_2_0_io_out_r_load_store;
  wire                pe_mat_2_0_io_out_r_df_is_ws;
  wire                pe_mat_2_0_io_out_r_stall;
  wire       [15:0]   pe_mat_2_0_io_out_c_data;
  wire                pe_mat_2_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_1_io_out_r_data;
  wire                pe_mat_2_1_io_out_r_load_store;
  wire                pe_mat_2_1_io_out_r_df_is_ws;
  wire                pe_mat_2_1_io_out_r_stall;
  wire       [15:0]   pe_mat_2_1_io_out_c_data;
  wire                pe_mat_2_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_2_io_out_r_data;
  wire                pe_mat_2_2_io_out_r_load_store;
  wire                pe_mat_2_2_io_out_r_df_is_ws;
  wire                pe_mat_2_2_io_out_r_stall;
  wire       [15:0]   pe_mat_2_2_io_out_c_data;
  wire                pe_mat_2_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_3_io_out_r_data;
  wire                pe_mat_2_3_io_out_r_load_store;
  wire                pe_mat_2_3_io_out_r_df_is_ws;
  wire                pe_mat_2_3_io_out_r_stall;
  wire       [15:0]   pe_mat_2_3_io_out_c_data;
  wire                pe_mat_2_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_4_io_out_r_data;
  wire                pe_mat_2_4_io_out_r_load_store;
  wire                pe_mat_2_4_io_out_r_df_is_ws;
  wire                pe_mat_2_4_io_out_r_stall;
  wire       [15:0]   pe_mat_2_4_io_out_c_data;
  wire                pe_mat_2_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_5_io_out_r_data;
  wire                pe_mat_2_5_io_out_r_load_store;
  wire                pe_mat_2_5_io_out_r_df_is_ws;
  wire                pe_mat_2_5_io_out_r_stall;
  wire       [15:0]   pe_mat_2_5_io_out_c_data;
  wire                pe_mat_2_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_6_io_out_r_data;
  wire                pe_mat_2_6_io_out_r_load_store;
  wire                pe_mat_2_6_io_out_r_df_is_ws;
  wire                pe_mat_2_6_io_out_r_stall;
  wire       [15:0]   pe_mat_2_6_io_out_c_data;
  wire                pe_mat_2_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_2_7_io_out_r_data;
  wire                pe_mat_2_7_io_out_r_load_store;
  wire                pe_mat_2_7_io_out_r_df_is_ws;
  wire                pe_mat_2_7_io_out_r_stall;
  wire       [15:0]   pe_mat_2_7_io_out_c_data;
  wire                pe_mat_2_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_0_io_out_r_data;
  wire                pe_mat_3_0_io_out_r_load_store;
  wire                pe_mat_3_0_io_out_r_df_is_ws;
  wire                pe_mat_3_0_io_out_r_stall;
  wire       [15:0]   pe_mat_3_0_io_out_c_data;
  wire                pe_mat_3_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_1_io_out_r_data;
  wire                pe_mat_3_1_io_out_r_load_store;
  wire                pe_mat_3_1_io_out_r_df_is_ws;
  wire                pe_mat_3_1_io_out_r_stall;
  wire       [15:0]   pe_mat_3_1_io_out_c_data;
  wire                pe_mat_3_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_2_io_out_r_data;
  wire                pe_mat_3_2_io_out_r_load_store;
  wire                pe_mat_3_2_io_out_r_df_is_ws;
  wire                pe_mat_3_2_io_out_r_stall;
  wire       [15:0]   pe_mat_3_2_io_out_c_data;
  wire                pe_mat_3_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_3_io_out_r_data;
  wire                pe_mat_3_3_io_out_r_load_store;
  wire                pe_mat_3_3_io_out_r_df_is_ws;
  wire                pe_mat_3_3_io_out_r_stall;
  wire       [15:0]   pe_mat_3_3_io_out_c_data;
  wire                pe_mat_3_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_4_io_out_r_data;
  wire                pe_mat_3_4_io_out_r_load_store;
  wire                pe_mat_3_4_io_out_r_df_is_ws;
  wire                pe_mat_3_4_io_out_r_stall;
  wire       [15:0]   pe_mat_3_4_io_out_c_data;
  wire                pe_mat_3_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_5_io_out_r_data;
  wire                pe_mat_3_5_io_out_r_load_store;
  wire                pe_mat_3_5_io_out_r_df_is_ws;
  wire                pe_mat_3_5_io_out_r_stall;
  wire       [15:0]   pe_mat_3_5_io_out_c_data;
  wire                pe_mat_3_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_6_io_out_r_data;
  wire                pe_mat_3_6_io_out_r_load_store;
  wire                pe_mat_3_6_io_out_r_df_is_ws;
  wire                pe_mat_3_6_io_out_r_stall;
  wire       [15:0]   pe_mat_3_6_io_out_c_data;
  wire                pe_mat_3_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_3_7_io_out_r_data;
  wire                pe_mat_3_7_io_out_r_load_store;
  wire                pe_mat_3_7_io_out_r_df_is_ws;
  wire                pe_mat_3_7_io_out_r_stall;
  wire       [15:0]   pe_mat_3_7_io_out_c_data;
  wire                pe_mat_3_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_0_io_out_r_data;
  wire                pe_mat_4_0_io_out_r_load_store;
  wire                pe_mat_4_0_io_out_r_df_is_ws;
  wire                pe_mat_4_0_io_out_r_stall;
  wire       [15:0]   pe_mat_4_0_io_out_c_data;
  wire                pe_mat_4_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_1_io_out_r_data;
  wire                pe_mat_4_1_io_out_r_load_store;
  wire                pe_mat_4_1_io_out_r_df_is_ws;
  wire                pe_mat_4_1_io_out_r_stall;
  wire       [15:0]   pe_mat_4_1_io_out_c_data;
  wire                pe_mat_4_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_2_io_out_r_data;
  wire                pe_mat_4_2_io_out_r_load_store;
  wire                pe_mat_4_2_io_out_r_df_is_ws;
  wire                pe_mat_4_2_io_out_r_stall;
  wire       [15:0]   pe_mat_4_2_io_out_c_data;
  wire                pe_mat_4_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_3_io_out_r_data;
  wire                pe_mat_4_3_io_out_r_load_store;
  wire                pe_mat_4_3_io_out_r_df_is_ws;
  wire                pe_mat_4_3_io_out_r_stall;
  wire       [15:0]   pe_mat_4_3_io_out_c_data;
  wire                pe_mat_4_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_4_io_out_r_data;
  wire                pe_mat_4_4_io_out_r_load_store;
  wire                pe_mat_4_4_io_out_r_df_is_ws;
  wire                pe_mat_4_4_io_out_r_stall;
  wire       [15:0]   pe_mat_4_4_io_out_c_data;
  wire                pe_mat_4_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_5_io_out_r_data;
  wire                pe_mat_4_5_io_out_r_load_store;
  wire                pe_mat_4_5_io_out_r_df_is_ws;
  wire                pe_mat_4_5_io_out_r_stall;
  wire       [15:0]   pe_mat_4_5_io_out_c_data;
  wire                pe_mat_4_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_6_io_out_r_data;
  wire                pe_mat_4_6_io_out_r_load_store;
  wire                pe_mat_4_6_io_out_r_df_is_ws;
  wire                pe_mat_4_6_io_out_r_stall;
  wire       [15:0]   pe_mat_4_6_io_out_c_data;
  wire                pe_mat_4_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_4_7_io_out_r_data;
  wire                pe_mat_4_7_io_out_r_load_store;
  wire                pe_mat_4_7_io_out_r_df_is_ws;
  wire                pe_mat_4_7_io_out_r_stall;
  wire       [15:0]   pe_mat_4_7_io_out_c_data;
  wire                pe_mat_4_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_0_io_out_r_data;
  wire                pe_mat_5_0_io_out_r_load_store;
  wire                pe_mat_5_0_io_out_r_df_is_ws;
  wire                pe_mat_5_0_io_out_r_stall;
  wire       [15:0]   pe_mat_5_0_io_out_c_data;
  wire                pe_mat_5_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_1_io_out_r_data;
  wire                pe_mat_5_1_io_out_r_load_store;
  wire                pe_mat_5_1_io_out_r_df_is_ws;
  wire                pe_mat_5_1_io_out_r_stall;
  wire       [15:0]   pe_mat_5_1_io_out_c_data;
  wire                pe_mat_5_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_2_io_out_r_data;
  wire                pe_mat_5_2_io_out_r_load_store;
  wire                pe_mat_5_2_io_out_r_df_is_ws;
  wire                pe_mat_5_2_io_out_r_stall;
  wire       [15:0]   pe_mat_5_2_io_out_c_data;
  wire                pe_mat_5_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_3_io_out_r_data;
  wire                pe_mat_5_3_io_out_r_load_store;
  wire                pe_mat_5_3_io_out_r_df_is_ws;
  wire                pe_mat_5_3_io_out_r_stall;
  wire       [15:0]   pe_mat_5_3_io_out_c_data;
  wire                pe_mat_5_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_4_io_out_r_data;
  wire                pe_mat_5_4_io_out_r_load_store;
  wire                pe_mat_5_4_io_out_r_df_is_ws;
  wire                pe_mat_5_4_io_out_r_stall;
  wire       [15:0]   pe_mat_5_4_io_out_c_data;
  wire                pe_mat_5_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_5_io_out_r_data;
  wire                pe_mat_5_5_io_out_r_load_store;
  wire                pe_mat_5_5_io_out_r_df_is_ws;
  wire                pe_mat_5_5_io_out_r_stall;
  wire       [15:0]   pe_mat_5_5_io_out_c_data;
  wire                pe_mat_5_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_6_io_out_r_data;
  wire                pe_mat_5_6_io_out_r_load_store;
  wire                pe_mat_5_6_io_out_r_df_is_ws;
  wire                pe_mat_5_6_io_out_r_stall;
  wire       [15:0]   pe_mat_5_6_io_out_c_data;
  wire                pe_mat_5_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_5_7_io_out_r_data;
  wire                pe_mat_5_7_io_out_r_load_store;
  wire                pe_mat_5_7_io_out_r_df_is_ws;
  wire                pe_mat_5_7_io_out_r_stall;
  wire       [15:0]   pe_mat_5_7_io_out_c_data;
  wire                pe_mat_5_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_0_io_out_r_data;
  wire                pe_mat_6_0_io_out_r_load_store;
  wire                pe_mat_6_0_io_out_r_df_is_ws;
  wire                pe_mat_6_0_io_out_r_stall;
  wire       [15:0]   pe_mat_6_0_io_out_c_data;
  wire                pe_mat_6_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_1_io_out_r_data;
  wire                pe_mat_6_1_io_out_r_load_store;
  wire                pe_mat_6_1_io_out_r_df_is_ws;
  wire                pe_mat_6_1_io_out_r_stall;
  wire       [15:0]   pe_mat_6_1_io_out_c_data;
  wire                pe_mat_6_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_2_io_out_r_data;
  wire                pe_mat_6_2_io_out_r_load_store;
  wire                pe_mat_6_2_io_out_r_df_is_ws;
  wire                pe_mat_6_2_io_out_r_stall;
  wire       [15:0]   pe_mat_6_2_io_out_c_data;
  wire                pe_mat_6_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_3_io_out_r_data;
  wire                pe_mat_6_3_io_out_r_load_store;
  wire                pe_mat_6_3_io_out_r_df_is_ws;
  wire                pe_mat_6_3_io_out_r_stall;
  wire       [15:0]   pe_mat_6_3_io_out_c_data;
  wire                pe_mat_6_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_4_io_out_r_data;
  wire                pe_mat_6_4_io_out_r_load_store;
  wire                pe_mat_6_4_io_out_r_df_is_ws;
  wire                pe_mat_6_4_io_out_r_stall;
  wire       [15:0]   pe_mat_6_4_io_out_c_data;
  wire                pe_mat_6_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_5_io_out_r_data;
  wire                pe_mat_6_5_io_out_r_load_store;
  wire                pe_mat_6_5_io_out_r_df_is_ws;
  wire                pe_mat_6_5_io_out_r_stall;
  wire       [15:0]   pe_mat_6_5_io_out_c_data;
  wire                pe_mat_6_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_6_io_out_r_data;
  wire                pe_mat_6_6_io_out_r_load_store;
  wire                pe_mat_6_6_io_out_r_df_is_ws;
  wire                pe_mat_6_6_io_out_r_stall;
  wire       [15:0]   pe_mat_6_6_io_out_c_data;
  wire                pe_mat_6_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_6_7_io_out_r_data;
  wire                pe_mat_6_7_io_out_r_load_store;
  wire                pe_mat_6_7_io_out_r_df_is_ws;
  wire                pe_mat_6_7_io_out_r_stall;
  wire       [15:0]   pe_mat_6_7_io_out_c_data;
  wire                pe_mat_6_7_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_0_io_out_r_data;
  wire                pe_mat_7_0_io_out_r_load_store;
  wire                pe_mat_7_0_io_out_r_df_is_ws;
  wire                pe_mat_7_0_io_out_r_stall;
  wire       [15:0]   pe_mat_7_0_io_out_c_data;
  wire                pe_mat_7_0_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_1_io_out_r_data;
  wire                pe_mat_7_1_io_out_r_load_store;
  wire                pe_mat_7_1_io_out_r_df_is_ws;
  wire                pe_mat_7_1_io_out_r_stall;
  wire       [15:0]   pe_mat_7_1_io_out_c_data;
  wire                pe_mat_7_1_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_2_io_out_r_data;
  wire                pe_mat_7_2_io_out_r_load_store;
  wire                pe_mat_7_2_io_out_r_df_is_ws;
  wire                pe_mat_7_2_io_out_r_stall;
  wire       [15:0]   pe_mat_7_2_io_out_c_data;
  wire                pe_mat_7_2_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_3_io_out_r_data;
  wire                pe_mat_7_3_io_out_r_load_store;
  wire                pe_mat_7_3_io_out_r_df_is_ws;
  wire                pe_mat_7_3_io_out_r_stall;
  wire       [15:0]   pe_mat_7_3_io_out_c_data;
  wire                pe_mat_7_3_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_4_io_out_r_data;
  wire                pe_mat_7_4_io_out_r_load_store;
  wire                pe_mat_7_4_io_out_r_df_is_ws;
  wire                pe_mat_7_4_io_out_r_stall;
  wire       [15:0]   pe_mat_7_4_io_out_c_data;
  wire                pe_mat_7_4_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_5_io_out_r_data;
  wire                pe_mat_7_5_io_out_r_load_store;
  wire                pe_mat_7_5_io_out_r_df_is_ws;
  wire                pe_mat_7_5_io_out_r_stall;
  wire       [15:0]   pe_mat_7_5_io_out_c_data;
  wire                pe_mat_7_5_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_6_io_out_r_data;
  wire                pe_mat_7_6_io_out_r_load_store;
  wire                pe_mat_7_6_io_out_r_df_is_ws;
  wire                pe_mat_7_6_io_out_r_stall;
  wire       [15:0]   pe_mat_7_6_io_out_c_data;
  wire                pe_mat_7_6_io_out_c_is_stationary;
  wire       [15:0]   pe_mat_7_7_io_out_r_data;
  wire                pe_mat_7_7_io_out_r_load_store;
  wire                pe_mat_7_7_io_out_r_df_is_ws;
  wire                pe_mat_7_7_io_out_r_stall;
  wire       [15:0]   pe_mat_7_7_io_out_c_data;
  wire                pe_mat_7_7_io_out_c_is_stationary;

  PEWSOS_63 pe_mat_0_0 (
    .io_in_r_data           (io_in_r_0_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_0_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_0_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_0_stall                  ), //i
    .io_out_r_data          (pe_mat_0_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_0_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_0_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_0_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_1 (
    .io_in_r_data           (pe_mat_0_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_1_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_1_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_1_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_2 (
    .io_in_r_data           (pe_mat_0_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_2_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_2_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_2_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_3 (
    .io_in_r_data           (pe_mat_0_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_3_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_3_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_3_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_4 (
    .io_in_r_data           (pe_mat_0_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_4_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_4_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_4_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_5 (
    .io_in_r_data           (pe_mat_0_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_5_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_5_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_5_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_6 (
    .io_in_r_data           (pe_mat_0_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_6_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_6_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_6_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_0_7 (
    .io_in_r_data           (pe_mat_0_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_0_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_0_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_0_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_0_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_0_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_0_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_0_7_io_out_r_stall        ), //o
    .io_in_c_data           (io_in_c_7_data[15:0]             ), //i
    .io_in_c_is_stationary  (io_in_c_7_is_stationary          ), //i
    .io_out_c_data          (pe_mat_0_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_0_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_0 (
    .io_in_r_data           (io_in_r_1_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_1_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_1_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_1_stall                  ), //i
    .io_out_r_data          (pe_mat_1_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_1 (
    .io_in_r_data           (pe_mat_1_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_2 (
    .io_in_r_data           (pe_mat_1_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_3 (
    .io_in_r_data           (pe_mat_1_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_4 (
    .io_in_r_data           (pe_mat_1_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_5 (
    .io_in_r_data           (pe_mat_1_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_6 (
    .io_in_r_data           (pe_mat_1_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_1_7 (
    .io_in_r_data           (pe_mat_1_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_1_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_1_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_1_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_1_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_1_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_1_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_1_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_0_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_0_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_1_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_1_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_0 (
    .io_in_r_data           (io_in_r_2_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_2_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_2_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_2_stall                  ), //i
    .io_out_r_data          (pe_mat_2_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_1 (
    .io_in_r_data           (pe_mat_2_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_2 (
    .io_in_r_data           (pe_mat_2_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_3 (
    .io_in_r_data           (pe_mat_2_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_4 (
    .io_in_r_data           (pe_mat_2_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_5 (
    .io_in_r_data           (pe_mat_2_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_6 (
    .io_in_r_data           (pe_mat_2_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_2_7 (
    .io_in_r_data           (pe_mat_2_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_2_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_2_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_2_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_2_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_2_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_2_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_2_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_1_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_1_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_2_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_2_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_0 (
    .io_in_r_data           (io_in_r_3_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_3_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_3_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_3_stall                  ), //i
    .io_out_r_data          (pe_mat_3_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_1 (
    .io_in_r_data           (pe_mat_3_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_2 (
    .io_in_r_data           (pe_mat_3_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_3 (
    .io_in_r_data           (pe_mat_3_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_4 (
    .io_in_r_data           (pe_mat_3_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_5 (
    .io_in_r_data           (pe_mat_3_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_6 (
    .io_in_r_data           (pe_mat_3_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_3_7 (
    .io_in_r_data           (pe_mat_3_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_3_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_3_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_3_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_3_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_3_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_3_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_3_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_2_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_2_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_3_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_3_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_0 (
    .io_in_r_data           (io_in_r_4_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_4_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_4_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_4_stall                  ), //i
    .io_out_r_data          (pe_mat_4_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_1 (
    .io_in_r_data           (pe_mat_4_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_2 (
    .io_in_r_data           (pe_mat_4_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_3 (
    .io_in_r_data           (pe_mat_4_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_4 (
    .io_in_r_data           (pe_mat_4_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_5 (
    .io_in_r_data           (pe_mat_4_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_6 (
    .io_in_r_data           (pe_mat_4_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_4_7 (
    .io_in_r_data           (pe_mat_4_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_4_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_4_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_4_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_4_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_4_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_4_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_4_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_3_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_3_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_4_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_4_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_0 (
    .io_in_r_data           (io_in_r_5_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_5_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_5_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_5_stall                  ), //i
    .io_out_r_data          (pe_mat_5_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_1 (
    .io_in_r_data           (pe_mat_5_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_2 (
    .io_in_r_data           (pe_mat_5_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_3 (
    .io_in_r_data           (pe_mat_5_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_4 (
    .io_in_r_data           (pe_mat_5_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_5 (
    .io_in_r_data           (pe_mat_5_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_6 (
    .io_in_r_data           (pe_mat_5_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_5_7 (
    .io_in_r_data           (pe_mat_5_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_5_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_5_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_5_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_5_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_5_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_5_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_5_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_4_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_4_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_5_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_5_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_0 (
    .io_in_r_data           (io_in_r_6_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_6_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_6_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_6_stall                  ), //i
    .io_out_r_data          (pe_mat_6_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_1 (
    .io_in_r_data           (pe_mat_6_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_2 (
    .io_in_r_data           (pe_mat_6_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_3 (
    .io_in_r_data           (pe_mat_6_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_4 (
    .io_in_r_data           (pe_mat_6_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_5 (
    .io_in_r_data           (pe_mat_6_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_6 (
    .io_in_r_data           (pe_mat_6_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_6_7 (
    .io_in_r_data           (pe_mat_6_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_6_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_6_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_6_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_6_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_6_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_6_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_6_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_5_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_5_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_6_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_6_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_0 (
    .io_in_r_data           (io_in_r_7_data[15:0]             ), //i
    .io_in_r_load_store     (io_in_r_7_load_store             ), //i
    .io_in_r_df_is_ws       (io_in_r_7_df_is_ws               ), //i
    .io_in_r_stall          (io_in_r_7_stall                  ), //i
    .io_out_r_data          (pe_mat_7_0_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_0_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_0_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_0_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_0_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_0_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_0_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_0_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_1 (
    .io_in_r_data           (pe_mat_7_0_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_0_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_0_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_0_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_1_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_1_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_1_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_1_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_1_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_1_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_1_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_1_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_2 (
    .io_in_r_data           (pe_mat_7_1_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_1_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_1_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_1_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_2_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_2_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_2_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_2_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_2_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_2_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_2_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_2_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_3 (
    .io_in_r_data           (pe_mat_7_2_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_2_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_2_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_2_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_3_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_3_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_3_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_3_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_3_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_3_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_3_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_3_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_4 (
    .io_in_r_data           (pe_mat_7_3_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_3_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_3_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_3_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_4_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_4_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_4_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_4_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_4_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_4_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_4_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_4_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_5 (
    .io_in_r_data           (pe_mat_7_4_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_4_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_4_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_4_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_5_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_5_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_5_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_5_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_5_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_5_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_5_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_5_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_6 (
    .io_in_r_data           (pe_mat_7_5_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_5_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_5_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_5_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_6_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_6_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_6_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_6_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_6_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_6_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_6_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_6_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  PEWSOS_63 pe_mat_7_7 (
    .io_in_r_data           (pe_mat_7_6_io_out_r_data[15:0]   ), //i
    .io_in_r_load_store     (pe_mat_7_6_io_out_r_load_store   ), //i
    .io_in_r_df_is_ws       (pe_mat_7_6_io_out_r_df_is_ws     ), //i
    .io_in_r_stall          (pe_mat_7_6_io_out_r_stall        ), //i
    .io_out_r_data          (pe_mat_7_7_io_out_r_data[15:0]   ), //o
    .io_out_r_load_store    (pe_mat_7_7_io_out_r_load_store   ), //o
    .io_out_r_df_is_ws      (pe_mat_7_7_io_out_r_df_is_ws     ), //o
    .io_out_r_stall         (pe_mat_7_7_io_out_r_stall        ), //o
    .io_in_c_data           (pe_mat_6_7_io_out_c_data[15:0]   ), //i
    .io_in_c_is_stationary  (pe_mat_6_7_io_out_c_is_stationary), //i
    .io_out_c_data          (pe_mat_7_7_io_out_c_data[15:0]   ), //o
    .io_out_c_is_stationary (pe_mat_7_7_io_out_c_is_stationary), //o
    .clk                    (clk                              ), //i
    .reset                  (reset                            )  //i
  );
  assign io_out_r_0_data = pe_mat_0_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_0_load_store = pe_mat_0_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_0_df_is_ws = pe_mat_0_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_0_stall = pe_mat_0_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_data = pe_mat_1_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_load_store = pe_mat_1_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_df_is_ws = pe_mat_1_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_1_stall = pe_mat_1_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_data = pe_mat_2_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_load_store = pe_mat_2_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_df_is_ws = pe_mat_2_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_2_stall = pe_mat_2_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_data = pe_mat_3_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_load_store = pe_mat_3_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_df_is_ws = pe_mat_3_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_3_stall = pe_mat_3_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_4_data = pe_mat_4_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_4_load_store = pe_mat_4_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_4_df_is_ws = pe_mat_4_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_4_stall = pe_mat_4_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_5_data = pe_mat_5_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_5_load_store = pe_mat_5_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_5_df_is_ws = pe_mat_5_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_5_stall = pe_mat_5_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_6_data = pe_mat_6_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_6_load_store = pe_mat_6_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_6_df_is_ws = pe_mat_6_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_6_stall = pe_mat_6_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_r_7_data = pe_mat_7_7_io_out_r_data; // @[SystolicConnect.scala 50:16]
  assign io_out_r_7_load_store = pe_mat_7_7_io_out_r_load_store; // @[SystolicConnect.scala 50:16]
  assign io_out_r_7_df_is_ws = pe_mat_7_7_io_out_r_df_is_ws; // @[SystolicConnect.scala 50:16]
  assign io_out_r_7_stall = pe_mat_7_7_io_out_r_stall; // @[SystolicConnect.scala 50:16]
  assign io_out_c_0_data = pe_mat_7_0_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_0_is_stationary = pe_mat_7_0_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_1_data = pe_mat_7_1_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_1_is_stationary = pe_mat_7_1_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_2_data = pe_mat_7_2_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_2_is_stationary = pe_mat_7_2_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_3_data = pe_mat_7_3_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_3_is_stationary = pe_mat_7_3_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_4_data = pe_mat_7_4_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_4_is_stationary = pe_mat_7_4_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_5_data = pe_mat_7_5_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_5_is_stationary = pe_mat_7_5_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_6_data = pe_mat_7_6_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_6_is_stationary = pe_mat_7_6_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]
  assign io_out_c_7_data = pe_mat_7_7_io_out_c_data; // @[SystolicConnect.scala 56:16]
  assign io_out_c_7_is_stationary = pe_mat_7_7_io_out_c_is_stationary; // @[SystolicConnect.scala 56:16]

endmodule

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

//PEWSOS_63 replaced by PEWSOS_63

module PEWSOS_63 (
  input      [15:0]   io_in_r_data,
  input               io_in_r_load_store,
  input               io_in_r_df_is_ws,
  input               io_in_r_stall,
  output     [15:0]   io_out_r_data,
  output              io_out_r_load_store,
  output              io_out_r_df_is_ws,
  output              io_out_r_stall,
  input      [15:0]   io_in_c_data,
  input               io_in_c_is_stationary,
  output     [15:0]   io_out_c_data,
  output              io_out_c_is_stationary,
  input               clk,
  input               reset
);

  wire       [15:0]   mac_64_io_psum;
  wire       [15:0]   mac_64_io_weight;
  wire       [15:0]   mac_64_io_result;
  wire                not_stall;
  wire       [15:0]   mac_result;
  reg        [15:0]   stationary;
  reg                 stationary_en;
  wire                when_PEWSOS_l68;
  reg        [15:0]   stationary_reg;
  reg                 io_in_r_stall_regNext;
  reg        [15:0]   io_in_r_data_regNextWhen;
  reg                 io_in_r_load_store_regNextWhen;
  reg                 io_in_r_df_is_ws_regNextWhen;
  reg        [15:0]   out_c_data;
  reg                 out_c_is_stationary;
  wire                when_PEWSOS_l87;
  wire                when_PEWSOS_l95;
  reg        [15:0]   out_c_data_regNextWhen;
  reg                 out_c_is_stationary_regNextWhen;

  Mac_63 mac_64 (
    .io_psum            (mac_64_io_psum[15:0]  ), //i
    .io_weight          (mac_64_io_weight[15:0]), //i
    .io_inputActivation (io_in_r_data[15:0]    ), //i
    .io_result          (mac_64_io_result[15:0])  //o
  );
  assign not_stall = (! io_in_r_stall); // @[BaseType.scala 299:24]
  always @(*) begin
    if(io_in_r_df_is_ws) begin
      stationary = io_in_c_data; // @[PEWSOS.scala 57:16]
    end else begin
      if(io_in_c_is_stationary) begin
        stationary = 16'h0; // @[PEWSOS.scala 61:18]
      end else begin
        stationary = mac_result; // @[PEWSOS.scala 64:18]
      end
    end
  end

  always @(*) begin
    if(io_in_r_df_is_ws) begin
      stationary_en = io_in_r_load_store; // @[PEWSOS.scala 58:19]
    end else begin
      if(io_in_c_is_stationary) begin
        stationary_en = io_in_r_load_store; // @[PEWSOS.scala 62:21]
      end else begin
        stationary_en = 1'b1; // @[PEWSOS.scala 65:21]
      end
    end
  end

  assign when_PEWSOS_l68 = (stationary_en && not_stall); // @[BaseType.scala 305:24]
  assign mac_64_io_psum = (io_in_r_df_is_ws ? io_in_c_data : stationary_reg); // @[PEWSOS.scala 72:15]
  assign mac_64_io_weight = (io_in_r_df_is_ws ? stationary_reg : io_in_c_data); // @[PEWSOS.scala 73:17]
  assign mac_result = mac_64_io_result; // @[PEWSOS.scala 75:14]
  assign io_out_r_stall = io_in_r_stall_regNext; // @[PEWSOS.scala 78:18]
  assign io_out_r_data = io_in_r_data_regNextWhen; // @[PEWSOS.scala 79:17]
  assign io_out_r_load_store = io_in_r_load_store_regNextWhen; // @[PEWSOS.scala 80:23]
  assign io_out_r_df_is_ws = io_in_r_df_is_ws_regNextWhen; // @[PEWSOS.scala 81:21]
  assign when_PEWSOS_l87 = (io_in_c_is_stationary && (! io_in_r_load_store)); // @[BaseType.scala 305:24]
  always @(*) begin
    if(io_in_r_df_is_ws) begin
      if(when_PEWSOS_l87) begin
        out_c_data = io_in_c_data; // @[PEWSOS.scala 88:18]
      end else begin
        out_c_data = mac_result; // @[PEWSOS.scala 91:18]
      end
    end else begin
      if(when_PEWSOS_l95) begin
        out_c_data = io_in_c_data; // @[PEWSOS.scala 96:18]
      end else begin
        if(io_in_r_load_store) begin
          out_c_data = stationary_reg; // @[PEWSOS.scala 99:18]
        end else begin
          out_c_data = io_in_c_data; // @[PEWSOS.scala 102:18]
        end
      end
    end
  end

  always @(*) begin
    if(io_in_r_df_is_ws) begin
      if(when_PEWSOS_l87) begin
        out_c_is_stationary = 1'b1; // @[PEWSOS.scala 89:27]
      end else begin
        out_c_is_stationary = 1'b0; // @[PEWSOS.scala 92:27]
      end
    end else begin
      if(when_PEWSOS_l95) begin
        out_c_is_stationary = 1'b1; // @[PEWSOS.scala 97:27]
      end else begin
        if(io_in_r_load_store) begin
          out_c_is_stationary = 1'b1; // @[PEWSOS.scala 100:27]
        end else begin
          out_c_is_stationary = 1'b0; // @[PEWSOS.scala 103:27]
        end
      end
    end
  end

  assign when_PEWSOS_l95 = (io_in_c_is_stationary && (! io_in_r_load_store)); // @[BaseType.scala 305:24]
  assign io_out_c_data = out_c_data_regNextWhen; // @[PEWSOS.scala 106:17]
  assign io_out_c_is_stationary = out_c_is_stationary_regNextWhen; // @[PEWSOS.scala 107:26]
  always @(posedge clk) begin
    if(when_PEWSOS_l68) begin
      stationary_reg <= stationary; // @[PEWSOS.scala 68:35]
    end
    io_in_r_stall_regNext <= io_in_r_stall; // @[Reg.scala 39:30]
    if(not_stall) begin
      io_in_r_data_regNextWhen <= io_in_r_data; // @[PEWSOS.scala 79:31]
    end
    if(not_stall) begin
      io_in_r_load_store_regNextWhen <= io_in_r_load_store; // @[PEWSOS.scala 80:37]
    end
    if(not_stall) begin
      io_in_r_df_is_ws_regNextWhen <= io_in_r_df_is_ws; // @[PEWSOS.scala 81:35]
    end
    if(not_stall) begin
      out_c_data_regNextWhen <= out_c_data; // @[PEWSOS.scala 106:31]
    end
    if(not_stall) begin
      out_c_is_stationary_regNextWhen <= out_c_is_stationary; // @[PEWSOS.scala 107:40]
    end
  end


endmodule

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

//Mac_63 replaced by Mac_63

module Mac_63 (
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
