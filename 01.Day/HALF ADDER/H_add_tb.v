
module H_add_tb;
  reg a,b;
  wire out;
  H_add uut(.a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    $dumpfile("H_add_tb.vcd");
  $dumpvars();
    $display("  Time  |  A B   |  SUM  |  CARRY  ");
    $display("------------------------------------");
    $monitor("  %0t   |  %b %b  |  %b  |  %b  ",$time,a,b,sum, carry);
  a=0; b=0; #10;
  a=0; b=1; #10;
  a=1; b=0; #10;
  a=1; b=1; #10;
  $finish;
  end
endmodule
