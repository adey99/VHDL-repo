@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 341bbd7fb1364ad3a73cc51180974ec6 -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot Decoder_behav xil_defaultlib.Decoder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
