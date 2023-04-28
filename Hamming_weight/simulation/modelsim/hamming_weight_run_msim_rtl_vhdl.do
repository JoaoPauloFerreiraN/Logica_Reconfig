transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Hamming_weight/hamming_weight.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Hamming_weight/tb_hamming_weight.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_hamming_weight

add wave *
view structure
view signals
run 640 ns
