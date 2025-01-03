
***[Add topic]:***
```JSP
add wave -noupdate -divider FLAG
```

***[Change color]:***
```JSP
add wave -noupdate -color Orange -radix hexadecimal /tb/DUT/psu_ok
add wave -noupdate -color Orange -radix unsigned    /tb/DUT/psu_ok
add wave -noupdate -color Orange -radix ascii       /tb/DUT/psu_ok
```

***[Add group]:***
```JSP
add wave -noupdate -group {sequence} -color Orange -radix hexadecimal /top_tb/DUT/psu_ok
add wave -noupdate -group {sequence} -color Orange -radix unsigned    /top_tb/DUT/psu_ok
add wave -noupdate -group {sequence} -color Orange -radix ascii       /top_tb/DUT/psu_ok
```

***[Add group of group]:***
```JSP
add wave -noupdate -group {sequence} -group {VRD} -color Orange -radix hexadecimal /top_tb/DUT/psu_ok
add wave -noupdate -group {sequence} -group {VRD} -color Orange -radix unsigned    /top_tb/DUT/psu_ok
add wave -noupdate -group {sequence} -group {VRD} -color Orange -radix ascii       /top_tb/DUT/psu_ok
```

***[How to add variable of task]:***
```JSP
add wave -noupdate {/top_tb/i2cm_inst[2]/u_i2cm/write_i2c_address/i}
```

***[Configure]***
```JSP
configure wave -timelineunits ns
```

# -------------------------------------------------------
***[After do file]***
```JSP
add wave -position insertpoint sim:/top_tb/DUT/psu_prsnt
```
  
