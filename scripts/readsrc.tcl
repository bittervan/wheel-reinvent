read_verilog -quiet [glob -nocomplain src/hdl/*.v]
read_verilog -quiet [glob -nocomplain src/hdl/*.vh]
read_ip -quiet      [glob -nocomplain src/ips/*.xcix]
read_xdc -quiet     [glob -nocomplain src/xdc/*.xdc]