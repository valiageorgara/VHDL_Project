@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 32aea3fb8a3d40ddafdd32c67aed616d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_regfile_behav xil_defaultlib.tb_regfile -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
