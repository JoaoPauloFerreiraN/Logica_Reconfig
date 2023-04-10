transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/P1_/Exer_P1/circuito_P1.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/P1_/Exer_P1/tb_circuito_P1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_circuito_P1

add wave *
view structure
view signals
run 640 ns
