set part    xc7a200tsbg484-1
set board   nexys-video
set top     top

set_param general.maxThreads 32

set synth_directive default
set opt_directive   Default
set place_directive Default
set phys_directive  Default
set route_directive Default

source ./scripts/readsrc.tcl
source ./scripts/synth.tcl
source ./scripts/impl.tcl
source ./scripts/genbit.tcl