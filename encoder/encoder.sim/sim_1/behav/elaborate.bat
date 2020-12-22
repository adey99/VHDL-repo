@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 05e5138b92aa4c09a618ecdfc062912f -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot encoder_behav xil_defaultlib.encoder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
