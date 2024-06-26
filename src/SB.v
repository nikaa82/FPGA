`include "mux31.v"
module SB (
    input [7:0] in,
    input [15:0] sel,
    output [7:0] out
);
    mux31 mux0 (in[7], in[5], in[3], sel[0], sel[1], out[0]);
    mux31 mux1 (in[6], in[4], in[2], sel[2], sel[3], out[1]);
    mux31 mux2 (in[0], in[7], in[5], sel[4], sel[5], out[2]);
    mux31 mux3 (in[1], in[6], in[4], sel[6], sel[7], out[3]);
    mux31 mux4 (in[1], in[2], in[7], sel[8], sel[9], out[4]);
    mux31 mux5 (in[3], in[0], in[6], sel[10], sel[11], out[5]);
    mux31 mux6 (in[0], in[3], in[4], sel[12], sel[13], out[6]);
    mux31 mux7 (in[1], in[2], in[5], sel[14], sel[15], out[7]);
endmodule