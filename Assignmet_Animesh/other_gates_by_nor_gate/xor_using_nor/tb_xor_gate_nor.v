`include "xor_using_nor.v"
module tb_xor_gate_nor;
reg a, b;
wire c;
xor_using_nor f1(.a(a), .b(b), .c(c));
initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b1;
end
initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule