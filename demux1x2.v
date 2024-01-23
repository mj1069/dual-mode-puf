module demux1x2(
  input in, sel,
  output reg out_0, out_1
);
  assign out_0 = sel ? in : 1'b0;
  assign out_1 = sel ? 1'b0 : in;
endmodule
