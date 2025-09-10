module nand_tb;
  reg a,b;
  wire out;
  nandg uut(.a(a),.b(b),.out(out));
  initial begin
  $dumpfile("nand_tb.vcd");
  $dumpvars();
  $display("  Time  |  A B   |  out  ");
  $display("-------------------------");
  $monitor("  %0t   |  %b %b  |  %b  ",$time,a,b,out);
  a=0; b=0; #10;
  a=0; b=1; #10;
  a=1; b=0; #10;
  a=1; b=1; #10;
  $finish;
  end
endmodule
