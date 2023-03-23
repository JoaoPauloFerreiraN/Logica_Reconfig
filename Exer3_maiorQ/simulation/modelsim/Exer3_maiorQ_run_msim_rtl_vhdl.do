transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Exer3_maiorQ/Exer3_maiorQ.vhd}

vcom -93 -work work {C:/Users/joaop/Documents/Logica_Reconfig/Exer3_maiorQ/tb_Exer3_maiorQ.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_Exer3_maiorQ

add wave *
view structure
view signals
run 40 ns
