@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 2a3548219a41448c86b55b4af5b2b28e -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot carry_lookahead_behav xil_defaultlib.carry_lookahead -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
