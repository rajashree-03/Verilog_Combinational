`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 23:28:45
// Design Name: 
// Module Name: arith_tb
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


module arith_tb #(parameter N = 4);

reg [N- 1:0]a_in;
reg [N - 1:0]b_in;
wire [N - 1:0]sum_out;
wire carry_out;


arith_nbit #(.N(4)) DUT ( 
           .a_in(a_in),
           .b_in(b_in),
           .sum_out(sum_out),
           .carry_out(carry_out));
           
always #20 a_in = a_in+1;
always #10 b_in = b_in+1;


initial 
    begin 
        a_in = 4'b0000;
        b_in = 4'b0000;
        
        
         
         #50 $finish();   
     end     

   
endmodule
