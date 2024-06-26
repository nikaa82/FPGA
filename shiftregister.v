`include "DFF.v"
// module shift_register(
//     input wire clk,        // Clock input
//     input wire reset,      // Asynchronous reset
//     input wire load,       // Load signal
//     input wire [123:0] data_in, // Data to load
//     input wire shift_en,   // Shift enable signal
//     input wire serial_in,  // Serial input for shifting
//     output reg [123:0] data_out // Shift register output
// );

//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             // Asynchronous reset
//             data_out <= 124'b0;
//         end
//         else if (load) begin
//             // Load new data
//             data_out <= data_in;
//         end 
//         else if (shift_en) begin
//             // Shift data
//             data_out <= {data_out[122:0], serial_in};
//         end
//     end

// endmodule

