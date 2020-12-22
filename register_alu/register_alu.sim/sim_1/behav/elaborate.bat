@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 093b6151878e4b219da57ceb98b6b46c -m32 --debug typical --relax -L xil_defaultlib -L secureip --snapshot register_alu_behav xil_defaultlib.register_alu -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
