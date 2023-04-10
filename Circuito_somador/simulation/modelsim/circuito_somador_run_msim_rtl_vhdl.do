transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Circuito_somador/circuito_somador.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Circuito_somador/tb_circuito_somador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  tb_circuito_somador

add wave *
view structure
view signals
run 160 ns
