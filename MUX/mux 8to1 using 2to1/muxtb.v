module MUX8to1tb();
  reg [7:0] in;
  reg [2:0] sel;
  wire cout;

  mux8to1 uut(.in(in), .sel(sel), .cout(cout));

  initial begin
    $dumpfile("MUX8_1tb.vcd");
    $dumpvars();
    $monitor($time, " in=%b sel=%b cout=%b", in, sel, cout);

    in = 8'b11010101; sel = 3'b000; #10;  // Expect cout = in[0] = 1
    sel = 3'b001; #10;                    // cout = in[1] = 0
    sel = 3'b010; #10;                    // cout = in[2] = 1
    sel = 3'b011; #10;                    // cout = in[3] = 0
    sel = 3'b100; #10;                    // cout = in[4] = 1
    sel = 3'b101; #10;                    // cout = in[5] = 0
    sel = 3'b110; #10;                    // cout = in[6] = 1
    sel = 3'b111; #10;                    // cout = in[7] = 1

    #10 $finish;
  end
endmodule
