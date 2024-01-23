module comparator16(
  input [15:0] in1, in2,
  output cmp_out
);

  always(in1, in2) begin
    if(in1>in2)
      cmp_out <= 1'b1;
    else
      cmp_out <= 1'b0;
  end
endmodule
