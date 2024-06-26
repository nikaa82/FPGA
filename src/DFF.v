`include "gate_and.v" 
`include "gate_or2.v"  
`include "inverter.v"
`include "gate_nand.v"
`include "gate_nand3.v"
`include "buffer.v"
module DFF (
    input clk, data,
    output out
    // output nout
);
    wire w1, w2, w3, w4, w5, w6;

    inverter not1 (nout, out);

    gate_nand2 nand2 (w1, w2, w4);
    gate_nand2 nand3 (w2, w1, clk);
    gate_nand3 nand4 (w3, w2, clk, w4);
    gate_nand2 nand5 (w4, w3, data);
    gate_nand2 nand6 (w5, w2, w6);
    // gate_nand2 nand7 (w6, w3, w5);

    buffer buf1 (out, w5);
    // buffer buf2  (nout, w6);

endmodule


