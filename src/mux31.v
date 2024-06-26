`include "gate_and.v" 
`include "gate_or2.v"  
`include "inverter.v"
module mux31(
    input a, b, c,
    input [1:0] sel,
    output out
);
    wire nsel0, nsel1;
    wire aa, ab, ac;
    wire out1;

    inverter not1 (nsel0, sel[0]);
    inverter not2 (nsel1, sel[1]);

    gate_and2 and2 (aa, a, sel[0], sel[1]);
    gate_and2 and3 (ab, b, nsel0, sel[1]);
    gate_and2 and4 (ac, c, sel[0], nsel1);

    gate_or2 or2 (out1, aa, ab);
    gate_or2 or3 (out, out1, ac);

endmodule

