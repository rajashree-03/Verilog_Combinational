`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 23:52:25
// Design Name: 
// Module Name: full_adder
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


module full_adder( input a_in,
                   input b_in,
                   input c_in,
                   output sum,
                   output carry
                   );
 
 wire x1;
 wire x2;
 wire x3;
                
 /*assign x1 = a_in ^ b_in;
 assign sum = x1 ^ c_in;
 assign x2 = a_in && b_in;
 assign x3 = c_in && x1;
 assign carry = x2 || x3;*/
 
 half_adder h1(a_in,b_in,x1,x2);
 half_adder h2(c_in,x1,sum,x3);
 or (carry,x2,x3);               
                   
endmodule
