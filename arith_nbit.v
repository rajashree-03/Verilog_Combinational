`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 23:22:51
// Design Name: 
// Module Name: arith_nbit
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


module arith_nbit #(parameter N = 4)(
         input [N - 1:0]a_in,
         input [N - 1:0]b_in,
         output [N - 1:0]sum_out,
         output carry_out);
         
 assign {carry_out,sum_out} = a_in + b_in;
 

endmodule
