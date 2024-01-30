`include "nor_gate.v"
module not_gate_nor(a, b);
input a;
output b;
nor_gate n1(a,a,b);
endmodule