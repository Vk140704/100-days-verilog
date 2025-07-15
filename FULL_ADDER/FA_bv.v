module fa(input a,b,c,output reg sum,carry);
always@(a or b or c)begin
sum = (a&b&c);
carry=(a^b^c);
end
endmodule
