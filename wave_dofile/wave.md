***[wave.do]:***
```JSP
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate                                     /top_tb/DUT/clk
add wave -noupdate                                     /top_tb/DUT/rst_n
add wave -noupdate                                     /top_tb/DUT/tick_in
add wave -noupdate -color Orange                       /top_tb/DUT/signal_in
add wave -noupdate -color Cyan                         /top_tb/DUT/signal_out

##################################################################################
add wave -noupdate -divider {Internal}
add wave -noupdate -color Orange -radix hexadecimal    /top_tb/DUT/state
add wave -noupdate -color Orange -radix ascii          /top_tb/DUT/sim_state


##################################################################################

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {26036724490 ps} 0} {{Cursor 2} {5656136620 ps} 0}
quietly wave cursor active 2
quietly wave cursor active 1
configure wave -namecolwidth 284
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
# configure wave -timelineunits ns
# configure wave -timelineunits ms
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {20 us}
# WaveRestoreZoom {0 ps} {5 us}
```
