`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 23:07:23
// Design Name: 
// Module Name: arithmatic_operation
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


module arithmatic_operation( input a_in,
                             input b_in,
                             output sum_out,
                             output carry_out
                              );
                              
                              
 assign {carry_out,sum_out} = a_in + b_in;
                             
endmodule
