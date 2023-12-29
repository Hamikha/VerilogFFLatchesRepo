module JK_flipflop(J,K,Clock,Q,Q_bar);

  input J,K,Clock;
  output reg Q,Q_bar;
  wire nand1, nand2, nand3, nand4;
  assign nand1 = ~(J & Q_bar);
  assign nand2 = ~(K & Q);
  assign nand3 = ~(Clock & nand1);
  assign nand4 = ~(Clock & nand2);

  always @(posedge Clock) begin
    if (J && K) begin
      Q <= ~Q; 
      Q_bar <= ~Q_bar; 
    end else begin
      Q <= ~(nand3 & Q_bar);
      Q_bar <= ~(nand4 & Q);
    end
  end

endmodule
