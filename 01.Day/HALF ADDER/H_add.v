  `timescale 1ns/1ps
module h_add(input a,b ,output sum, carry);
  xor g1(sum,a,b);  //using  gate method
  and g2(carry,a,b);
assign sum = a^b; //using continuous method or dataflow modeling
assign carry = a&b;
endmodule 
