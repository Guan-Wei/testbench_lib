
`timescale 1ns / 1ns

// repeat in intial sample1:
reg clk;
initial
  begin
  clk = 1'b0;
  $display("repeat demo Start");
    repeat(10)
      #5 clk =!clk;
      
    #30 clk=clk;
    $display("repeat demo End");
    $stop;
  end

// repeat in always block sample2:




