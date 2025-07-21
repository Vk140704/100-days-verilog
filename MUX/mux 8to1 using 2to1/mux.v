module mux2to1(input i0, i1, sel, output y);
  assign y = sel ? i1 : i0;
endmodule


module mux8to1(input [7:0] in, input [2:0] sel, output cout);

wire w1, w2, w3, w4, w5, w6, y;

mux2to1 mux1(in[0], in[1], sel[0], w1);
mux2to1 mux2(in[2], in[3], sel[0], w2);
mux2to1 mux3(in[4], in[5], sel[0], w3);
mux2to1 mux4(in[6], in[7], sel[0], w4);
mux2to1 mux5(w1, w2, sel[1], w5);
mux2to1 mux6(w3, w4, sel[1], w6);
mux2to1 mux7(w5, w6, sel[2], y);

assign cout = y;

endmodule
