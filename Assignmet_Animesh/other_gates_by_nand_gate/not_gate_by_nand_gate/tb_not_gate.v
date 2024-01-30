`include "not_gate.v"
module tb_not_gate;
reg a;
wire b;
not_gate f1(a, b);
initial begin
    $monitor("input = %b, output= %b\n", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule