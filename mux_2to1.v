`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 22:51:00
// Design Name: 
// Module Name: mux_2to1
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


module mux_2to1(   input a_in,
                   input b_in,
                   input sel_in,
                   output y_out);
                   
 wire y1;
 wire y2;
 wire y3;
 
 assign y1 = b_in && sel_in;
 assign y2 = !sel_in;
 assign y3 = y2 && a_in;
 assign y_out = y1 || y3;
 
 
endmodule
