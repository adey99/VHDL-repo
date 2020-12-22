@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim Booth_algo_behav -key {Behavioral:sim_1:Functional:Booth_algo} -tclbatch Booth_algo.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
