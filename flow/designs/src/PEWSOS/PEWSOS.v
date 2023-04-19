// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : PEWSOS
// Git hash  : 687c9bff0f412828a813f4d984c233bda9a99ee1

`timescale 1ns/1ps

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
