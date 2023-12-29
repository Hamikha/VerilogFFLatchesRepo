module stm_Jk_Flipflop();
  reg J, K, Clock;
  wire Q, Q_bar;

  JK_flipflop j1(J, K, Clock, Q, Q_bar);

  initial begin
  Clock = 1;
  J = 0; K = 0; #10; 
  J = 0; K = 1; #10; 
  J = 1; K = 0; #10; 
  J = 1; K = 1; #10; 
  end

  always #5 Clock = ~Clock;

initial 
  $monitor("%b %b %b %b %b ", J, K, Clock, Q, Q_bar);

endmodule

