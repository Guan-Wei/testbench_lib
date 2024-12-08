
#[Add topic]:
add wave -noupdate -divider FLAG

#[Change color]:
add wave -noupdate -color Orange -radix hexadecimal /tb/DUT/psu_ok


#[Add group]:
add wave -noupdate -group {sequence} /top_tb/DUT/psu_ok

#[Add group of group]:
add wave -noupdate -group {sequence} -group {VRD}  /top_tb/DUT/psu_ok


#[Modify data type]:
add wave -noupdate -radix ascii /top_tb/psu_ok
add wave -noupdate -radix hexadecimal /top_tb/psu_ok
add wave -noupdate -radix unsigned /top_tb/psu_ok

# configure
configure wave -timelineunits ns

# -------------------------------------------------------
# After 
add wave -position insertpoint sim:/top_tb/DUT/psu_prsnt

  
