@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 636e89cb97e9426fb5a012a715a7b891 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot non_restoring_division_behav xil_defaultlib.non_restoring_division -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
