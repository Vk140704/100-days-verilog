module fa_tb();
reg a,b,cin;
wire sum,carry;
fa uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
$dumpfile("fa_tb.vcd");
$dumpvars();
$monitor($time,"a=%b    b=%b    cin=%b  sum=%b  carry=%b",a,b,cin,sum,carry);
    a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=1; b=0; cin=1;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
#10 $finish;
end
endmodule
