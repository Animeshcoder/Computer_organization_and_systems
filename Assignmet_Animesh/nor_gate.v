
`include "nand_gate.v"

module nor_gate(a,b,c);
input a,b;
output c;
wire w1, w2, w3;
nand_gate n1 (a, a, w1);
nand_gate n2 (b, b, w2);
nand_gate n3 (w1, w2, w3);
nand_gate n4 (w3, w3, c);
endmodule