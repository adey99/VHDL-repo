@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim half_full_adder_behav -key {Behavioral:sim_1:Functional:half_full_adder} -tclbatch half_full_adder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
