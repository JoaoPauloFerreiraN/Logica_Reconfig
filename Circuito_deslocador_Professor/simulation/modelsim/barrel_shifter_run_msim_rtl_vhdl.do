transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Circuito_deslocador_Professor/barrel_shifter.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Circuito_deslocador_Professor/tb_barrel_shifter.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  tb_barrel_shifter

add wave *
view structure
view signals
run 640 ns
