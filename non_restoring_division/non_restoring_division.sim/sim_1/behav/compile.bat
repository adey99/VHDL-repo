@echo off
set xv_path=E:\\Vivado\\2014.4\\bin
echo "xvhdl -m32 -prj non_restoring_division_vhdl.prj"
call %xv_path%/xvhdl  -m32 -prj non_restoring_division_vhdl.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
