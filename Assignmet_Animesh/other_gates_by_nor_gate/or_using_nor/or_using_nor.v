`include "nor_gate.v"

module or_using_nor(a,b,c);
input a,b;
output c;
wire w1,w2;

nor_gate n1(a,b,w1);
nor_gate n2(w1,w1,c);
endmodule