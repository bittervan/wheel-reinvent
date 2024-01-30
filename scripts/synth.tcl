# For IP cores
synth_ip [get_ips]

# For hdls
synth_design -top $top -part $part -directive $synth_directive

# Write netlist
write_checkpoint -force     build/synth/checkpoint
report_timing_summary -file build/synth/time.rpt
report_utilization  -file   build/synth/util.rpt