`include "mux41.v"
`include "mux21.v"
`include "DFF.v"
module CLB (
    input [3:0] in_mux4,
    input [1:0] sel_mux4,
    input clk, sel_mux2, reset,
    output out
);
    wire w1, w2;
    mux41 mux0 (in_mux4[0], in_mux4[1], in_mux4[2], in_mux4[3], sel_mux4[0], sel_mux4[1], w1);
    DFF dff0 (w1, clk, reset, w2);
    mux21 mux1 (w1, w2, sel_mux2, out);
endmodule