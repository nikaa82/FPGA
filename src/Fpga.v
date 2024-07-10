`include "cell1.v"
`include "shiftregister.v"
module fpga(
    input [15:0] cell_in,
    input [123:0] config_bit,
    input clk, reset,
    output [15:0] cell_out
);
    wire [15:0] cell_wire;

    cell1 cell_one(cell_in[0], cell_in[1], cell_in[2], cell_in[3], cell_wire[0], cell_wire[1], cell_wire[2], cell_wire[3], config_bit[0], config_bit[1], config_bit[2], 
    config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], config_bit[10], config_bit[11], config_bit[12], config_bit[13], 
    config_bit[14], config_bit[15], config_bit[16], config_bit[17], config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], 
    config_bit[25], config_bit[26], config_bit[27], config_bit[28], config_bit[29], config_bit[30], clk, reset, cell_out[0], cell_out[1], cell_out[2], cell_out[3], cell_wire[4], 
    cell_wire[5], cell_wire[6], cell_wire[7]);

    cell1 cell_two(cell_in[4], cell_in[5], cell_in[6], cell_in[7], cell_wire[0], cell_wire[1], cell_wire[2], cell_wire[3], config_bit[0], config_bit[1], config_bit[2], 
    config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], config_bit[10], config_bit[11], config_bit[12], config_bit[13], 
    config_bit[14], config_bit[15], config_bit[16], config_bit[17], config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], 
    config_bit[25], config_bit[26], config_bit[27], config_bit[28], config_bit[29], config_bit[30], clk, reset, cell_out[0], cell_out[1], cell_out[2], cell_out[3], cell_wire[4], 
    cell_wire[5], cell_wire[6], cell_wire[7]);

    cell1 cell_one(cell_in[0], cell_in[1], cell_in[2], cell_in[3], cell_wire[0], cell_wire[1], cell_wire[2], cell_wire[3], config_bit[0], config_bit[1], config_bit[2], 
    config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], config_bit[10], config_bit[11], config_bit[12], config_bit[13], 
    config_bit[14], config_bit[15], config_bit[16], config_bit[17], config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], 
    config_bit[25], config_bit[26], config_bit[27], config_bit[28], config_bit[29], config_bit[30], clk, reset, cell_out[0], cell_out[1], cell_out[2], cell_out[3], cell_wire[4], 
    cell_wire[5], cell_wire[6], cell_wire[7]);

    cell1 cell_one(cell_in[0], cell_in[1], cell_in[2], cell_in[3], cell_wire[0], cell_wire[1], cell_wire[2], cell_wire[3], config_bit[0], config_bit[1], config_bit[2], 
    config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], config_bit[10], config_bit[11], config_bit[12], config_bit[13], 
    config_bit[14], config_bit[15], config_bit[16], config_bit[17], config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], 
    config_bit[25], config_bit[26], config_bit[27], config_bit[28], config_bit[29], config_bit[30], clk, reset, cell_out[0], cell_out[1], cell_out[2], cell_out[3], cell_wire[4], 
    cell_wire[5], cell_wire[6], cell_wire[7]);
endmodule
