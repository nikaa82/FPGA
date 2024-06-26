`include "gate_and.v" 
`include "gate_or2.v"  
`include "inverter.v"
module mux21(
    input a, b,
    input sel,
    output out
);
    wire nsel;
    wire aa, bb;

    inverter not1 (nsel, sel);

    gate_and2 and2 (aa, a, nsel);
    gate_and2 and3 (bb, b, sel);

    gate_or2 or2 (out, aa, bb);
endmodule

