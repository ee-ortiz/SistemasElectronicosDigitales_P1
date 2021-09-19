do BB_SYSTEM_run_msim_rtl_verilog.do
onerror {resume}
quietly WaveActivateNextPane {} 0
delete wave *
add wave -noupdate /TB_SYSTEM/eachvec

add wave  -divider COMPARATOR
add wave -noupdate /TB_SYSTEM/TB_SYSTEM_greaterthan_Out
add wave -noupdate /TB_SYSTEM/TB_SYSTEM_lessthan_Out
add wave -noupdate /TB_SYSTEM/TB_SYSTEM_equal_Out
add wave -radix Unsigned /TB_SYSTEM/TB_SYSTEM_dataA_InBUS
add wave -radix Unsigned /TB_SYSTEM/TB_SYSTEM_dataB_InBUS

restart
run 1ms

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {319999492 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 445
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {59829352 ps} {60892417 ps}
