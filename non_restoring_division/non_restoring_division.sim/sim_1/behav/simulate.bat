@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim non_restoring_division_behav -key {Behavioral:sim_1:Functional:non_restoring_division} -tclbatch non_restoring_division.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
