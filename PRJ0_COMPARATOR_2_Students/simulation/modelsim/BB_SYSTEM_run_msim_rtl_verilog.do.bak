transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students/rtl {Z:/PRJ0_COMPARATOR_2_Students/rtl/CC_LESSTHAN.v}
vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students/rtl {Z:/PRJ0_COMPARATOR_2_Students/rtl/CC_GREATERTHAN.v}
vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students/rtl {Z:/PRJ0_COMPARATOR_2_Students/rtl/CC_EQUAL.v}
vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students/rtl {Z:/PRJ0_COMPARATOR_2_Students/rtl/CC_COMPARATOR.v}
vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students {Z:/PRJ0_COMPARATOR_2_Students/BB_SYSTEM.v}

vlog -vlog01compat -work work +incdir+Z:/PRJ0_COMPARATOR_2_Students/simulation/modelsim {Z:/PRJ0_COMPARATOR_2_Students/simulation/modelsim/TB_SYSTEM.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  TB_SYSTEM

add wave *
view structure
view signals
run -all
