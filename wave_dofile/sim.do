***[sim.do]:***
```JSP
quit -sim
set SIM_DIR "D:/project_data/sim_base/debounce_fsm/Simulation/"

cd $SIM_DIR


if {![file exists $SIM_DIR/test_debounce/test_debounce.mpf]} {
    project new $SIM_DIR/test_debounce test_debounce
    project addfile   ../../src/debounce_fsm.v
    project addfile   ../../src/clock_gen.v
    project addfile   ../../Testbench/top_tb.v

    vlib  work
    vdel -lib work -all
    vlib work

    vlog  +incdir+$SIM_DIR/src         -work work  ../..//src/debounce_fsm.v
    vlog  +incdir+$SIM_DIR/src         -work work  ../..//src/clock_gen.v
    vlog  +incdir+$SIM_DIR/Testbench   -work work  ../..//Testbench/top_tb.v

} else {
	project open $SIM_DIR/test_debounce/test_debounce.mpf
	project compileoutofdate
}

vsim -L work -L pmi_work -L ovi_machxo3l  -L ovi_machxo3d top_tb -suppress 3389 -suppress 3053
log -r /*
onerror { resume }					
transcript off


onerror {resume}

view wave

do wave.do

################################################################################
# run 10 us
run 20 us
```
