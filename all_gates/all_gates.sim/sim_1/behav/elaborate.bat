@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 7ee3c8e72f4f49018ce08d7c312c5165 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot all_gates_behav xil_defaultlib.all_gates -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
