@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto b3c7e4bbc6f64e8cb82de8e664597792 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot Demux_behav xil_defaultlib.Demux -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0