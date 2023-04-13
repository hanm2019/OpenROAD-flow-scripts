// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : PESARA2
// Git hash  : aeab30821bf33dec846c2049cebcf2d24a28afa4

`timescale 1ns/1ps

module PESARA2 (
  input      [15:0]   io_in_r_data_data,
  input               io_in_r_data_load_store,
  input               io_in_r_data_df_is_ws,
  input               io_in_r_data_stall,
  input      [15:0]   io_in_r_bypass_0_data,
  input               io_in_r_bypass_0_load_store,
  input               io_in_r_bypass_0_df_is_ws,
  input               io_in_r_bypass_0_stall,
  input      [15:0]   io_in_r_bypass_1_data,
  input               io_in_r_bypass_1_load_store,
  input               io_in_r_bypass_1_df_is_ws,
  input               io_in_r_bypass_1_stall,
  input      [15:0]   io_in_r_bypass_2_data,
  input               io_in_r_bypass_2_load_store,
  input               io_in_r_bypass_2_df_is_ws,
  input               io_in_r_bypass_2_stall,
  input      [15:0]   io_in_r_bypass_3_data,
  input               io_in_r_bypass_3_load_store,
  input               io_in_r_bypass_3_df_is_ws,
  input               io_in_r_bypass_3_stall,
  input      [15:0]   io_in_r_bypass_4_data,
  input               io_in_r_bypass_4_load_store,
  input               io_in_r_bypass_4_df_is_ws,
  input               io_in_r_bypass_4_stall,
  input      [15:0]   io_in_r_bypass_5_data,
  input               io_in_r_bypass_5_load_store,
  input               io_in_r_bypass_5_df_is_ws,
  input               io_in_r_bypass_5_stall,
  input      [15:0]   io_in_r_bypass_6_data,
  input               io_in_r_bypass_6_load_store,
  input               io_in_r_bypass_6_df_is_ws,
  input               io_in_r_bypass_6_stall,
  input      [15:0]   io_in_r_bypass_7_data,
  input               io_in_r_bypass_7_load_store,
  input               io_in_r_bypass_7_df_is_ws,
  input               io_in_r_bypass_7_stall,
  input      [15:0]   io_in_r_bypass_8_data,
  input               io_in_r_bypass_8_load_store,
  input               io_in_r_bypass_8_df_is_ws,
  input               io_in_r_bypass_8_stall,
  input      [15:0]   io_in_r_bypass_9_data,
  input               io_in_r_bypass_9_load_store,
  input               io_in_r_bypass_9_df_is_ws,
  input               io_in_r_bypass_9_stall,
  input      [15:0]   io_in_r_bypass_10_data,
  input               io_in_r_bypass_10_load_store,
  input               io_in_r_bypass_10_df_is_ws,
  input               io_in_r_bypass_10_stall,
  input      [15:0]   io_in_r_bypass_11_data,
  input               io_in_r_bypass_11_load_store,
  input               io_in_r_bypass_11_df_is_ws,
  input               io_in_r_bypass_11_stall,
  input      [15:0]   io_in_r_bypass_12_data,
  input               io_in_r_bypass_12_load_store,
  input               io_in_r_bypass_12_df_is_ws,
  input               io_in_r_bypass_12_stall,
  input      [15:0]   io_in_r_bypass_13_data,
  input               io_in_r_bypass_13_load_store,
  input               io_in_r_bypass_13_df_is_ws,
  input               io_in_r_bypass_13_stall,
  input      [15:0]   io_in_r_bypass_14_data,
  input               io_in_r_bypass_14_load_store,
  input               io_in_r_bypass_14_df_is_ws,
  input               io_in_r_bypass_14_stall,
  input      [15:0]   io_in_r_bypass_15_data,
  input               io_in_r_bypass_15_load_store,
  input               io_in_r_bypass_15_df_is_ws,
  input               io_in_r_bypass_15_stall,
  input      [15:0]   io_in_r_bypass_16_data,
  input               io_in_r_bypass_16_load_store,
  input               io_in_r_bypass_16_df_is_ws,
  input               io_in_r_bypass_16_stall,
  input      [15:0]   io_in_r_bypass_17_data,
  input               io_in_r_bypass_17_load_store,
  input               io_in_r_bypass_17_df_is_ws,
  input               io_in_r_bypass_17_stall,
  input      [15:0]   io_in_r_bypass_18_data,
  input               io_in_r_bypass_18_load_store,
  input               io_in_r_bypass_18_df_is_ws,
  input               io_in_r_bypass_18_stall,
  input      [15:0]   io_in_r_bypass_19_data,
  input               io_in_r_bypass_19_load_store,
  input               io_in_r_bypass_19_df_is_ws,
  input               io_in_r_bypass_19_stall,
  input      [15:0]   io_in_r_bypass_20_data,
  input               io_in_r_bypass_20_load_store,
  input               io_in_r_bypass_20_df_is_ws,
  input               io_in_r_bypass_20_stall,
  input      [15:0]   io_in_r_bypass_21_data,
  input               io_in_r_bypass_21_load_store,
  input               io_in_r_bypass_21_df_is_ws,
  input               io_in_r_bypass_21_stall,
  input      [15:0]   io_in_r_bypass_22_data,
  input               io_in_r_bypass_22_load_store,
  input               io_in_r_bypass_22_df_is_ws,
  input               io_in_r_bypass_22_stall,
  input      [15:0]   io_in_r_bypass_23_data,
  input               io_in_r_bypass_23_load_store,
  input               io_in_r_bypass_23_df_is_ws,
  input               io_in_r_bypass_23_stall,
  input      [15:0]   io_in_r_bypass_24_data,
  input               io_in_r_bypass_24_load_store,
  input               io_in_r_bypass_24_df_is_ws,
  input               io_in_r_bypass_24_stall,
  input      [15:0]   io_in_r_bypass_25_data,
  input               io_in_r_bypass_25_load_store,
  input               io_in_r_bypass_25_df_is_ws,
  input               io_in_r_bypass_25_stall,
  input      [15:0]   io_in_r_bypass_26_data,
  input               io_in_r_bypass_26_load_store,
  input               io_in_r_bypass_26_df_is_ws,
  input               io_in_r_bypass_26_stall,
  input      [15:0]   io_in_r_bypass_27_data,
  input               io_in_r_bypass_27_load_store,
  input               io_in_r_bypass_27_df_is_ws,
  input               io_in_r_bypass_27_stall,
  input      [15:0]   io_in_r_bypass_28_data,
  input               io_in_r_bypass_28_load_store,
  input               io_in_r_bypass_28_df_is_ws,
  input               io_in_r_bypass_28_stall,
  input      [15:0]   io_in_r_bypass_29_data,
  input               io_in_r_bypass_29_load_store,
  input               io_in_r_bypass_29_df_is_ws,
  input               io_in_r_bypass_29_stall,
  input      [15:0]   io_in_r_bypass_30_data,
  input               io_in_r_bypass_30_load_store,
  input               io_in_r_bypass_30_df_is_ws,
  input               io_in_r_bypass_30_stall,
  input      [15:0]   io_in_r_bypass_31_data,
  input               io_in_r_bypass_31_load_store,
  input               io_in_r_bypass_31_df_is_ws,
  input               io_in_r_bypass_31_stall,
  input      [31:0]   io_in_r_input_from_bypass,
  output     [15:0]   io_out_r_data_data,
  output              io_out_r_data_load_store,
  output              io_out_r_data_df_is_ws,
  output              io_out_r_data_stall,
  output     [15:0]   io_out_r_bypass_0_data,
  output              io_out_r_bypass_0_load_store,
  output              io_out_r_bypass_0_df_is_ws,
  output              io_out_r_bypass_0_stall,
  output     [15:0]   io_out_r_bypass_1_data,
  output              io_out_r_bypass_1_load_store,
  output              io_out_r_bypass_1_df_is_ws,
  output              io_out_r_bypass_1_stall,
  output     [15:0]   io_out_r_bypass_2_data,
  output              io_out_r_bypass_2_load_store,
  output              io_out_r_bypass_2_df_is_ws,
  output              io_out_r_bypass_2_stall,
  output     [15:0]   io_out_r_bypass_3_data,
  output              io_out_r_bypass_3_load_store,
  output              io_out_r_bypass_3_df_is_ws,
  output              io_out_r_bypass_3_stall,
  output     [15:0]   io_out_r_bypass_4_data,
  output              io_out_r_bypass_4_load_store,
  output              io_out_r_bypass_4_df_is_ws,
  output              io_out_r_bypass_4_stall,
  output     [15:0]   io_out_r_bypass_5_data,
  output              io_out_r_bypass_5_load_store,
  output              io_out_r_bypass_5_df_is_ws,
  output              io_out_r_bypass_5_stall,
  output     [15:0]   io_out_r_bypass_6_data,
  output              io_out_r_bypass_6_load_store,
  output              io_out_r_bypass_6_df_is_ws,
  output              io_out_r_bypass_6_stall,
  output     [15:0]   io_out_r_bypass_7_data,
  output              io_out_r_bypass_7_load_store,
  output              io_out_r_bypass_7_df_is_ws,
  output              io_out_r_bypass_7_stall,
  output     [15:0]   io_out_r_bypass_8_data,
  output              io_out_r_bypass_8_load_store,
  output              io_out_r_bypass_8_df_is_ws,
  output              io_out_r_bypass_8_stall,
  output     [15:0]   io_out_r_bypass_9_data,
  output              io_out_r_bypass_9_load_store,
  output              io_out_r_bypass_9_df_is_ws,
  output              io_out_r_bypass_9_stall,
  output     [15:0]   io_out_r_bypass_10_data,
  output              io_out_r_bypass_10_load_store,
  output              io_out_r_bypass_10_df_is_ws,
  output              io_out_r_bypass_10_stall,
  output     [15:0]   io_out_r_bypass_11_data,
  output              io_out_r_bypass_11_load_store,
  output              io_out_r_bypass_11_df_is_ws,
  output              io_out_r_bypass_11_stall,
  output     [15:0]   io_out_r_bypass_12_data,
  output              io_out_r_bypass_12_load_store,
  output              io_out_r_bypass_12_df_is_ws,
  output              io_out_r_bypass_12_stall,
  output     [15:0]   io_out_r_bypass_13_data,
  output              io_out_r_bypass_13_load_store,
  output              io_out_r_bypass_13_df_is_ws,
  output              io_out_r_bypass_13_stall,
  output     [15:0]   io_out_r_bypass_14_data,
  output              io_out_r_bypass_14_load_store,
  output              io_out_r_bypass_14_df_is_ws,
  output              io_out_r_bypass_14_stall,
  output     [15:0]   io_out_r_bypass_15_data,
  output              io_out_r_bypass_15_load_store,
  output              io_out_r_bypass_15_df_is_ws,
  output              io_out_r_bypass_15_stall,
  output     [15:0]   io_out_r_bypass_16_data,
  output              io_out_r_bypass_16_load_store,
  output              io_out_r_bypass_16_df_is_ws,
  output              io_out_r_bypass_16_stall,
  output     [15:0]   io_out_r_bypass_17_data,
  output              io_out_r_bypass_17_load_store,
  output              io_out_r_bypass_17_df_is_ws,
  output              io_out_r_bypass_17_stall,
  output     [15:0]   io_out_r_bypass_18_data,
  output              io_out_r_bypass_18_load_store,
  output              io_out_r_bypass_18_df_is_ws,
  output              io_out_r_bypass_18_stall,
  output     [15:0]   io_out_r_bypass_19_data,
  output              io_out_r_bypass_19_load_store,
  output              io_out_r_bypass_19_df_is_ws,
  output              io_out_r_bypass_19_stall,
  output     [15:0]   io_out_r_bypass_20_data,
  output              io_out_r_bypass_20_load_store,
  output              io_out_r_bypass_20_df_is_ws,
  output              io_out_r_bypass_20_stall,
  output     [15:0]   io_out_r_bypass_21_data,
  output              io_out_r_bypass_21_load_store,
  output              io_out_r_bypass_21_df_is_ws,
  output              io_out_r_bypass_21_stall,
  output     [15:0]   io_out_r_bypass_22_data,
  output              io_out_r_bypass_22_load_store,
  output              io_out_r_bypass_22_df_is_ws,
  output              io_out_r_bypass_22_stall,
  output     [15:0]   io_out_r_bypass_23_data,
  output              io_out_r_bypass_23_load_store,
  output              io_out_r_bypass_23_df_is_ws,
  output              io_out_r_bypass_23_stall,
  output     [15:0]   io_out_r_bypass_24_data,
  output              io_out_r_bypass_24_load_store,
  output              io_out_r_bypass_24_df_is_ws,
  output              io_out_r_bypass_24_stall,
  output     [15:0]   io_out_r_bypass_25_data,
  output              io_out_r_bypass_25_load_store,
  output              io_out_r_bypass_25_df_is_ws,
  output              io_out_r_bypass_25_stall,
  output     [15:0]   io_out_r_bypass_26_data,
  output              io_out_r_bypass_26_load_store,
  output              io_out_r_bypass_26_df_is_ws,
  output              io_out_r_bypass_26_stall,
  output     [15:0]   io_out_r_bypass_27_data,
  output              io_out_r_bypass_27_load_store,
  output              io_out_r_bypass_27_df_is_ws,
  output              io_out_r_bypass_27_stall,
  output     [15:0]   io_out_r_bypass_28_data,
  output              io_out_r_bypass_28_load_store,
  output              io_out_r_bypass_28_df_is_ws,
  output              io_out_r_bypass_28_stall,
  output     [15:0]   io_out_r_bypass_29_data,
  output              io_out_r_bypass_29_load_store,
  output              io_out_r_bypass_29_df_is_ws,
  output              io_out_r_bypass_29_stall,
  output     [15:0]   io_out_r_bypass_30_data,
  output              io_out_r_bypass_30_load_store,
  output              io_out_r_bypass_30_df_is_ws,
  output              io_out_r_bypass_30_stall,
  output     [15:0]   io_out_r_bypass_31_data,
  output              io_out_r_bypass_31_load_store,
  output              io_out_r_bypass_31_df_is_ws,
  output              io_out_r_bypass_31_stall,
  output     [31:0]   io_out_r_input_from_bypass,
  input      [15:0]   io_in_c_data_data,
  input               io_in_c_data_is_stationary,
  input      [15:0]   io_in_c_bypass_0_data,
  input               io_in_c_bypass_0_is_stationary,
  input      [15:0]   io_in_c_bypass_1_data,
  input               io_in_c_bypass_1_is_stationary,
  input      [15:0]   io_in_c_bypass_2_data,
  input               io_in_c_bypass_2_is_stationary,
  input      [15:0]   io_in_c_bypass_3_data,
  input               io_in_c_bypass_3_is_stationary,
  input      [15:0]   io_in_c_bypass_4_data,
  input               io_in_c_bypass_4_is_stationary,
  input      [15:0]   io_in_c_bypass_5_data,
  input               io_in_c_bypass_5_is_stationary,
  input      [15:0]   io_in_c_bypass_6_data,
  input               io_in_c_bypass_6_is_stationary,
  input      [15:0]   io_in_c_bypass_7_data,
  input               io_in_c_bypass_7_is_stationary,
  input      [15:0]   io_in_c_bypass_8_data,
  input               io_in_c_bypass_8_is_stationary,
  input      [15:0]   io_in_c_bypass_9_data,
  input               io_in_c_bypass_9_is_stationary,
  input      [15:0]   io_in_c_bypass_10_data,
  input               io_in_c_bypass_10_is_stationary,
  input      [15:0]   io_in_c_bypass_11_data,
  input               io_in_c_bypass_11_is_stationary,
  input      [15:0]   io_in_c_bypass_12_data,
  input               io_in_c_bypass_12_is_stationary,
  input      [15:0]   io_in_c_bypass_13_data,
  input               io_in_c_bypass_13_is_stationary,
  input      [15:0]   io_in_c_bypass_14_data,
  input               io_in_c_bypass_14_is_stationary,
  input      [15:0]   io_in_c_bypass_15_data,
  input               io_in_c_bypass_15_is_stationary,
  input      [15:0]   io_in_c_bypass_16_data,
  input               io_in_c_bypass_16_is_stationary,
  input      [15:0]   io_in_c_bypass_17_data,
  input               io_in_c_bypass_17_is_stationary,
  input      [15:0]   io_in_c_bypass_18_data,
  input               io_in_c_bypass_18_is_stationary,
  input      [15:0]   io_in_c_bypass_19_data,
  input               io_in_c_bypass_19_is_stationary,
  input      [15:0]   io_in_c_bypass_20_data,
  input               io_in_c_bypass_20_is_stationary,
  input      [15:0]   io_in_c_bypass_21_data,
  input               io_in_c_bypass_21_is_stationary,
  input      [15:0]   io_in_c_bypass_22_data,
  input               io_in_c_bypass_22_is_stationary,
  input      [15:0]   io_in_c_bypass_23_data,
  input               io_in_c_bypass_23_is_stationary,
  input      [15:0]   io_in_c_bypass_24_data,
  input               io_in_c_bypass_24_is_stationary,
  input      [15:0]   io_in_c_bypass_25_data,
  input               io_in_c_bypass_25_is_stationary,
  input      [15:0]   io_in_c_bypass_26_data,
  input               io_in_c_bypass_26_is_stationary,
  input      [15:0]   io_in_c_bypass_27_data,
  input               io_in_c_bypass_27_is_stationary,
  input      [15:0]   io_in_c_bypass_28_data,
  input               io_in_c_bypass_28_is_stationary,
  input      [15:0]   io_in_c_bypass_29_data,
  input               io_in_c_bypass_29_is_stationary,
  input      [15:0]   io_in_c_bypass_30_data,
  input               io_in_c_bypass_30_is_stationary,
  input      [15:0]   io_in_c_bypass_31_data,
  input               io_in_c_bypass_31_is_stationary,
  input      [31:0]   io_in_c_input_from_bypass,
  output     [15:0]   io_out_c_data_data,
  output              io_out_c_data_is_stationary,
  output     [15:0]   io_out_c_bypass_0_data,
  output              io_out_c_bypass_0_is_stationary,
  output     [15:0]   io_out_c_bypass_1_data,
  output              io_out_c_bypass_1_is_stationary,
  output     [15:0]   io_out_c_bypass_2_data,
  output              io_out_c_bypass_2_is_stationary,
  output     [15:0]   io_out_c_bypass_3_data,
  output              io_out_c_bypass_3_is_stationary,
  output     [15:0]   io_out_c_bypass_4_data,
  output              io_out_c_bypass_4_is_stationary,
  output     [15:0]   io_out_c_bypass_5_data,
  output              io_out_c_bypass_5_is_stationary,
  output     [15:0]   io_out_c_bypass_6_data,
  output              io_out_c_bypass_6_is_stationary,
  output     [15:0]   io_out_c_bypass_7_data,
  output              io_out_c_bypass_7_is_stationary,
  output     [15:0]   io_out_c_bypass_8_data,
  output              io_out_c_bypass_8_is_stationary,
  output     [15:0]   io_out_c_bypass_9_data,
  output              io_out_c_bypass_9_is_stationary,
  output     [15:0]   io_out_c_bypass_10_data,
  output              io_out_c_bypass_10_is_stationary,
  output     [15:0]   io_out_c_bypass_11_data,
  output              io_out_c_bypass_11_is_stationary,
  output     [15:0]   io_out_c_bypass_12_data,
  output              io_out_c_bypass_12_is_stationary,
  output     [15:0]   io_out_c_bypass_13_data,
  output              io_out_c_bypass_13_is_stationary,
  output     [15:0]   io_out_c_bypass_14_data,
  output              io_out_c_bypass_14_is_stationary,
  output     [15:0]   io_out_c_bypass_15_data,
  output              io_out_c_bypass_15_is_stationary,
  output     [15:0]   io_out_c_bypass_16_data,
  output              io_out_c_bypass_16_is_stationary,
  output     [15:0]   io_out_c_bypass_17_data,
  output              io_out_c_bypass_17_is_stationary,
  output     [15:0]   io_out_c_bypass_18_data,
  output              io_out_c_bypass_18_is_stationary,
  output     [15:0]   io_out_c_bypass_19_data,
  output              io_out_c_bypass_19_is_stationary,
  output     [15:0]   io_out_c_bypass_20_data,
  output              io_out_c_bypass_20_is_stationary,
  output     [15:0]   io_out_c_bypass_21_data,
  output              io_out_c_bypass_21_is_stationary,
  output     [15:0]   io_out_c_bypass_22_data,
  output              io_out_c_bypass_22_is_stationary,
  output     [15:0]   io_out_c_bypass_23_data,
  output              io_out_c_bypass_23_is_stationary,
  output     [15:0]   io_out_c_bypass_24_data,
  output              io_out_c_bypass_24_is_stationary,
  output     [15:0]   io_out_c_bypass_25_data,
  output              io_out_c_bypass_25_is_stationary,
  output     [15:0]   io_out_c_bypass_26_data,
  output              io_out_c_bypass_26_is_stationary,
  output     [15:0]   io_out_c_bypass_27_data,
  output              io_out_c_bypass_27_is_stationary,
  output     [15:0]   io_out_c_bypass_28_data,
  output              io_out_c_bypass_28_is_stationary,
  output     [15:0]   io_out_c_bypass_29_data,
  output              io_out_c_bypass_29_is_stationary,
  output     [15:0]   io_out_c_bypass_30_data,
  output              io_out_c_bypass_30_is_stationary,
  output     [15:0]   io_out_c_bypass_31_data,
  output              io_out_c_bypass_31_is_stationary,
  output     [31:0]   io_out_c_input_from_bypass,
  input               clk,
  input               reset
);

  wire       [15:0]   pe_io_out_r_data;
  wire                pe_io_out_r_load_store;
  wire                pe_io_out_r_df_is_ws;
  wire                pe_io_out_r_stall;
  wire       [15:0]   pe_io_out_c_data;
  wire                pe_io_out_c_is_stationary;

  PEWSOS pe (
    .io_in_r_data           (io_in_r_data_data[15:0]   ), //i
    .io_in_r_load_store     (io_in_r_data_load_store   ), //i
    .io_in_r_df_is_ws       (io_in_r_data_df_is_ws     ), //i
    .io_in_r_stall          (io_in_r_data_stall        ), //i
    .io_out_r_data          (pe_io_out_r_data[15:0]    ), //o
    .io_out_r_load_store    (pe_io_out_r_load_store    ), //o
    .io_out_r_df_is_ws      (pe_io_out_r_df_is_ws      ), //o
    .io_out_r_stall         (pe_io_out_r_stall         ), //o
    .io_in_c_data           (io_in_c_data_data[15:0]   ), //i
    .io_in_c_is_stationary  (io_in_c_data_is_stationary), //i
    .io_out_c_data          (pe_io_out_c_data[15:0]    ), //o
    .io_out_c_is_stationary (pe_io_out_c_is_stationary ), //o
    .clk                    (clk                       ), //i
    .reset                  (reset                     )  //i
  );
  assign io_out_r_data_data = pe_io_out_r_data; // @[ArraySARA2.scala 56:17]
  assign io_out_r_data_load_store = pe_io_out_r_load_store; // @[ArraySARA2.scala 56:17]
  assign io_out_r_data_df_is_ws = pe_io_out_r_df_is_ws; // @[ArraySARA2.scala 56:17]
  assign io_out_r_data_stall = pe_io_out_r_stall; // @[ArraySARA2.scala 56:17]
  assign io_out_c_data_data = pe_io_out_c_data; // @[ArraySARA2.scala 57:17]
  assign io_out_c_data_is_stationary = pe_io_out_c_is_stationary; // @[ArraySARA2.scala 57:17]
  assign io_out_r_bypass_0_data = io_in_r_bypass_0_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_0_load_store = io_in_r_bypass_0_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_0_df_is_ws = io_in_r_bypass_0_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_0_stall = io_in_r_bypass_0_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_1_data = io_in_r_bypass_1_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_1_load_store = io_in_r_bypass_1_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_1_df_is_ws = io_in_r_bypass_1_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_1_stall = io_in_r_bypass_1_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_2_data = io_in_r_bypass_2_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_2_load_store = io_in_r_bypass_2_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_2_df_is_ws = io_in_r_bypass_2_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_2_stall = io_in_r_bypass_2_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_3_data = io_in_r_bypass_3_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_3_load_store = io_in_r_bypass_3_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_3_df_is_ws = io_in_r_bypass_3_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_3_stall = io_in_r_bypass_3_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_4_data = io_in_r_bypass_4_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_4_load_store = io_in_r_bypass_4_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_4_df_is_ws = io_in_r_bypass_4_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_4_stall = io_in_r_bypass_4_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_5_data = io_in_r_bypass_5_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_5_load_store = io_in_r_bypass_5_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_5_df_is_ws = io_in_r_bypass_5_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_5_stall = io_in_r_bypass_5_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_6_data = io_in_r_bypass_6_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_6_load_store = io_in_r_bypass_6_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_6_df_is_ws = io_in_r_bypass_6_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_6_stall = io_in_r_bypass_6_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_7_data = io_in_r_bypass_7_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_7_load_store = io_in_r_bypass_7_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_7_df_is_ws = io_in_r_bypass_7_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_7_stall = io_in_r_bypass_7_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_8_data = io_in_r_bypass_8_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_8_load_store = io_in_r_bypass_8_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_8_df_is_ws = io_in_r_bypass_8_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_8_stall = io_in_r_bypass_8_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_9_data = io_in_r_bypass_9_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_9_load_store = io_in_r_bypass_9_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_9_df_is_ws = io_in_r_bypass_9_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_9_stall = io_in_r_bypass_9_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_10_data = io_in_r_bypass_10_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_10_load_store = io_in_r_bypass_10_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_10_df_is_ws = io_in_r_bypass_10_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_10_stall = io_in_r_bypass_10_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_11_data = io_in_r_bypass_11_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_11_load_store = io_in_r_bypass_11_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_11_df_is_ws = io_in_r_bypass_11_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_11_stall = io_in_r_bypass_11_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_12_data = io_in_r_bypass_12_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_12_load_store = io_in_r_bypass_12_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_12_df_is_ws = io_in_r_bypass_12_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_12_stall = io_in_r_bypass_12_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_13_data = io_in_r_bypass_13_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_13_load_store = io_in_r_bypass_13_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_13_df_is_ws = io_in_r_bypass_13_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_13_stall = io_in_r_bypass_13_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_14_data = io_in_r_bypass_14_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_14_load_store = io_in_r_bypass_14_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_14_df_is_ws = io_in_r_bypass_14_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_14_stall = io_in_r_bypass_14_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_15_data = io_in_r_bypass_15_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_15_load_store = io_in_r_bypass_15_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_15_df_is_ws = io_in_r_bypass_15_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_15_stall = io_in_r_bypass_15_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_16_data = io_in_r_bypass_16_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_16_load_store = io_in_r_bypass_16_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_16_df_is_ws = io_in_r_bypass_16_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_16_stall = io_in_r_bypass_16_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_17_data = io_in_r_bypass_17_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_17_load_store = io_in_r_bypass_17_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_17_df_is_ws = io_in_r_bypass_17_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_17_stall = io_in_r_bypass_17_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_18_data = io_in_r_bypass_18_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_18_load_store = io_in_r_bypass_18_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_18_df_is_ws = io_in_r_bypass_18_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_18_stall = io_in_r_bypass_18_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_19_data = io_in_r_bypass_19_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_19_load_store = io_in_r_bypass_19_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_19_df_is_ws = io_in_r_bypass_19_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_19_stall = io_in_r_bypass_19_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_20_data = io_in_r_bypass_20_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_20_load_store = io_in_r_bypass_20_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_20_df_is_ws = io_in_r_bypass_20_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_20_stall = io_in_r_bypass_20_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_21_data = io_in_r_bypass_21_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_21_load_store = io_in_r_bypass_21_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_21_df_is_ws = io_in_r_bypass_21_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_21_stall = io_in_r_bypass_21_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_22_data = io_in_r_bypass_22_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_22_load_store = io_in_r_bypass_22_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_22_df_is_ws = io_in_r_bypass_22_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_22_stall = io_in_r_bypass_22_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_23_data = io_in_r_bypass_23_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_23_load_store = io_in_r_bypass_23_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_23_df_is_ws = io_in_r_bypass_23_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_23_stall = io_in_r_bypass_23_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_24_data = io_in_r_bypass_24_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_24_load_store = io_in_r_bypass_24_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_24_df_is_ws = io_in_r_bypass_24_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_24_stall = io_in_r_bypass_24_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_25_data = io_in_r_bypass_25_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_25_load_store = io_in_r_bypass_25_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_25_df_is_ws = io_in_r_bypass_25_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_25_stall = io_in_r_bypass_25_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_26_data = io_in_r_bypass_26_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_26_load_store = io_in_r_bypass_26_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_26_df_is_ws = io_in_r_bypass_26_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_26_stall = io_in_r_bypass_26_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_27_data = io_in_r_bypass_27_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_27_load_store = io_in_r_bypass_27_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_27_df_is_ws = io_in_r_bypass_27_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_27_stall = io_in_r_bypass_27_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_28_data = io_in_r_bypass_28_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_28_load_store = io_in_r_bypass_28_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_28_df_is_ws = io_in_r_bypass_28_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_28_stall = io_in_r_bypass_28_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_29_data = io_in_r_bypass_29_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_29_load_store = io_in_r_bypass_29_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_29_df_is_ws = io_in_r_bypass_29_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_29_stall = io_in_r_bypass_29_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_30_data = io_in_r_bypass_30_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_30_load_store = io_in_r_bypass_30_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_30_df_is_ws = io_in_r_bypass_30_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_30_stall = io_in_r_bypass_30_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_31_data = io_in_r_bypass_31_data; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_31_load_store = io_in_r_bypass_31_load_store; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_31_df_is_ws = io_in_r_bypass_31_df_is_ws; // @[ArraySARA2.scala 59:19]
  assign io_out_r_bypass_31_stall = io_in_r_bypass_31_stall; // @[ArraySARA2.scala 59:19]
  assign io_out_c_bypass_0_data = io_in_c_bypass_0_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_0_is_stationary = io_in_c_bypass_0_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_1_data = io_in_c_bypass_1_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_1_is_stationary = io_in_c_bypass_1_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_2_data = io_in_c_bypass_2_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_2_is_stationary = io_in_c_bypass_2_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_3_data = io_in_c_bypass_3_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_3_is_stationary = io_in_c_bypass_3_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_4_data = io_in_c_bypass_4_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_4_is_stationary = io_in_c_bypass_4_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_5_data = io_in_c_bypass_5_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_5_is_stationary = io_in_c_bypass_5_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_6_data = io_in_c_bypass_6_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_6_is_stationary = io_in_c_bypass_6_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_7_data = io_in_c_bypass_7_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_7_is_stationary = io_in_c_bypass_7_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_8_data = io_in_c_bypass_8_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_8_is_stationary = io_in_c_bypass_8_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_9_data = io_in_c_bypass_9_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_9_is_stationary = io_in_c_bypass_9_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_10_data = io_in_c_bypass_10_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_10_is_stationary = io_in_c_bypass_10_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_11_data = io_in_c_bypass_11_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_11_is_stationary = io_in_c_bypass_11_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_12_data = io_in_c_bypass_12_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_12_is_stationary = io_in_c_bypass_12_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_13_data = io_in_c_bypass_13_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_13_is_stationary = io_in_c_bypass_13_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_14_data = io_in_c_bypass_14_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_14_is_stationary = io_in_c_bypass_14_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_15_data = io_in_c_bypass_15_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_15_is_stationary = io_in_c_bypass_15_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_16_data = io_in_c_bypass_16_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_16_is_stationary = io_in_c_bypass_16_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_17_data = io_in_c_bypass_17_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_17_is_stationary = io_in_c_bypass_17_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_18_data = io_in_c_bypass_18_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_18_is_stationary = io_in_c_bypass_18_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_19_data = io_in_c_bypass_19_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_19_is_stationary = io_in_c_bypass_19_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_20_data = io_in_c_bypass_20_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_20_is_stationary = io_in_c_bypass_20_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_21_data = io_in_c_bypass_21_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_21_is_stationary = io_in_c_bypass_21_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_22_data = io_in_c_bypass_22_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_22_is_stationary = io_in_c_bypass_22_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_23_data = io_in_c_bypass_23_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_23_is_stationary = io_in_c_bypass_23_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_24_data = io_in_c_bypass_24_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_24_is_stationary = io_in_c_bypass_24_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_25_data = io_in_c_bypass_25_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_25_is_stationary = io_in_c_bypass_25_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_26_data = io_in_c_bypass_26_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_26_is_stationary = io_in_c_bypass_26_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_27_data = io_in_c_bypass_27_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_27_is_stationary = io_in_c_bypass_27_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_28_data = io_in_c_bypass_28_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_28_is_stationary = io_in_c_bypass_28_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_29_data = io_in_c_bypass_29_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_29_is_stationary = io_in_c_bypass_29_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_30_data = io_in_c_bypass_30_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_30_is_stationary = io_in_c_bypass_30_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_31_data = io_in_c_bypass_31_data; // @[ArraySARA2.scala 60:19]
  assign io_out_c_bypass_31_is_stationary = io_in_c_bypass_31_is_stationary; // @[ArraySARA2.scala 60:19]
  assign io_out_r_input_from_bypass = io_in_r_input_from_bypass; // @[ArraySARA2.scala 62:30]
  assign io_out_c_input_from_bypass = io_in_c_input_from_bypass; // @[ArraySARA2.scala 63:30]

endmodule

module PEWSOS (
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

  wire       [15:0]   mac_1_io_psum;
  wire       [15:0]   mac_1_io_weight;
  wire       [15:0]   mac_1_io_result;
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

  Mac mac_1 (
    .io_psum            (mac_1_io_psum[15:0]  ), //i
    .io_weight          (mac_1_io_weight[15:0]), //i
    .io_inputActivation (io_in_r_data[15:0]   ), //i
    .io_result          (mac_1_io_result[15:0])  //o
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
  assign mac_1_io_psum = (io_in_r_df_is_ws ? io_in_c_data : stationary_reg); // @[PEWSOS.scala 72:15]
  assign mac_1_io_weight = (io_in_r_df_is_ws ? stationary_reg : io_in_c_data); // @[PEWSOS.scala 73:17]
  assign mac_result = mac_1_io_result; // @[PEWSOS.scala 75:14]
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

module Mac (
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
