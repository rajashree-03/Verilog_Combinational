`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 01:30:22
// Design Name: 
// Module Name: comparator
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


module comparator( input a_in,
                   input b_in,
                   output g_t,
                   output l_t,
                   output e_t);
                   
 assign g_t = a_in > b_in;
 assign l_t = a_in < b_in;
 assign e_t = a_in == b_in;
 
endmodule
