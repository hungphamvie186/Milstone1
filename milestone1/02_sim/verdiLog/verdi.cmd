verdiSetActWin -dock widgetDock_<Message>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "design_test"
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 54654 11788
schZoomIn -win $_nSchema3 -pos 55056 11738
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSetOptions -win $_nSchema3 -portName on
schSetOptions -win $_nSchema3 -pinName on
schSetOptions -win $_nSchema3 -instName on
schSelect -win $_nSchema3 -signal "change_rst"
schZoomOut -win $_nSchema3 -pos 45594 13438
schZoomOut -win $_nSchema3 -pos 45593 13437
schZoomIn -win $_nSchema3 -pos 45353 7738
schZoomIn -win $_nSchema3 -pos 45353 7737
schZoomOut -win $_nSchema3 -pos 37018 8621
schZoomOut -win $_nSchema3 -pos 37018 8565
schDeselectAll -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 61516 10810
schZoomIn -win $_nSchema3 -pos 61517 10811
schZoomIn -win $_nSchema3 -pos 61207 10655
schZoomIn -win $_nSchema3 -pos 61208 10655
schZoomIn -win $_nSchema3 -pos 61209 10655
schZoomIn -win $_nSchema3 -pos 61201 10655
schZoomIn -win $_nSchema3 -pos 61200 10654
schZoomIn -win $_nSchema3 -pos 61201 10654
schZoomOut -win $_nSchema3 -pos 60751 10733
schZoomOut -win $_nSchema3 -pos 60750 10734
schZoomOut -win $_nSchema3 -pos 60750 10734
schZoomOut -win $_nSchema3 -pos 55290 8619
schZoomOut -win $_nSchema3 -pos 55291 8619
schZoomOut -win $_nSchema3 -pos 55364 8491
schZoomOut -win $_nSchema3 -pos 55365 8491
schZoomOut -win $_nSchema3 -pos 22522 7287
schZoomOut -win $_nSchema3 -pos 22543 7328
schSetOptions -win $_nSchema3 -localNetName on
schSetOptions -win $_nSchema3 -completeName on
schZoomOut -win $_nSchema3 -pos 33082 4180
schZoomIn -win $_nSchema3 -pos 14651 6789
schZoomIn -win $_nSchema3 -pos 14651 6788
schZoomOut -win $_nSchema3 -pos 16027 6480
schZoomOut -win $_nSchema3 -pos 36839 8880
schZoomIn -win $_nSchema3 -pos 33681 9758
schSelect -win $_nSchema3 -inst "sub"
schPushViewIn -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 45148 10299
schZoomOut -win $_nSchema3 -pos 45110 10261
schZoomIn -win $_nSchema3 -pos 54763 12192
schSelect -win $_nSchema3 -port "A\[5:0\]"
schPopViewUp -win $_nSchema3
schDeselectAll -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 36911 5949
schSelect -win $_nSchema3 -inst "comp"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "a\[5:0\]"
schPopViewUp -win $_nSchema3
schDeselectAll -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 16914 15393
schZoomIn -win $_nSchema3 -pos 16913 15393
schZoomIn -win $_nSchema3 -pos 16913 15393
schZoomOut -win $_nSchema3 -pos 27054 12875
schZoomOut -win $_nSchema3 -pos 27052 12876
schZoomOut -win $_nSchema3 -pos 27052 12875
schZoomOut -win $_nSchema3 -pos 27052 12875
schZoomOut -win $_nSchema3 -pos 27051 12874
schZoomOut -win $_nSchema3 -pos 27049 12874
schSelect -win $_nSchema3 -inst "sub"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "B\[5:0\]"
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -inst "change_reg"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "D\[5:0\]"
schPopViewUp -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 38865 9457
schZoomIn -win $_nSchema3 -pos 38865 9457
schZoomIn -win $_nSchema3 -pos 38840 9457
schZoomIn -win $_nSchema3 -pos 38729 9475
schDeselectAll -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 38882 9531
schZoomOut -win $_nSchema3 -pos 38881 9531
schZoomIn -win $_nSchema3 -pos 56168 10532
schZoomIn -win $_nSchema3 -pos 56168 10548
schSelect -win $_nSchema3 -inst "change_decoder"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "in\[5:0\]"
schPopViewUp -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 42664 11727
schZoomOut -win $_nSchema3 -pos 42664 11727
schZoomOut -win $_nSchema3 -pos 42664 11727
schZoomOut -win $_nSchema3 -pos 42664 11727
schSelect -win $_nSchema3 -inst "FSM_block"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "FSM:FSM0:32:104:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 25 1920 872 -win $_nState4
fsmResizeWindow 0 25 1920 872 -win $_nState4
schSelect -win $_nSchema3 -inst "FSM:FSM0:32:104:FSM"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "FSM:FSM0:32:104:FSM"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "start"
schSelect -win $_nSchema3 -port "start"
schPopViewUp -win $_nSchema3
fsmResizeWindow 0 25 1285 872 -win $_nState4
verdiDockWidgetRestore -dock windowDock_nSchema_3
verdiSetActWin -win $_nState_4
verdiDockWidgetSetCurTab -dock windowDock_nState_4
fsmResizeWindow 0 25 1285 409 -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmResizeWindow 0 25 1285 409 -win $_nState4
fsmPrint \
         -paper A4 -header "%h @ %t" -footer "%w" -file "/earth/mars/mars04/workspace/School_Pj/milestone1/02_sim/print.pdf" \
         -win $_nState4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 30093 9737
schZoomIn -win $_nSchema3 -pos 30092 9736
schZoomIn -win $_nSchema3 -pos 30091 9736
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "FSM_block"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "start"
schPopViewUp -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 14919 8395
schZoomOut -win $_nSchema3 -pos 14918 8394
schZoomOut -win $_nSchema3 -pos 14917 8395
schZoomOut -win $_nSchema3 -pos 40969 -382
schZoomIn -win $_nSchema3 -pos 46456 4206
schPanRight -win $_nSchema3
schPanRight -win $_nSchema3
schPanRight -win $_nSchema3
schPanRight -win $_nSchema3
schPanLeft -win $_nSchema3
schZoomOut -win $_nSchema3 -pos 33363 764
schZoomIn -win $_nSchema3 -pos 51411 2774
schCreateWindow -win $_nSchema3
schDeselectAll -win $_nSchema3
verdiDockWidgetRestore -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_5
verdiSetActWin -win $_nSchema_3
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/earth/mars/mars04/workspace/School_Pj/milestone1/02_sim/design_test.fsdb}
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiDockWidgetRestore -dock windowDock_nWave_2
verdiSetActWin -win $_nSchema_5
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "rst_n"
schPopViewUp -win $_nSchema3
schZoom {-1857} {-4762} {20342} {5997} -win $_nSchema3
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
schSelect -win $_nSchema3 -inst "dut"
verdiSetActWin -win $_nSchema_3
schDeselectAll -win $_nSchema3
verdiDockWidgetMaximize -dock windowDock_nSchema_3
verdiDockWidgetRestore -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_5
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "FSM_block"
schPushViewIn -win $_nSchema3
srcHBSelect "design_test.dut" -win $_nTrace1
srcSetScope "design_test.dut" -delim "." -win $_nTrace1
srcHBSelect "design_test.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "design_test.dut.comp" -win $_nTrace1
srcHBSelect "design_test.dut.encoder_block" -win $_nTrace1
srcHBSelect "design_test.dut.mux_block" -win $_nTrace1
srcHBSelect "design_test.dut.FSM_block" -win $_nTrace1
srcSetScope "design_test.dut.FSM_block" -delim "." -win $_nTrace1
srcHBSelect "design_test.dut.FSM_block" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "state" -line 66 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 25.236388 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcHBSelect "design_test.dut.sub" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "design_test.dut.total_reg" -win $_nTrace1
srcHBSelect "design_test.dut.FSM_block" -win $_nTrace1
srcHBSelect "design_test.dut.adder" -win $_nTrace1
srcHBSelect "design_test.dut.change_decoder" -win $_nTrace1
srcHBSelect "design_test.dut.change_reg" -win $_nTrace1
srcHBSelect "design_test.dut.mux_block" -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
verdiSetActWin -win $_nSchema_5
verdiDockWidgetSetCurTab -dock windowDock_nState_4
verdiSetActWin -win $_nState_4
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "clk"
schPopViewUp -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 39736 9332
schZoomIn -win $_nSchema3 -pos 39735 9332
schZoomIn -win $_nSchema3 -pos 39500 9473
schZoomIn -win $_nSchema3 -pos 39499 9473
schSelect -win $_nSchema3 -signal "total_out\[5:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 37.854582 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetCursor -win $_nWave2 88.204852 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetCursor -win $_nWave2 72.646496 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 76.811725
wvSetCursor -win $_nWave2 89.552426 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
