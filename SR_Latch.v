module SR_latch(S,R,Q,Q_bar );
  input S; input R;
  output reg Q; output reg Q_bar;
  wire nand1, nand2;
  assign nand1 = ~(S & Q_bar);
  assign nand2 = ~(R & Q);
  always @* begin
    if (S == 1'b1 && R == 1'b1) begin
      Q <= 1'b0; 
      Q_bar <= 1'b0; 
    end else begin
      Q <= nand1;
      Q_bar <= nand2;
    end
  end
endmodule
