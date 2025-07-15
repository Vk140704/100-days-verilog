//dataflow model
module fa(input a,b,c,output sum,carry);
assign sum=(a&b&c);
assign carry=(a^b^c);
endmodule

//gate level
module fa(input a,b,c,output sum,carry);
and g1(a,b,c,sum);
xor g2(a,b,c,carry);
endmodule
