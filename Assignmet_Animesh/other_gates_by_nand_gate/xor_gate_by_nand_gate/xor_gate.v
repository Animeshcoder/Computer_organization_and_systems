`include "nand_gate.v"

// module xor_gate(a,b,c);
// input a,b;
// output c;
// assign c= a ^ b;
// endmodule

module xor_gate(a,b,c);
input a,b;
output c;
wire w1, w2, w3;
nand_gate n1 (a,b,w1);
nand_gate n2 (a,w1,w2);
nand_gate n3 (b,w1,w3);
nand_gate n4 (w2,w3,c);
endmodule