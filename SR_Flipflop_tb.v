module stm_SR_Flioflop();
  reg S, R, Clock;
  wire Q, Q_bar;

  SR_Flipflop s1(S, R, Clock, Q, Q_bar);

  initial begin
  Clock = 1; 
  S = 0; R = 1; #10; 
  S = 0; R = 0; #10;
  S = 1; R = 0; #10; 
  S = 1; R = 1; #10; 
  end

  always #5 Clock = ~Clock;
  initial 
    $monitor("%b %b %b %b", S, R, Clock, Q, Q_bar);
endmodule

