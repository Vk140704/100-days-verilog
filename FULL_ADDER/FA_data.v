//dataflow model
module fa(input a,b,c,output sum,carry);
assign sum=(a^b^c);
assign carry=(a&b&c);
endmodule

//gate level
module fa(input a,b,c,output sum,carry);
 xor g1(a,b,c,sum);
and g2(a,b,c,carry);
endmodule
