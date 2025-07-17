module ha(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

module fa(input a,b,cin,output sum,carry);
wire i0,i1,i2;
ha ha1(.a(a),.b(b),.sum(i0),.carry(i1));
ha ha2(.a(i0),.b(cin),.sum(sum),.carry(i2));
assign carry=i1|i2;
endmodule
