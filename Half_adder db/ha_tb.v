module ha_tb();
reg a,b;
wire s,c;
ha dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
$dumpfile("ha_tb.vcd");
$dumpvars();
$monitor($time,"a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
a=0; b=0;
#10
a=0; b=1;
#10
a=1; b=0; 
#10
a=1; b=1;
 end  
endmodule
