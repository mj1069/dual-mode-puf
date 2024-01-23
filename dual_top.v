module dual_top #(parameter N = 128) (
  input in,reset,[N-1:0]sel,
  output out
);
  wire [N-1:0] m;
  wire [N-1:0] n;
  wire [15:0] ct_out1;
  wire [15:0] ct_out2;

  demux_mux_block block0 (in,in,sel[0],m[0],n[0]);

  generate
    genvar i;
    for (i = 0; i < N - 1; i = i + 1) begin: mux_block
      demux_mux_block block(
        m[i],
        n[i],
        sel[i],
        m[i+1],
        n[i+1]
      );
    end
  endgenerate
  counter16 ct1(n[N-1],reset,ct_out1);
  counter16 ct2(m[N-1],reset,ct_out2);

endmodule 
