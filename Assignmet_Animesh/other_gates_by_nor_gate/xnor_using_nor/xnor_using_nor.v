`include "nor_gate.v"
module xnor_using_nor(a,b,c);
input a, b;
output c;
wire w1, w2, w3;

nor_gate n1(a, b, w1);
nor_gate n2(a, w1, w2);
nor_gate n3(b, w1, w3);
nor_gate n4(w2, w3, c);
endmodule