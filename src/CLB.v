`include "mux41.v"
`include "mux21.v"
`include "DFF.v"
module CLB (
    input [3:0] in_mux4,
    input [1:0] sel_mux4, in_mux2,
    input clk, sel_mux2,
    output out
);
    wire w1, w2;
    mux41 mux0 (in_mux4[0], in_mux4[1], in_mux4[2], in_mux4[3], sel_mux4[0], sel_mux4[1], w1);
    DFF dff0 (clk, w1, w2);
    mux21 mux1 (in_mux2[0], in_mux2[1], sel_mux2, out);
endmodule