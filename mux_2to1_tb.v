`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 22:57:01
// Design Name: 
// Module Name: mux_2to1_tb
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


module mux_2to1_tb();

reg a_in;
reg b_in;
reg sel_in;
wire y_out;

mux_2to1 DUT (
               .a_in(a_in),
               .b_in(b_in),
               .sel_in(sel_in),
               .y_out(y_out));
               
always #20 a_in = ~a_in;
always #10 b_in = ~b_in;

initial 
    begin   
        a_in = 0;
        b_in = 0;
        sel_in = 0;
        
        
        #10 a_in = 1'b0;
            b_in = 1'b1;
            sel_in = 1'b1;
            
       end
endmodule
