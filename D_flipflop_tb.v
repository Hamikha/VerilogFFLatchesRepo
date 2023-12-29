module stm_D_Flipflop();
  reg D, Clock; 
  wire Q; 

  D_flipflop d1(D, Clock, Q); 
  initial begin
    Clock = 1; 
    D = 0; #10; 
    D = 1; #10; 
    D = 0; #10; 
    D = 1; #10; 
    $finish; 
  end

  always #5 Clock = ~Clock; 

  initial 
    $monitor("%b %b %b", D, Clock, Q); 
endmodule
