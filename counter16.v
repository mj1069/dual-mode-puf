module counter16(
  input in, reset,
  output [15:0]count
);
  reg [15:0] count_reg = 16'b0;

  always @(in) begin
    if(!reset)
      count_reg <= count + 1'b1;
    else
      count_reg <= 16'b0;
  end
  assign count = count_reg;
endmodule
