onerror {exit -code 1}
vlib work
vlog -work work tablasum.vo
vlog -work work DiagramTime.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tablasum_vlg_vec_tst -voptargs="+acc"
vcd file -direction tablasum.msim.vcd
vcd add -internal tablasum_vlg_vec_tst/*
vcd add -internal tablasum_vlg_vec_tst/i1/*
run -all
quit -f
