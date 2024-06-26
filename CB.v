`include "mux21.v"
`include "mux41.v"
module CB(
    input [4:0] in,
    input [9:0] sel,
    output [6:0] out
);
    mux41 mux4(in[0], in[1], in[2], in[3], sel[4], sel[5], out[4]);
    mux41 mux5(in[0], in[1], in[2], in[3], sel[6], sel[7], out[5]);
    mux41 mux6(in[0], in[1], in[2], in[3], sel[8], sel[9], out[6]);
    mux21 mux0(in[3], in[4], sel[0], out[0]);
    mux21 mux1(in[2], in[4], sel[1], out[1]);
    mux21 mux2(in[1], in[4], sel[2], out[2]);
    mux21 mux3(in[0], in[4], sel[3], out[3]);
   
endmodule
