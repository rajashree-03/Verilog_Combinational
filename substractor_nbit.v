`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 01:39:11
// Design Name: 
// Module Name: substractor_nbit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module substractor_nbit #(parameter DATA_WIDTH = 4)(
                          input [DATA_WIDTH -1:0]a_in,
                          input [DATA_WIDTH -1:0]b_in,
                          output [DATA_WIDTH -1:0]diff_out,
                          output borrow_out
                          );
                          
assign {borrow_out,diff_out} = a_in - b_in;

endmodule
