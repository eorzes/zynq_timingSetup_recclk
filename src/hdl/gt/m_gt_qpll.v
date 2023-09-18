`timescale 1ps/1ps

// =====================================================================================================================
// This example design wrapper module instantiates the core and any helper blocks which the user chose to exclude from
// the core, connects them as appropriate, and maps enabled ports
// =====================================================================================================================


module m_gt_qpll (
  input  wire sysclk_i
 ,input  wire refclk_i
 ,input  wire reset_i
 ,output wire lock_o
 ,output wire outclk_o
 ,output wire outrefclk_o
);
      // instantiation taken from m_gth_ex/imports/m_gth_example_wrapper.v
     m_gth_gthe4_common_wrapper gthe4_common_wrapper_inst (
        .GTHE4_COMMON_BGBYPASSB         (1'b1),
        .GTHE4_COMMON_BGMONITORENB      (1'b1),
        .GTHE4_COMMON_BGPDB             (1'b1),
        .GTHE4_COMMON_BGRCALOVRD        (5'b11111),
        .GTHE4_COMMON_BGRCALOVRDENB     (1'b1),
        .GTHE4_COMMON_DRPADDR           (16'b0000000000000000),
        .GTHE4_COMMON_DRPCLK            (1'b0),
        .GTHE4_COMMON_DRPDI             (16'b0000000000000000),
        .GTHE4_COMMON_DRPEN             (1'b0),
        .GTHE4_COMMON_DRPWE             (1'b0),
        .GTHE4_COMMON_GTGREFCLK0        (1'b0),
        .GTHE4_COMMON_GTGREFCLK1        (1'b0),
        .GTHE4_COMMON_GTNORTHREFCLK00   (1'b0),
        .GTHE4_COMMON_GTNORTHREFCLK01   (1'b0),
        .GTHE4_COMMON_GTNORTHREFCLK10   (1'b0),
        .GTHE4_COMMON_GTNORTHREFCLK11   (1'b0),
        .GTHE4_COMMON_GTREFCLK00        (1'b0),
        .GTHE4_COMMON_GTREFCLK01        (refclk_i),
        .GTHE4_COMMON_GTREFCLK10        (1'b0),
        .GTHE4_COMMON_GTREFCLK11        (1'b0),
        .GTHE4_COMMON_GTSOUTHREFCLK00   (1'b0),
        .GTHE4_COMMON_GTSOUTHREFCLK01   (1'b0),
        .GTHE4_COMMON_GTSOUTHREFCLK10   (1'b0),
        .GTHE4_COMMON_GTSOUTHREFCLK11   (1'b0),
        .GTHE4_COMMON_PCIERATEQPLL0     (3'b000),
        .GTHE4_COMMON_PCIERATEQPLL1     (3'b000),
        .GTHE4_COMMON_PMARSVD0          (8'b00000000),
        .GTHE4_COMMON_PMARSVD1          (8'b00000000),
        .GTHE4_COMMON_QPLL0CLKRSVD0     (1'b0),
        .GTHE4_COMMON_QPLL0CLKRSVD1     (1'b0),
        .GTHE4_COMMON_QPLL0FBDIV        (8'b00000000),
        .GTHE4_COMMON_QPLL0LOCKDETCLK   (1'b0),
        .GTHE4_COMMON_QPLL0LOCKEN       (1'b0),
        .GTHE4_COMMON_QPLL0PD           (1'b1),
        .GTHE4_COMMON_QPLL0REFCLKSEL    (3'b001),
        .GTHE4_COMMON_QPLL0RESET        (1'b1),
        .GTHE4_COMMON_QPLL1CLKRSVD0     (1'b0),
        .GTHE4_COMMON_QPLL1CLKRSVD1     (1'b0),
        .GTHE4_COMMON_QPLL1FBDIV        (8'b00000000),
        .GTHE4_COMMON_QPLL1LOCKDETCLK   (1'b0),
        .GTHE4_COMMON_QPLL1LOCKEN       (1'b1),
        .GTHE4_COMMON_QPLL1PD           (1'b0),
        .GTHE4_COMMON_QPLL1REFCLKSEL    (3'b001),
        .GTHE4_COMMON_QPLL1RESET        (reset_i),
        .GTHE4_COMMON_QPLLRSVD1         (8'b00000000),
        .GTHE4_COMMON_QPLLRSVD2         (5'b00000),
        .GTHE4_COMMON_QPLLRSVD3         (5'b00000),
        .GTHE4_COMMON_QPLLRSVD4         (8'b00000000),
        .GTHE4_COMMON_RCALENB           (1'b1),
        .GTHE4_COMMON_SDM0DATA          (25'b0000000000000000000000000),
        .GTHE4_COMMON_SDM0RESET         (1'b0),
        .GTHE4_COMMON_SDM0TOGGLE        (1'b0),
        .GTHE4_COMMON_SDM0WIDTH         (2'b00),
        .GTHE4_COMMON_SDM1DATA          (25'b0000000000000000000000000),
        .GTHE4_COMMON_SDM1RESET         (1'b0),
        .GTHE4_COMMON_SDM1TOGGLE        (1'b0),
        .GTHE4_COMMON_SDM1WIDTH         (2'b00),
        .GTHE4_COMMON_TCONGPI           (10'b0000000000),
        .GTHE4_COMMON_TCONPOWERUP       (1'b0),
        .GTHE4_COMMON_TCONRESET         (2'b00),
        .GTHE4_COMMON_TCONRSVDIN1       (2'b00),
        .GTHE4_COMMON_DRPDO             (),
        .GTHE4_COMMON_DRPRDY            (),
        .GTHE4_COMMON_PMARSVDOUT0       (),
        .GTHE4_COMMON_PMARSVDOUT1       (),
        .GTHE4_COMMON_QPLL0FBCLKLOST    (),
        .GTHE4_COMMON_QPLL0LOCK         (),
        .GTHE4_COMMON_QPLL0OUTCLK       (),
        .GTHE4_COMMON_QPLL0OUTREFCLK    (),
        .GTHE4_COMMON_QPLL0REFCLKLOST   (),
        .GTHE4_COMMON_QPLL1FBCLKLOST    (),
        .GTHE4_COMMON_QPLL1LOCK         (lock_o),
        .GTHE4_COMMON_QPLL1OUTCLK       (outclk_o),
        .GTHE4_COMMON_QPLL1OUTREFCLK    (outrefclk_o),
        .GTHE4_COMMON_QPLL1REFCLKLOST   (),
        .GTHE4_COMMON_QPLLDMONITOR0     (),
        .GTHE4_COMMON_QPLLDMONITOR1     (),
        .GTHE4_COMMON_REFCLKOUTMONITOR0 (),
        .GTHE4_COMMON_REFCLKOUTMONITOR1 (),
        .GTHE4_COMMON_RXRECCLK0SEL      (),
        .GTHE4_COMMON_RXRECCLK1SEL      (),
        .GTHE4_COMMON_SDM0FINALOUT      (),
        .GTHE4_COMMON_SDM0TESTDATA      (),
        .GTHE4_COMMON_SDM1FINALOUT      (),
        .GTHE4_COMMON_SDM1TESTDATA      (),
        .GTHE4_COMMON_TCONGPO           (),
        .GTHE4_COMMON_TCONRSVDOUT0      ()
      );
  
endmodule
