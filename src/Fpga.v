`include "cell1.v"
`include "shiftregister.v"
module fpga(
    input [15:0] cell_in,
    input [123:0] config_bit,
    input clk, reset,
    output [15:0] cell_out
);
    wire [15:0] cell_wire;

    cell1 cell_one(cell_in[0], cell_in[1], cell_wire[0], cell_wire[1], cell_wire[2], cell_wire[3], cell_in[2], cell_in[3], config_bit[0], config_bit[1], config_bit[2], 
    config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], config_bit[10], config_bit[11], config_bit[12], config_bit[13], 
    config_bit[14], config_bit[15], config_bit[16], config_bit[17], config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], 
    config_bit[25], config_bit[26], config_bit[27], config_bit[28], config_bit[29], config_bit[30], clk, reset, cell_out[0], cell_out[1], cell_wire[4], cell_wire[5], cell_wire[6], 
    cell_wire[7], cell_out[2], cell_out[3]);

    cell1 cell_two(cell_wire[7], cell_wire[6], cell_wire[8], cell_wire[9], cell_in[4], cell_in[5], cell_in[6], cell_in[7], config_bit[31], config_bit[32], config_bit[33], 
    config_bit[34], config_bit[35], config_bit[36], config_bit[37], config_bit[38], config_bit[39], config_bit[40], config_bit[41], config_bit[42], config_bit[43], config_bit[44], 
    config_bit[45], config_bit[46], config_bit[47], config_bit[48], config_bit[49], config_bit[50], config_bit[51], config_bit[52], config_bit[53], config_bit[54], config_bit[55], 
    config_bit[56], config_bit[57], config_bit[58], config_bit[59], config_bit[60], config_bit[61], clk, reset, cell_out[0], cell_out[1], cell_wire[4], cell_wire[5], cell_wire[6], 
    cell_wire[7], cell_out[2], cell_out[3]);



endmodule
