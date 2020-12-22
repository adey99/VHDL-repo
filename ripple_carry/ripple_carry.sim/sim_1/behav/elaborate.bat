@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto b7ba54b3338749689b634208b68453cc -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot ripple_carry_behav xil_defaultlib.ripple_carry -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
