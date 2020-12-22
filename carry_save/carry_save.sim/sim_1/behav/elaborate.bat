@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto d831eb2102804e8d8170b2ab63fe91dc -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot carry_save_adder_behav xil_defaultlib.carry_save_adder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
