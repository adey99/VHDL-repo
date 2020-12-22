@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto be8a21de65c44557902cbd0465764253 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot Booth_algo_behav xil_defaultlib.Booth_algo -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
