@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto e791ffdb5e50475ca88db0c4d713e5b9 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot restoring_division_behav xil_defaultlib.restoring_division -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
