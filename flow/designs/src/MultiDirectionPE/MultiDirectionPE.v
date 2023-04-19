// Generator : SpinalHDL v1.8.0    git head : 4e3563a282582b41f4eaafc503787757251d23ea
// Component : MultiDirectionPE
// Git hash  : b28851e52983dd57eef6b413744d65275d6cb6a0

`timescale 1ns/1ps

module MultiDirectionPE (
  input      [15:0]   io_dataTopIn,
  input      [15:0]   io_dataBottomIn,
  input      [15:0]   io_dataLeftIn,
  input      [15:0]   io_dataRightIn,
  output     [15:0]   io_dataTopOut,
  output     [15:0]   io_dataBottomOut,
  output     [15:0]   io_dataLeftOut,
  output     [15:0]   io_dataRightOut,
  input               io_controlLeftIn_valid,
  input      [1:0]    io_controlLeftIn_payload_MR,
  input      [4:0]    io_controlLeftIn_payload_CR_sel,
  input      [1:0]    io_controlLeftIn_payload_CR_dataflow,
  input      [6:0]    io_controlLeftIn_payload_CtR,
  input               io_controlRightIn_valid,
  input      [1:0]    io_controlRightIn_payload_MR,
  input      [4:0]    io_controlRightIn_payload_CR_sel,
  input      [1:0]    io_controlRightIn_payload_CR_dataflow,
  input      [6:0]    io_controlRightIn_payload_CtR,
  input               io_controlTopIn_valid,
  input      [1:0]    io_controlTopIn_payload_MR,
  input      [4:0]    io_controlTopIn_payload_CR_sel,
  input      [1:0]    io_controlTopIn_payload_CR_dataflow,
  input      [6:0]    io_controlTopIn_payload_CtR,
  input               io_controlBottomIn_valid,
  input      [1:0]    io_controlBottomIn_payload_MR,
  input      [4:0]    io_controlBottomIn_payload_CR_sel,
  input      [1:0]    io_controlBottomIn_payload_CR_dataflow,
  input      [6:0]    io_controlBottomIn_payload_CtR,
  output              io_controlLeftOut_valid,
  output     [1:0]    io_controlLeftOut_payload_MR,
  output     [4:0]    io_controlLeftOut_payload_CR_sel,
  output     [1:0]    io_controlLeftOut_payload_CR_dataflow,
  output     [6:0]    io_controlLeftOut_payload_CtR,
  output              io_controlRightOut_valid,
  output     [1:0]    io_controlRightOut_payload_MR,
  output     [4:0]    io_controlRightOut_payload_CR_sel,
  output     [1:0]    io_controlRightOut_payload_CR_dataflow,
  output     [6:0]    io_controlRightOut_payload_CtR,
  output              io_controlTopOut_valid,
  output     [1:0]    io_controlTopOut_payload_MR,
  output     [4:0]    io_controlTopOut_payload_CR_sel,
  output     [1:0]    io_controlTopOut_payload_CR_dataflow,
  output     [6:0]    io_controlTopOut_payload_CtR,
  output              io_controlBottomOut_valid,
  output     [1:0]    io_controlBottomOut_payload_MR,
  output     [4:0]    io_controlBottomOut_payload_CR_sel,
  output     [1:0]    io_controlBottomOut_payload_CR_dataflow,
  output     [6:0]    io_controlBottomOut_payload_CtR,
  input               clk,
  input               reset
);
  localparam DataFlowH_OS = 2'd0;
  localparam DataFlowH_WS = 2'd1;
  localparam DataFlowH_IS_1 = 2'd2;

  wire       [15:0]   macUnit_io_psum;
  wire       [15:0]   horizontalInputCrossbar_io_dataOut_0;
  wire       [15:0]   horizontalInputCrossbar_io_dataOut_1;
  wire       [15:0]   verticalInputCrossbar_io_dataOut_0;
  wire       [15:0]   verticalInputCrossbar_io_dataOut_1;
  wire       [15:0]   horizontalOutputCrossbar_io_dataOut_0;
  wire       [15:0]   horizontalOutputCrossbar_io_dataOut_1;
  wire       [15:0]   verticalOutputCrossbar_io_dataOut_0;
  wire       [15:0]   verticalOutputCrossbar_io_dataOut_1;
  wire       [15:0]   psumActivationInputCrossbar_io_dataOut_0;
  wire       [15:0]   psumActivationInputCrossbar_io_dataOut_1;
  wire       [15:0]   psumActivationOutputCrossbar_io_dataOut_0;
  wire       [15:0]   psumActivationOutputCrossbar_io_dataOut_1;
  wire       [15:0]   weightPsumCrossbar_io_dataOut_0;
  wire       [15:0]   weightPsumCrossbar_io_dataOut_1;
  wire       [15:0]   macUnit_io_result;
  wire       [15:0]   rightAngleCrossbar_io_dataOut_0;
  wire       [15:0]   rightAngleCrossbar_io_dataOut_1;
  wire       [1:0]    _zz_MRIn_1;
  wire       [1:0]    _zz_MRIn_2;
  wire       [1:0]    _zz_MRIn_3;
  wire       [1:0]    _zz_MRIn_4;
  wire       [1:0]    _zz_MRIn_5;
  wire       [1:0]    _zz_MRIn_6;
  wire       [1:0]    _zz_MRIn_7;
  wire       [0:0]    _zz_MRIn_8;
  wire       [1:0]    _zz_MRIn_9;
  wire       [1:0]    _zz_MRIn_10;
  wire       [1:0]    _zz_MRIn_11;
  wire       [0:0]    _zz_MRIn_12;
  wire       [1:0]    _zz_MRIn_13;
  wire       [1:0]    _zz_MRIn_14;
  wire       [1:0]    _zz_MRIn_15;
  wire       [0:0]    _zz_MRIn_16;
  wire       [1:0]    _zz_MRIn_17;
  wire       [1:0]    _zz_MRIn_18;
  wire       [1:0]    _zz_MRIn_19;
  wire       [0:0]    _zz_MRIn_20;
  wire       [6:0]    _zz_CtRIn_1;
  wire       [6:0]    _zz_CtRIn_2;
  wire       [6:0]    _zz_CtRIn_3;
  wire       [6:0]    _zz_CtRIn_4;
  wire       [6:0]    _zz_CtRIn_5;
  wire       [6:0]    _zz_CtRIn_6;
  wire       [6:0]    _zz_CtRIn_7;
  wire       [0:0]    _zz_CtRIn_8;
  wire       [6:0]    _zz_CtRIn_9;
  wire       [6:0]    _zz_CtRIn_10;
  wire       [6:0]    _zz_CtRIn_11;
  wire       [0:0]    _zz_CtRIn_12;
  wire       [6:0]    _zz_CtRIn_13;
  wire       [6:0]    _zz_CtRIn_14;
  wire       [6:0]    _zz_CtRIn_15;
  wire       [0:0]    _zz_CtRIn_16;
  wire       [6:0]    _zz_CtRIn_17;
  wire       [6:0]    _zz_CtRIn_18;
  wire       [6:0]    _zz_CtRIn_19;
  wire       [0:0]    _zz_CtRIn_20;
  wire       [6:0]    _zz_CtRInSubOne;
  wire       [6:0]    _zz__zz_CRIn_sel_1;
  wire       [6:0]    _zz__zz_CRIn_sel_1_1;
  wire       [6:0]    _zz__zz_CRIn_sel_1_2;
  wire       [6:0]    _zz__zz_CRIn_sel_1_3;
  wire       [6:0]    _zz__zz_CRIn_sel_1_4;
  wire       [6:0]    _zz__zz_CRIn_sel_1_5;
  wire       [6:0]    _zz__zz_CRIn_sel_1_6;
  wire       [0:0]    _zz__zz_CRIn_sel_1_7;
  wire       [6:0]    _zz__zz_CRIn_sel_1_8;
  wire       [6:0]    _zz__zz_CRIn_sel_1_9;
  wire       [6:0]    _zz__zz_CRIn_sel_1_10;
  wire       [0:0]    _zz__zz_CRIn_sel_1_11;
  wire       [6:0]    _zz__zz_CRIn_sel_1_12;
  wire       [6:0]    _zz__zz_CRIn_sel_1_13;
  wire       [6:0]    _zz__zz_CRIn_sel_1_14;
  wire       [0:0]    _zz__zz_CRIn_sel_1_15;
  wire       [6:0]    _zz__zz_CRIn_sel_1_16;
  wire       [6:0]    _zz__zz_CRIn_sel_1_17;
  wire       [6:0]    _zz__zz_CRIn_sel_1_18;
  wire       [0:0]    _zz__zz_CRIn_sel_1_19;
  wire       [15:0]   _zz_SDRIn_1;
  wire       [15:0]   _zz_SDRIn_2;
  wire       [15:0]   _zz_SDRIn_3;
  wire       [15:0]   _zz_SDRIn_4;
  wire       [15:0]   _zz_SDRIn_5;
  wire       [15:0]   _zz_SDRIn_6;
  wire       [15:0]   _zz_SDRIn_7;
  wire       [0:0]    _zz_SDRIn_8;
  wire       [15:0]   _zz_SDRIn_9;
  wire       [15:0]   _zz_SDRIn_10;
  wire       [15:0]   _zz_SDRIn_11;
  wire       [0:0]    _zz_SDRIn_12;
  wire       [15:0]   _zz_SDRIn_13;
  wire       [15:0]   _zz_SDRIn_14;
  wire       [15:0]   _zz_SDRIn_15;
  wire       [0:0]    _zz_SDRIn_16;
  wire       [15:0]   _zz_SDRIn_17;
  wire       [15:0]   _zz_SDRIn_18;
  wire       [15:0]   _zz_SDRIn_19;
  wire       [0:0]    _zz_SDRIn_20;
  wire       [15:0]   _zz_weightPsumReg;
  wire       [15:0]   _zz_io_psum;
  wire       [15:0]   _zz_results;
  wire       [0:0]    _zz_results_1;
  wire       [15:0]   _zz_weightPsumReg_1;
  wire       [0:0]    _zz_weightPsumReg_2;
  wire       [15:0]   _zz_verticalOutputReg0;
  wire       [15:0]   _zz_horizontalOutputReg0;
  wire       [15:0]   _zz_verticalOutputReg1;
  wire       [15:0]   _zz_horizontalOutputReg1;
  wire       [3:0]    _zz_MRIn;
  wire       [1:0]    MRIn;
  wire       [3:0]    _zz_CtRIn;
  wire       [6:0]    CtRIn;
  wire       [6:0]    CtRInSubOne;
  wire                CtRInEqZero;
  wire       [4:0]    CRIn_sel;
  wire       [1:0]    CRIn_dataflow;
  wire       [3:0]    _zz_CRIn_sel;
  wire       [6:0]    _zz_CRIn_sel_1;
  wire       [1:0]    _zz_CRIn_dataflow;
  wire       [3:0]    _zz_SDRIn;
  wire       [15:0]   SDRIn;
  wire       [3:0]    mode;
  wire       [1:0]    nxtMR;
  reg        [6:0]    CtR;
  wire                when_MultiDirectionPE_l110;
  wire       [4:0]    _zz_CR_sel;
  reg        [4:0]    CR_sel;
  reg        [1:0]    CR_dataflow;
  reg        [1:0]    MR;
  reg        [15:0]   weightPsumReg;
  wire                MREqThree;
  wire                dataFlowIsOs;
  wire       [4:0]    sel;
  reg                 leftReg;
  reg                 rightReg;
  reg                 topReg;
  reg                 bottomReg;
  wire                onlyMul;
  wire                horizontalInputSel;
  wire                horizontalOutputSel;
  wire                verticalInputSel;
  wire                verticalOutputSel;
  wire                psumDirectionSel;
  wire                rightAngleSel;
  wire       [15:0]   horizontalComputeData;
  wire       [15:0]   verticalComputeData;
  wire       [15:0]   horizontalPassData;
  wire       [15:0]   verticalPassData;
  wire       [15:0]   activationInput;
  wire       [15:0]   weightInput;
  wire       [15:0]   psumInput;
  wire       [15:0]   macLevel1CrossbarOut0;
  wire       [15:0]   macLevel1CrossbarOut1;
  wire       [15:0]   macLevel2CrossbarOut0;
  wire       [15:0]   macLevel2CrossbarOut1;
  wire       [15:0]   macLevel3CrossbarOut0;
  wire       [15:0]   macLevel3CrossbarOut1;
  wire       [15:0]   results;
  wire                when_MultiDirectionPE_l242;
  reg        [15:0]   verticalOutputReg0;
  reg        [15:0]   horizontalOutputReg0;
  reg        [15:0]   verticalOutputReg1;
  reg        [15:0]   horizontalOutputReg1;
  `ifndef SYNTHESIS
  reg [31:0] io_controlLeftIn_payload_CR_dataflow_string;
  reg [31:0] io_controlRightIn_payload_CR_dataflow_string;
  reg [31:0] io_controlTopIn_payload_CR_dataflow_string;
  reg [31:0] io_controlBottomIn_payload_CR_dataflow_string;
  reg [31:0] io_controlLeftOut_payload_CR_dataflow_string;
  reg [31:0] io_controlRightOut_payload_CR_dataflow_string;
  reg [31:0] io_controlTopOut_payload_CR_dataflow_string;
  reg [31:0] io_controlBottomOut_payload_CR_dataflow_string;
  reg [31:0] CRIn_dataflow_string;
  reg [31:0] _zz_CRIn_dataflow_string;
  reg [31:0] CR_dataflow_string;
  `endif


  assign _zz_MRIn_2 = (_zz_MRIn_3 | _zz_MRIn_13);
  assign _zz_MRIn_1 = _zz_MRIn_2;
  assign _zz_MRIn_4 = (_zz_MRIn_5 | _zz_MRIn_9);
  assign _zz_MRIn_3 = _zz_MRIn_4;
  assign _zz_MRIn_6 = (io_controlLeftIn_payload_MR & _zz_MRIn_7);
  assign _zz_MRIn_5 = _zz_MRIn_6;
  assign _zz_MRIn_8 = _zz_MRIn[0];
  assign _zz_MRIn_7 = {{1{_zz_MRIn_8[0]}}, _zz_MRIn_8};
  assign _zz_MRIn_10 = (io_controlRightIn_payload_MR & _zz_MRIn_11);
  assign _zz_MRIn_9 = _zz_MRIn_10;
  assign _zz_MRIn_12 = _zz_MRIn[1];
  assign _zz_MRIn_11 = {{1{_zz_MRIn_12[0]}}, _zz_MRIn_12};
  assign _zz_MRIn_14 = (io_controlTopIn_payload_MR & _zz_MRIn_15);
  assign _zz_MRIn_13 = _zz_MRIn_14;
  assign _zz_MRIn_16 = _zz_MRIn[2];
  assign _zz_MRIn_15 = {{1{_zz_MRIn_16[0]}}, _zz_MRIn_16};
  assign _zz_MRIn_18 = (io_controlBottomIn_payload_MR & _zz_MRIn_19);
  assign _zz_MRIn_17 = _zz_MRIn_18;
  assign _zz_MRIn_20 = _zz_MRIn[3];
  assign _zz_MRIn_19 = {{1{_zz_MRIn_20[0]}}, _zz_MRIn_20};
  assign _zz_CtRIn_2 = (_zz_CtRIn_3 | _zz_CtRIn_13);
  assign _zz_CtRIn_1 = _zz_CtRIn_2;
  assign _zz_CtRIn_4 = (_zz_CtRIn_5 | _zz_CtRIn_9);
  assign _zz_CtRIn_3 = _zz_CtRIn_4;
  assign _zz_CtRIn_6 = (io_controlLeftIn_payload_CtR & _zz_CtRIn_7);
  assign _zz_CtRIn_5 = _zz_CtRIn_6;
  assign _zz_CtRIn_8 = _zz_CtRIn[0];
  assign _zz_CtRIn_7 = {{6{_zz_CtRIn_8[0]}}, _zz_CtRIn_8};
  assign _zz_CtRIn_10 = (io_controlRightIn_payload_CtR & _zz_CtRIn_11);
  assign _zz_CtRIn_9 = _zz_CtRIn_10;
  assign _zz_CtRIn_12 = _zz_CtRIn[1];
  assign _zz_CtRIn_11 = {{6{_zz_CtRIn_12[0]}}, _zz_CtRIn_12};
  assign _zz_CtRIn_14 = (io_controlTopIn_payload_CtR & _zz_CtRIn_15);
  assign _zz_CtRIn_13 = _zz_CtRIn_14;
  assign _zz_CtRIn_16 = _zz_CtRIn[2];
  assign _zz_CtRIn_15 = {{6{_zz_CtRIn_16[0]}}, _zz_CtRIn_16};
  assign _zz_CtRIn_18 = (io_controlBottomIn_payload_CtR & _zz_CtRIn_19);
  assign _zz_CtRIn_17 = _zz_CtRIn_18;
  assign _zz_CtRIn_20 = _zz_CtRIn[3];
  assign _zz_CtRIn_19 = {{6{_zz_CtRIn_20[0]}}, _zz_CtRIn_20};
  assign _zz_CtRInSubOne = (CtRIn - 7'h01);
  assign _zz__zz_CRIn_sel_1_1 = (_zz__zz_CRIn_sel_1_2 | _zz__zz_CRIn_sel_1_12);
  assign _zz__zz_CRIn_sel_1 = _zz__zz_CRIn_sel_1_1;
  assign _zz__zz_CRIn_sel_1_3 = (_zz__zz_CRIn_sel_1_4 | _zz__zz_CRIn_sel_1_8);
  assign _zz__zz_CRIn_sel_1_2 = _zz__zz_CRIn_sel_1_3;
  assign _zz__zz_CRIn_sel_1_5 = ({io_controlLeftIn_payload_CR_dataflow,io_controlLeftIn_payload_CR_sel} & _zz__zz_CRIn_sel_1_6);
  assign _zz__zz_CRIn_sel_1_4 = _zz__zz_CRIn_sel_1_5;
  assign _zz__zz_CRIn_sel_1_7 = _zz_CRIn_sel[0];
  assign _zz__zz_CRIn_sel_1_6 = {{6{_zz__zz_CRIn_sel_1_7[0]}}, _zz__zz_CRIn_sel_1_7};
  assign _zz__zz_CRIn_sel_1_9 = ({io_controlRightIn_payload_CR_dataflow,io_controlRightIn_payload_CR_sel} & _zz__zz_CRIn_sel_1_10);
  assign _zz__zz_CRIn_sel_1_8 = _zz__zz_CRIn_sel_1_9;
  assign _zz__zz_CRIn_sel_1_11 = _zz_CRIn_sel[1];
  assign _zz__zz_CRIn_sel_1_10 = {{6{_zz__zz_CRIn_sel_1_11[0]}}, _zz__zz_CRIn_sel_1_11};
  assign _zz__zz_CRIn_sel_1_13 = ({io_controlTopIn_payload_CR_dataflow,io_controlTopIn_payload_CR_sel} & _zz__zz_CRIn_sel_1_14);
  assign _zz__zz_CRIn_sel_1_12 = _zz__zz_CRIn_sel_1_13;
  assign _zz__zz_CRIn_sel_1_15 = _zz_CRIn_sel[2];
  assign _zz__zz_CRIn_sel_1_14 = {{6{_zz__zz_CRIn_sel_1_15[0]}}, _zz__zz_CRIn_sel_1_15};
  assign _zz__zz_CRIn_sel_1_17 = ({io_controlBottomIn_payload_CR_dataflow,io_controlBottomIn_payload_CR_sel} & _zz__zz_CRIn_sel_1_18);
  assign _zz__zz_CRIn_sel_1_16 = _zz__zz_CRIn_sel_1_17;
  assign _zz__zz_CRIn_sel_1_19 = _zz_CRIn_sel[3];
  assign _zz__zz_CRIn_sel_1_18 = {{6{_zz__zz_CRIn_sel_1_19[0]}}, _zz__zz_CRIn_sel_1_19};
  assign _zz_SDRIn_2 = (_zz_SDRIn_3 | _zz_SDRIn_13);
  assign _zz_SDRIn_1 = _zz_SDRIn_2;
  assign _zz_SDRIn_4 = (_zz_SDRIn_5 | _zz_SDRIn_9);
  assign _zz_SDRIn_3 = _zz_SDRIn_4;
  assign _zz_SDRIn_6 = (io_dataLeftIn & _zz_SDRIn_7);
  assign _zz_SDRIn_5 = _zz_SDRIn_6;
  assign _zz_SDRIn_8 = _zz_SDRIn[0];
  assign _zz_SDRIn_7 = {{15{_zz_SDRIn_8[0]}}, _zz_SDRIn_8};
  assign _zz_SDRIn_10 = (io_dataRightIn & _zz_SDRIn_11);
  assign _zz_SDRIn_9 = _zz_SDRIn_10;
  assign _zz_SDRIn_12 = _zz_SDRIn[1];
  assign _zz_SDRIn_11 = {{15{_zz_SDRIn_12[0]}}, _zz_SDRIn_12};
  assign _zz_SDRIn_14 = (io_dataTopIn & _zz_SDRIn_15);
  assign _zz_SDRIn_13 = _zz_SDRIn_14;
  assign _zz_SDRIn_16 = _zz_SDRIn[2];
  assign _zz_SDRIn_15 = {{15{_zz_SDRIn_16[0]}}, _zz_SDRIn_16};
  assign _zz_SDRIn_18 = (io_dataBottomIn & _zz_SDRIn_19);
  assign _zz_SDRIn_17 = _zz_SDRIn_18;
  assign _zz_SDRIn_20 = _zz_SDRIn[3];
  assign _zz_SDRIn_19 = {{15{_zz_SDRIn_20[0]}}, _zz_SDRIn_20};
  assign _zz_weightPsumReg = 16'h0;
  assign _zz_io_psum = 16'h0;
  assign _zz_results_1 = dataFlowIsOs;
  assign _zz_results = {{15{_zz_results_1[0]}}, _zz_results_1};
  assign _zz_weightPsumReg_2 = (~ MREqThree);
  assign _zz_weightPsumReg_1 = {{15{_zz_weightPsumReg_2[0]}}, _zz_weightPsumReg_2};
  assign _zz_verticalOutputReg0 = 16'h0;
  assign _zz_horizontalOutputReg0 = 16'h0;
  assign _zz_verticalOutputReg1 = 16'h0;
  assign _zz_horizontalOutputReg1 = 16'h0;
  Crossbar2x2_7 horizontalInputCrossbar (
    .io_dataIn_0  (io_dataRightIn[15:0]                      ), //i
    .io_dataIn_1  (io_dataLeftIn[15:0]                       ), //i
    .io_dataOut_0 (horizontalInputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (horizontalInputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (horizontalInputSel                        )  //i
  );
  Crossbar2x2_7 verticalInputCrossbar (
    .io_dataIn_0  (io_dataBottomIn[15:0]                   ), //i
    .io_dataIn_1  (io_dataTopIn[15:0]                      ), //i
    .io_dataOut_0 (verticalInputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (verticalInputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (verticalInputSel                        )  //i
  );
  Crossbar2x2_7 horizontalOutputCrossbar (
    .io_dataIn_0  (horizontalOutputReg0[15:0]                 ), //i
    .io_dataIn_1  (horizontalOutputReg1[15:0]                 ), //i
    .io_dataOut_0 (horizontalOutputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (horizontalOutputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (horizontalOutputSel                        )  //i
  );
  Crossbar2x2_7 verticalOutputCrossbar (
    .io_dataIn_0  (verticalOutputReg0[15:0]                 ), //i
    .io_dataIn_1  (verticalOutputReg1[15:0]                 ), //i
    .io_dataOut_0 (verticalOutputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (verticalOutputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (verticalOutputSel                        )  //i
  );
  Crossbar2x2_7 psumActivationInputCrossbar (
    .io_dataIn_0  (verticalComputeData[15:0]                     ), //i
    .io_dataIn_1  (horizontalComputeData[15:0]                   ), //i
    .io_dataOut_0 (psumActivationInputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (psumActivationInputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (psumDirectionSel                              )  //i
  );
  Crossbar2x2_7 psumActivationOutputCrossbar (
    .io_dataIn_0  (activationInput[15:0]                          ), //i
    .io_dataIn_1  (macUnit_io_result[15:0]                        ), //i
    .io_dataOut_0 (psumActivationOutputCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (psumActivationOutputCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (psumDirectionSel                               )  //i
  );
  Crossbar2x2_7 weightPsumCrossbar (
    .io_dataIn_0  (macLevel1CrossbarOut1[15:0]          ), //i
    .io_dataIn_1  (weightPsumReg[15:0]                  ), //i
    .io_dataOut_0 (weightPsumCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (weightPsumCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (dataFlowIsOs                         )  //i
  );
  Mac macUnit (
    .io_psum            (macUnit_io_psum[15:0]  ), //i
    .io_weight          (weightInput[15:0]      ), //i
    .io_inputActivation (activationInput[15:0]  ), //i
    .io_result          (macUnit_io_result[15:0])  //o
  );
  Crossbar2x2_7 rightAngleCrossbar (
    .io_dataIn_0  (horizontalPassData[15:0]             ), //i
    .io_dataIn_1  (verticalPassData[15:0]               ), //i
    .io_dataOut_0 (rightAngleCrossbar_io_dataOut_0[15:0]), //o
    .io_dataOut_1 (rightAngleCrossbar_io_dataOut_1[15:0]), //o
    .io_sel       (rightAngleSel                        )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_controlLeftIn_payload_CR_dataflow)
      DataFlowH_OS : io_controlLeftIn_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlLeftIn_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlLeftIn_payload_CR_dataflow_string = "IS_1";
      default : io_controlLeftIn_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlRightIn_payload_CR_dataflow)
      DataFlowH_OS : io_controlRightIn_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlRightIn_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlRightIn_payload_CR_dataflow_string = "IS_1";
      default : io_controlRightIn_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlTopIn_payload_CR_dataflow)
      DataFlowH_OS : io_controlTopIn_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlTopIn_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlTopIn_payload_CR_dataflow_string = "IS_1";
      default : io_controlTopIn_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlBottomIn_payload_CR_dataflow)
      DataFlowH_OS : io_controlBottomIn_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlBottomIn_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlBottomIn_payload_CR_dataflow_string = "IS_1";
      default : io_controlBottomIn_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlLeftOut_payload_CR_dataflow)
      DataFlowH_OS : io_controlLeftOut_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlLeftOut_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlLeftOut_payload_CR_dataflow_string = "IS_1";
      default : io_controlLeftOut_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlRightOut_payload_CR_dataflow)
      DataFlowH_OS : io_controlRightOut_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlRightOut_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlRightOut_payload_CR_dataflow_string = "IS_1";
      default : io_controlRightOut_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlTopOut_payload_CR_dataflow)
      DataFlowH_OS : io_controlTopOut_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlTopOut_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlTopOut_payload_CR_dataflow_string = "IS_1";
      default : io_controlTopOut_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(io_controlBottomOut_payload_CR_dataflow)
      DataFlowH_OS : io_controlBottomOut_payload_CR_dataflow_string = "OS  ";
      DataFlowH_WS : io_controlBottomOut_payload_CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : io_controlBottomOut_payload_CR_dataflow_string = "IS_1";
      default : io_controlBottomOut_payload_CR_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(CRIn_dataflow)
      DataFlowH_OS : CRIn_dataflow_string = "OS  ";
      DataFlowH_WS : CRIn_dataflow_string = "WS  ";
      DataFlowH_IS_1 : CRIn_dataflow_string = "IS_1";
      default : CRIn_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_CRIn_dataflow)
      DataFlowH_OS : _zz_CRIn_dataflow_string = "OS  ";
      DataFlowH_WS : _zz_CRIn_dataflow_string = "WS  ";
      DataFlowH_IS_1 : _zz_CRIn_dataflow_string = "IS_1";
      default : _zz_CRIn_dataflow_string = "????";
    endcase
  end
  always @(*) begin
    case(CR_dataflow)
      DataFlowH_OS : CR_dataflow_string = "OS  ";
      DataFlowH_WS : CR_dataflow_string = "WS  ";
      DataFlowH_IS_1 : CR_dataflow_string = "IS_1";
      default : CR_dataflow_string = "????";
    endcase
  end
  `endif

  assign _zz_MRIn = {io_controlBottomIn_valid,{io_controlTopIn_valid,{io_controlRightIn_valid,io_controlLeftIn_valid}}}; // @[BaseType.scala 299:24]
  assign MRIn = (_zz_MRIn_1 | _zz_MRIn_17); // @[BaseType.scala 299:24]
  assign _zz_CtRIn = {io_controlBottomIn_valid,{io_controlTopIn_valid,{io_controlRightIn_valid,io_controlLeftIn_valid}}}; // @[BaseType.scala 299:24]
  assign CtRIn = (_zz_CtRIn_1 | _zz_CtRIn_17); // @[BaseType.scala 299:24]
  assign CtRInSubOne = _zz_CtRInSubOne; // @[BaseType.scala 318:22]
  assign CtRInEqZero = (CtRIn == 7'h0); // @[BaseType.scala 305:24]
  assign _zz_CRIn_sel = {io_controlBottomIn_valid,{io_controlTopIn_valid,{io_controlRightIn_valid,io_controlLeftIn_valid}}}; // @[BaseType.scala 299:24]
  assign _zz_CRIn_sel_1 = (_zz__zz_CRIn_sel_1 | _zz__zz_CRIn_sel_1_16); // @[BaseType.scala 299:24]
  assign CRIn_sel = _zz_CRIn_sel_1[4 : 0]; // @[Bits.scala 133:56]
  assign _zz_CRIn_dataflow = _zz_CRIn_sel_1[6 : 5]; // @[Enum.scala 186:17]
  assign CRIn_dataflow = _zz_CRIn_dataflow; // @[Enum.scala 188:10]
  assign _zz_SDRIn = {io_controlBottomIn_valid,{io_controlTopIn_valid,{io_controlRightIn_valid,io_controlLeftIn_valid}}}; // @[BaseType.scala 299:24]
  assign SDRIn = (_zz_SDRIn_1 | _zz_SDRIn_17); // @[BaseType.scala 299:24]
  assign mode = (4'b0001 <<< MRIn); // @[BaseType.scala 299:24]
  assign nxtMR = {MRIn[1],(CtRInEqZero ? MRIn[1] : MRIn[0])}; // @[BaseType.scala 299:24]
  assign when_MultiDirectionPE_l110 = mode[1]; // @[BaseType.scala 305:24]
  assign _zz_CR_sel = 5'h0; // @[MultiDirectionPE.scala 21:11]
  assign MREqThree = (MR == 2'b11); // @[BaseType.scala 305:24]
  assign dataFlowIsOs = (CR_dataflow == DataFlowH_OS); // @[BaseType.scala 305:24]
  assign sel = ((MREqThree || (! mode[0])) ? 5'h0 : CR_sel); // @[Expression.scala 1420:25]
  assign io_controlLeftOut_valid = leftReg; // @[MultiDirectionPE.scala 139:19]
  assign io_controlLeftOut_payload_MR = MR; // @[MultiDirectionPE.scala 140:24]
  assign io_controlLeftOut_payload_CR_sel = CR_sel; // @[MultiDirectionPE.scala 142:24]
  assign io_controlLeftOut_payload_CR_dataflow = CR_dataflow; // @[MultiDirectionPE.scala 142:24]
  assign io_controlLeftOut_payload_CtR = CtR; // @[MultiDirectionPE.scala 143:25]
  assign io_controlRightOut_valid = rightReg; // @[MultiDirectionPE.scala 139:19]
  assign io_controlRightOut_payload_MR = MR; // @[MultiDirectionPE.scala 140:24]
  assign io_controlRightOut_payload_CR_sel = CR_sel; // @[MultiDirectionPE.scala 142:24]
  assign io_controlRightOut_payload_CR_dataflow = CR_dataflow; // @[MultiDirectionPE.scala 142:24]
  assign io_controlRightOut_payload_CtR = CtR; // @[MultiDirectionPE.scala 143:25]
  assign io_controlTopOut_valid = topReg; // @[MultiDirectionPE.scala 139:19]
  assign io_controlTopOut_payload_MR = MR; // @[MultiDirectionPE.scala 140:24]
  assign io_controlTopOut_payload_CR_sel = CR_sel; // @[MultiDirectionPE.scala 142:24]
  assign io_controlTopOut_payload_CR_dataflow = CR_dataflow; // @[MultiDirectionPE.scala 142:24]
  assign io_controlTopOut_payload_CtR = CtR; // @[MultiDirectionPE.scala 143:25]
  assign io_controlBottomOut_valid = bottomReg; // @[MultiDirectionPE.scala 139:19]
  assign io_controlBottomOut_payload_MR = MR; // @[MultiDirectionPE.scala 140:24]
  assign io_controlBottomOut_payload_CR_sel = CR_sel; // @[MultiDirectionPE.scala 142:24]
  assign io_controlBottomOut_payload_CR_dataflow = CR_dataflow; // @[MultiDirectionPE.scala 142:24]
  assign io_controlBottomOut_payload_CtR = CtR; // @[MultiDirectionPE.scala 143:25]
  assign onlyMul = sel[4]; // @[BaseType.scala 305:24]
  assign horizontalInputSel = sel[0]; // @[BaseType.scala 305:24]
  assign horizontalOutputSel = sel[0]; // @[BaseType.scala 305:24]
  assign verticalInputSel = sel[1]; // @[BaseType.scala 305:24]
  assign verticalOutputSel = sel[1]; // @[BaseType.scala 305:24]
  assign psumDirectionSel = sel[2]; // @[BaseType.scala 305:24]
  assign rightAngleSel = sel[3]; // @[BaseType.scala 305:24]
  assign horizontalPassData = horizontalInputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 179:22]
  assign horizontalComputeData = horizontalInputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 180:25]
  assign io_dataRightOut = horizontalOutputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 183:19]
  assign io_dataLeftOut = horizontalOutputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 184:18]
  assign verticalComputeData = verticalInputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 188:23]
  assign verticalPassData = verticalInputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 189:20]
  assign io_dataTopOut = verticalOutputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 192:17]
  assign io_dataBottomOut = verticalOutputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 193:20]
  assign macLevel1CrossbarOut0 = psumActivationInputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 206:25]
  assign macLevel1CrossbarOut1 = psumActivationInputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 207:25]
  assign macLevel2CrossbarOut0 = weightPsumCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 214:25]
  assign macLevel2CrossbarOut1 = weightPsumCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 215:25]
  assign weightInput = macLevel2CrossbarOut0; // @[MultiDirectionPE.scala 217:15]
  assign psumInput = macLevel2CrossbarOut1; // @[MultiDirectionPE.scala 218:13]
  assign activationInput = macLevel1CrossbarOut0; // @[MultiDirectionPE.scala 219:19]
  assign macUnit_io_psum = (onlyMul ? _zz_io_psum : psumInput); // @[MultiDirectionPE.scala 225:19]
  assign results = (_zz_results & macUnit_io_result); // @[BaseType.scala 299:24]
  assign when_MultiDirectionPE_l242 = (mode[2] == 1'b0); // @[BaseType.scala 305:24]
  assign macLevel3CrossbarOut0 = psumActivationOutputCrossbar_io_dataOut_0; // @[MultiDirectionPE.scala 256:25]
  assign macLevel3CrossbarOut1 = psumActivationOutputCrossbar_io_dataOut_1; // @[MultiDirectionPE.scala 257:25]
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      CtR <= 7'h0; // @[Data.scala 400:33]
      CR_sel <= _zz_CR_sel; // @[Data.scala 400:33]
      CR_dataflow <= DataFlowH_OS; // @[Data.scala 400:33]
      MR <= 2'b00; // @[Data.scala 400:33]
      weightPsumReg <= _zz_weightPsumReg; // @[Data.scala 400:33]
      leftReg <= 1'b0; // @[Data.scala 400:33]
      rightReg <= 1'b0; // @[Data.scala 400:33]
      topReg <= 1'b0; // @[Data.scala 400:33]
      bottomReg <= 1'b0; // @[Data.scala 400:33]
      verticalOutputReg0 <= _zz_verticalOutputReg0; // @[Data.scala 400:33]
      horizontalOutputReg0 <= _zz_horizontalOutputReg0; // @[Data.scala 400:33]
      verticalOutputReg1 <= _zz_verticalOutputReg1; // @[Data.scala 400:33]
      horizontalOutputReg1 <= _zz_horizontalOutputReg1; // @[Data.scala 400:33]
    end else begin
      CtR <= CtRInSubOne; // @[Reg.scala 39:30]
      if(when_MultiDirectionPE_l110) begin
        CR_sel <= CRIn_sel; // @[MultiDirectionPE.scala 110:23]
        CR_dataflow <= CRIn_dataflow; // @[MultiDirectionPE.scala 110:23]
      end
      MR <= nxtMR; // @[Reg.scala 39:30]
      leftReg <= ((CtRInEqZero && mode[2]) ? io_controlLeftIn_valid : (io_controlRightIn_valid && (! CtRInEqZero))); // @[Reg.scala 39:30]
      rightReg <= ((CtRInEqZero && mode[2]) ? io_controlRightIn_valid : (io_controlLeftIn_valid && (! CtRInEqZero))); // @[Reg.scala 39:30]
      topReg <= ((CtRInEqZero && mode[2]) ? io_controlTopIn_valid : (io_controlBottomIn_valid && (! CtRInEqZero))); // @[Reg.scala 39:30]
      bottomReg <= ((CtRInEqZero && mode[2]) ? io_controlBottomIn_valid : (io_controlTopIn_valid && (! CtRInEqZero))); // @[Reg.scala 39:30]
      if(when_MultiDirectionPE_l242) begin
        weightPsumReg <= (mode[0] ? ((dataFlowIsOs ? results : weightPsumReg) & _zz_weightPsumReg_1) : SDRIn); // @[MultiDirectionPE.scala 243:19]
      end
      verticalOutputReg0 <= (dataFlowIsOs ? verticalComputeData : macLevel3CrossbarOut0); // @[Reg.scala 39:30]
      horizontalOutputReg0 <= (dataFlowIsOs ? horizontalComputeData : macLevel3CrossbarOut1); // @[Reg.scala 39:30]
      verticalOutputReg1 <= rightAngleCrossbar_io_dataOut_0; // @[Reg.scala 39:30]
      horizontalOutputReg1 <= rightAngleCrossbar_io_dataOut_1; // @[Reg.scala 39:30]
    end
  end


endmodule

//Crossbar2x2_7 replaced by Crossbar2x2_7

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

//Crossbar2x2_7 replaced by Crossbar2x2_7

//Crossbar2x2_7 replaced by Crossbar2x2_7

//Crossbar2x2_7 replaced by Crossbar2x2_7

//Crossbar2x2_7 replaced by Crossbar2x2_7

//Crossbar2x2_7 replaced by Crossbar2x2_7

//Crossbar2x2_7 replaced by Crossbar2x2_7

module Crossbar2x2_7 (
  input      [15:0]   io_dataIn_0,
  input      [15:0]   io_dataIn_1,
  output     [15:0]   io_dataOut_0,
  output     [15:0]   io_dataOut_1,
  input               io_sel
);


  assign io_dataOut_0 = (io_sel ? io_dataIn_0 : io_dataIn_1); // @[Crossbar2x2.scala 13:17]
  assign io_dataOut_1 = (io_sel ? io_dataIn_1 : io_dataIn_0); // @[Crossbar2x2.scala 14:17]

endmodule
