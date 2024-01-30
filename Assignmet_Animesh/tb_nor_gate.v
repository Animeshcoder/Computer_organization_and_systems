`include "nor_gate.v"
module tb_nor_gate;
reg a, b;
wire c;

nor_gate s1(a, b, c);
initial begin
    $monitor("a = %b, b = %b, c = %b\n", a, b, c);
    #2 a = 1'b0; b = 1'b0;
    #2 a = 1'b1; b = 1'b0;
    #2 a = 1'b0; b = 1'b1;
    #2 a = 1'b1; b = 1'b1;
end

initial begin
    $dumpfile("out5.vcd");
    $dumpvars;
    #100 $finish;
end

endmodule