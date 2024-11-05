`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 22:40:07
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();

reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

half_adder DUT (.a_in(a_in),
                .b_in(b_in),
                .sum_out(sum_out),
                .carry_out(carry_out));
                
always #20 a_in = a_in +1;
always #10 b_in = ~b_in;

initial
    begin
        a_in = 0;
        b_in = 0;
        
        
        #200 $finish();
        
      end
endmodule
