`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 23:12:59
// Design Name: 
// Module Name: ariith_tb
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


module ariith_tb();

reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

arithmatic_operation DUT (.a_in(a_in),
                          .b_in(b_in),
                          .sum_out(sum_out),
                          .carry_out(carry_out));
                          
 always #20 a_in = ~a_in;
 always #10 b_in = ~b_in;
 
 initial
    begin   
        a_in = 0;
        b_in = 0;
        
        #10 a_in = 1'b0;
            b_in = 1'b1;
     end 
endmodule
