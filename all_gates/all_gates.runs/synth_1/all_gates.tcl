# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/subir/Desktop/VHDL Projects/all_gates/all_gates.cache/wt} [current_project]
set_property parent.project_path {C:/Users/subir/Desktop/VHDL Projects/all_gates/all_gates.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/subir/Desktop/VHDL Projects/all_gates/all_gates.srcs/sources_1/new/all_gates.vhd}}
catch { write_hwdef -file all_gates.hwdef }
synth_design -top all_gates -part xc7a35tcpg236-1
write_checkpoint -noxdef all_gates.dcp
catch { report_utilization -file all_gates_utilization_synth.rpt -pb all_gates_utilization_synth.pb }
