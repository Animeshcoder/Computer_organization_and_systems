`include "nor_gate.v"
module and_using_nor(a,b,c);
input a,b;
output c;
wire w1,w2;
nor_gate o1(a,a,w1);
nor_gate o2(b,b,w2);
nor_gate o3(w1,w2,c);

endmodule