`include "nand_gate.v"

module and_gate(a,b,c);
input a,b;
output c;
wire w1;
nand_gate n1 (a, b, w1);
nand_gate n2 (w1, w1, c);
endmodule