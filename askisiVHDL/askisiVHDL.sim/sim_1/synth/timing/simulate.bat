@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim CNTR_comb_tb_time_synth -key {Post-Synthesis:sim_1:Timing:CNTR_comb_tb} -tclbatch CNTR_comb_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
