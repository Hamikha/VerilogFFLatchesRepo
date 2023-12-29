module stm_T_Flipflop();
  reg T, Clock;
  wire Q;

  T_flipflop t1(T, Clock, Q);

  initial begin
    Clock = 1;
    T = 0; #10; // T is 0
    T = 1; #10; // T is 1
  end

  always #5 Clock = ~Clock;

  initial 
    $monitor("%b %b %b", T, Clock, Q);
endmodule

