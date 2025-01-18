
`timescale 1ns / 1ns
module top_tb;

// ==================================================================
// parameter
// ==================================================================
parameter clkper_100m   = 10;
  
// ==================================================================
// wire & reg
// ==================================================================
reg  clk_100m;
reg  rst_n;

//------------------------------------------------------------------------------
// Testbench.
//------------------------------------------------------------------------------
//CLOCK -100 MHZ (10ns) Generate
initial begin  
  clk_100m = 0;  
  forever #(clkper_100m/2) clk_100m = ~clk_100m;
end

// REST_N Generate   
initial begin        
      rst_n = 1'b1;     
  #50 rst_n = 1'b0;    
  #50 rst_n = 1'b1;    
  #FINISH    $stop;
end 

//------------------------------------------------------------------------------
// device under test
//------------------------------------------------------------------------------



endmodule
