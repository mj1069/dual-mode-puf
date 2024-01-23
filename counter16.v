module counter16(
  input in, reset,
  output [15:0]count
);

  always @(in) begin
    if(!reset)
      count <= count + 1'b1;
    else
      count <= 16'b0;
  end
endmodule
