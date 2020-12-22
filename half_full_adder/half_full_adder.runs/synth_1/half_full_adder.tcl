# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/subir/Desktop/VHDL Projects/half_full_adder/half_full_adder.cache/wt} [current_project]
set_property parent.project_path {C:/Users/subir/Desktop/VHDL Projects/half_full_adder/half_full_adder.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/subir/Desktop/VHDL Projects/half_full_adder/half_full_adder.srcs/sources_1/new/half_full_adder.vhd}}
catch { write_hwdef -file half_full_adder.hwdef }
synth_design -top half_full_adder -part xc7a35tcpg236-1
write_checkpoint -noxdef half_full_adder.dcp
catch { report_utilization -file half_full_adder_utilization_synth.rpt -pb half_full_adder_utilization_synth.pb }
