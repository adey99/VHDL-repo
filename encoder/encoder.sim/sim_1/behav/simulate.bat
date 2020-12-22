@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim encoder_behav -key {Behavioral:sim_1:Functional:encoder} -tclbatch encoder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
