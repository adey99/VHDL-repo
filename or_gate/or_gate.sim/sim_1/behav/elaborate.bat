@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto a7ff8b22d42046c584df7559137eedad -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot or_gates_behav xil_defaultlib.or_gates -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
