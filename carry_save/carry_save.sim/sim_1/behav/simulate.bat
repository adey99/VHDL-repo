@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim carry_save_adder_behav -key {Behavioral:sim_1:Functional:carry_save_adder} -tclbatch carry_save_adder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
