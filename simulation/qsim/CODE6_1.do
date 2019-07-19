onerror {quit -f}
vlib work
vlog -work work CODE6_1.vo
vlog -work work CODE6_1.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CODE6_1_vlg_vec_tst
vcd file -direction CODE6_1.msim.vcd
vcd add -internal CODE6_1_vlg_vec_tst/*
vcd add -internal CODE6_1_vlg_vec_tst/i1/*
add wave /*
run -all
