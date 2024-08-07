`include "DFF.v"
module shift_register(
    input wire clk,
    input wire data_in,
    input wire reset,
    output wire data_out
);
    wire [123:0] Q;

    // Instantiate 124 D flip-flops
    genvar i;
    begin
        for (i = 1; i < 124; i = i + 1) 
        begin : dff_chain
            DFF dff1 (.D(Q[i-1]), .clk(clk), .reset(reset), .Q(Q[i]));
        end
    end

    // Output the last bit
    assign data_out = Q[123];

endmodule


