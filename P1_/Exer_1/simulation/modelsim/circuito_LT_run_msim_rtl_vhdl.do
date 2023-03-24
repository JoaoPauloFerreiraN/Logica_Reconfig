transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/P1_/Exer_1/circuito_LT.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/P1_/Exer_1/tb_circuito_LT.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_circuito_LT

add wave *
view structure
view signals
run -all
