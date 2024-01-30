`include "not_gate_nor.v"
module tb_not_gate_nor;
reg a;
wire b;
not_gate_nor f1(.a(a), .b(b));
initial begin
    $monitor("input=%b, output=%b", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end
initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule