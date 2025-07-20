    //Continueous /Dataflow /Ternary/
    
//module mux2_1(input i0,i1,sel,output  y);
//assign y= sel?i1:i0;
//endmodule

    //GATE METHOD
//module mux2_1(input i0,i1,sel,output y);
//wire a1,a2,nsel;
// not (nsel,sel);
// and (a1,i0,nsel);
// and (a2,i1,sel);
// or (y,ai,a2);
//endmodule

    //Behavioural Method
//    module mux2_1(input i0,i1,sel,output reg y );
//    always@(*)begin
//    if(!sel)
//    y=i0;
//    else
//    y=i1;
//    end
//    endmodule
    //using case
module mux2_1(input[0:1]sel,input[0:3]d,output reg y);
always@(*)begin
case(sel)
2'b00:y = d[0];
2'b01:y = d[1];
2'b10:y = d[2];
2'b11:y = d[3];
endcase
end
endmodule
