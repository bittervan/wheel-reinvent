set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.config.configrate 66 [current_design]

write_bitstream -verbose -force build/output/top.bit