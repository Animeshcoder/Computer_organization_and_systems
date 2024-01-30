
`include "nand_gate.v"

module not_gate(a,c);
input a;
output c;
nand_gate n1 (a, a, c);
endmodule