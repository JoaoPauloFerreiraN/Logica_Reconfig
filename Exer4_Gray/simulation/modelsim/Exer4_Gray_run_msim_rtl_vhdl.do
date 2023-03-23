transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Exer4_Gray/Exer4_Gray.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Exer4_Gray/tb_Exer4_Gray.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_Exer4_Gray

add wave *
view structure
view signals
run 80 ns
