`include "CB.v"
`include "CLB.v"
`include "SB.v"
module cell1(
    input [7:0] cell_in,
    input [30:0] config_bit,
    input clk, reset,
    output reg [7:0]  cell_out
);
    wire [6:0] connection_block;

    CB cb(cell_in[0], cell_in[1], connection_block[0], connection_block[1], connection_block[2], config_bit[0], config_bit[1], config_bit[2], 
        config_bit[3], config_bit[4], config_bit[5], config_bit[6], config_bit[7], config_bit[8], config_bit[9], cell_out[0], 
        cell_out[1], connection_block[3], connection_block[4], clk, connection_block[5], connection_block[6]);

    CLB clb(config_bit[10], config_bit[11], config_bit[12], config_bit[13], connection_block[3], connection_block[4], clk, config_bit[14], reset, connection_block[0]);

    SB sb(connection_block[5], connection_block[6],cell_in[2], cell_in[3], cell_in[4], cell_in[5], cell_in[6], cell_in[7], config_bit[15], config_bit[16], config_bit[17], 
        config_bit[18], config_bit[19], config_bit[20], config_bit[21], config_bit[22], config_bit[23], config_bit[24], config_bit[25], config_bit[26], config_bit[27], 
        config_bit[28], config_bit[29], config_bit[30], connection_block[1], connection_block[2], cell_out[2], cell_out[3], cell_out[4], cell_out[5], cell_out[6], cell_out[7]);

endmodule


