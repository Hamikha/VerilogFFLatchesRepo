module SR_Flipflop(S,R,Clock,Q,Q_bar);

 input S,R,Clock;
  output Q,Q_bar;
  reg Q,Q_bar;

  wire nand1, nand2, nand3, nand4;
  assign nand1 = ~(S & Q_bar);
  assign nand2 = ~(R & Q);
  assign nand3 = ~(Clock & nand1);
  assign nand4 = ~(Clock & nand2);

  always @(posedge Clock) begin
    if (S && ~R) begin
      Q <= 1'b1;
      Q_bar <= 1'b0;
    end else if (~S && R) begin
      Q <= 1'b0;
      Q_bar <= 1'b1;
    end else begin
      Q <= ~(nand3 & Q_bar);
      Q_bar <= ~(nand4 & Q);
    end
  end

endmodule