`include "or_gate.v"
module tb_or_gate;
reg a,b;
wire c;
or_gate t1(a,b,c);

initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b1;
end
initial begin
    $dumpfile("out3.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule