`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 22:57:36
// Design Name: 
// Module Name: all_gate
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


module all_gate(  input a_in,
                  input b_in,
                  output [6:0]y_out
                  );
                  
 assign y_out[0] = a_in && b_in;
 assign y_out[1] = a_in || b_in;
 assign y_out[2] = ~(a_in);
 assign y_out[3] = a_in ^ b_in;
 assign y_out[4] = a_in ~^ b_in;
 assign y_out[5] = ~(a_in && b_in);
 assign y_out[6] = ~(a_in || b_in);
  
endmodule
