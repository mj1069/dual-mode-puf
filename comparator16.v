module comparator16 (
  input [15:0] in1, in2,
  output cmp_out
);
  
  reg cmp_out_reg;

  always @(in1, in2) begin
    if(in1 > in2)
      cmp_out_reg <= 1'b1;
    else
      cmp_out_reg <= 1'b0;
  end
  
  assign cmp_out = cmp_out_reg;
endmodule
