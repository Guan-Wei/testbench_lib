`timescale 1ns / 1ns
module uart_tb;

//------------------------------------------------------------------------------
// wire & registor declarations.
//------------------------------------------------------------------------------
// Testbench function.
// Clock
reg  clk_100m;

//------------------------------------------------------------------------------
// Parameter.
//------------------------------------------------------------------------------
parameter clkper_100m   = 10;

//------------------------------------------------------------------------------
// Testbench.
//------------------------------------------------------------------------------
//CLOCK -100 MHZ (10ns) Generate
initial 
begin  
  clk_100m = 0;  
  forever #(clkper_100m/2) clk_100m = ~clk_100m;
end

endmodule