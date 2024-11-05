`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 00:50:01
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

reg a_in;
reg b_in;
reg c_in;
wire sum;
wire carry;


full_adder DUT (  .a_in(a_in),
                  .b_in(b_in),
                  .c_in(c_in),
                  .sum(sum),
                  .carry(carry));
                  
                  
// always #10 a_in = ~a_in;
// always #10 b_in = ~b_in;
// always #10 c_in = ~c_in;
 
 
initial
    begin
        a_in = 1'b0;
        b_in = 1'b0;
        c_in = 1'b0;
        
        
       #10 a_in = 1'b1;
       #10 b_in = 1'b1;
       #10 c_in = 1'b0;
       
       #10 a_in = 1'b1;
       #10 b_in = 1'b0;
       #10 c_in = 1'b1;
       
       
       #10 a_in = 1'b0;
       #10 b_in = 1'b1;
       #10 c_in = 1'b0;
        
        #100 $finish();
    end
endmodule
