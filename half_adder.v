`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 22:36:53
// Design Name: 
// Module Name: half_adder
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


module half_adder(  input a_in,
                    input b_in,
                    output sum_out,
                    output carry_out);
                    
    assign sum_out = a_in ^ b_in;
    assign carry_out = a_in && b_in;
    
endmodule
