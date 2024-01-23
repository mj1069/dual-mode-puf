module demux_mux_block(
  input in_up,in_down,sel,
  output out_up,out_down
);

  demux1x2 demux_up(in_up, sel, demux_up_out0, demux_up_out1);
  mux2x1 mux_up(demux_up_out0, demux_up_out1, sel ,out_up);
  demux1x2 demux_down(in_down, sel, demux_down_out0, demux_down_out1);
  mux2x1 mux_down(demux_down_out0, demux_down_out1, sel, out_down);
  
endmodule
