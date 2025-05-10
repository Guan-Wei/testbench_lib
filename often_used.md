
***[強制觸發 或 改變訊號]:***

```verilog

initial begin
    force xxx_pgd = 1'b0;
    release xxx_pgd;
end

```

***[monitor FSM]***
```verilog
`define EN_PWR_STATUS // TODO: trace

`ifdef EN_PWR_STATUS
  // Monitor the output
  $monitor($time,"[FSM] %s(%h)",DUT.fsm_inst.sim_st_ps, DUT.fsm_inst.st_ps);
`endif
```
