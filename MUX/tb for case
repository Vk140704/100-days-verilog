module mux2_1tb();
//reg i0,i1,sel;
reg [0:1]sel;
reg [0:3]d;
wire y;
mux uut(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial begin
$dumpfile("muxtb.vcd");
$dumpvars();
$monitor($time,"i0=%b  i1=%b  sel=%b  y=%b",i0,i1,sel,y);
//#10 i0=1; i1=0; sel=0;
//#10 i0=0; i1=1; sel=1;
d=4'b1010;
#10 sel = 2'b00;
#10 sel = 2'b01;
#10 sel = 2'b10;
#10 sel = 2'b11;
#20
$finish; 
end
endmodule
