`include "gate_and.v" 
`include "gate_or2.v"  
`include "inverter.v"
module mux41(
    input a, b, c, d,
    input [1:0] sel,
    output out
);
    wire nsel0, nsel1;
    wire aa, ab, ac, ad;
    wire out1, out2;

    inverter not1 (nsel0, sel[0]);
    inverter not2 (nsel1, sel[1]);

    gate_and2 and2 (aa, a, sel[0], sel[1]);
    gate_and2 and3 (ab, b, nsel0, sel[1]);
    gate_and2 and4 (ac, c, sel[0], nsel1);
    gate_and2 and5 (ad, d, nsel0, nsel1);

    gate_or2 or2 (out1, aa, ab);
    gate_or2 or3 (out2, ac, ad);
    gate_or2 or4 (out, out1, out2);

endmodule

