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