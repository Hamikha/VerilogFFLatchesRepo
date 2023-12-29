module stm_SR_LATCH();
  reg S,R;
  wire Q,Q_bar;

  SR_latch s1(S,R,Q,Q_bar );

  initial begin
    S=0; R=1; #10;
    S=1; R=1; #10;
    S=1; R=0; #10;
    S=1; R=1; #10;
    S=0; R=0; #10; 
    S=1; R=1; #10;
  end

  initial 
    $monitor("%b %b %b %b ",S,R,Q,Q_bar);
endmodule

