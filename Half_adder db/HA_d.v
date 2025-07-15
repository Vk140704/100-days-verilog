//Data modeling
module ha_d(input a,b,output sum,carry);
assign sum=a&b;
assign carry=a^b;
endmodule

//gate level modelling
module ha_g(input a, b,output sum,carry);
and g1(a,b,sum);
xor g2(a,b,carry);
endmodule

//behaviour level 
module ha_b(input a,b,output reg sum,carry);
  always@(*)begin //this is known as sensetivity list which make update and perform whethere any value changes in port list
sum=a&b;
carry=a^b;
end
endmodule
