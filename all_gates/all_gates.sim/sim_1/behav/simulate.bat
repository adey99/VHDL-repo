@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
call %xv_path%/xsim all_gates_behav -key {Behavioral:sim_1:Functional:all_gates} -tclbatch all_gates.tcl -view C:/Users/subir/Desktop/VHDL -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
