# Optimization
puts "\tOptimizing the design"
opt_design -directive $opt_directive

write_checkpoint -force     build/impl/opt_checkpoint
report_timing_summary -file build/impl/opt_time.rpt
report_utilization -file    build/impl/opt_util.rpt

# Place the netlist
puts "\tPlacing the design"
place_design -directive $place_directive

write_checkpoint -force     build/impl/place_checkpoint
report_timing_summary -file build/impl/place_time.rpt
report_utilization -file    build/impl/place_util.rpt

# Optimize the placed netlist
puts "\tOptimizing the placed design"
phys_opt_design -directive $phys_directive

write_checkpoint -force     build/impl/phys_checkpoint
report_timing_summary -file build/impl/phys_time.rpt
report_utilization -file    build/impl/phys_util.rpt

# Route the current design
puts "\tRouting the design"
route_design -directive $route_directive

write_checkpoint -force     build/impl/route_checkpoint
report_timing_summary -file build/impl/route_time.rpt
report_utilization -file    build/impl/route_util.rpt