module T_flipflop(T, Clock, Q);
  input T, Clock;
  output wire Q;
  wire D;
  assign D = T ^ Q; 
  D_flipflop d1 (.D(D), .Clock(Clock), .Q(Q));
endmodule

