module D_flipflop(D, Clock, Q);
  input D, Clock;
  output reg Q;

  always @(posedge Clock) begin
    Q <= D;
  end
endmodule

