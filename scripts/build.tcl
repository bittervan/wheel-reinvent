set part    xc7a200tsbg484-1
set board   nexys-video
set top     top

set_param general.maxThreads 32

set synth_directive default
set opt_directive   Default
set place_directive Default
set phys_directive  Default
set route_directive Default

proc blueputs {msg} {
    puts "\033\[34m$msg\033\[0m"
}

blueputs "Start building"
source ./scripts/readsrc.tcl

blueputs "Start synthesis"
source ./scripts/synth.tcl > build/synth/synth.log

blueputs "Start implementation"
source ./scripts/impl.tcl > build/impl/impl.log

blueputs "Start bitstream generation"
source ./scripts/genbit.tcl