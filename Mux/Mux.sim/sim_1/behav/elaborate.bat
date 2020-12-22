@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto b3352fd4e5ce4282916ac6899992151c -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot Mux_behav xil_defaultlib.Mux -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
