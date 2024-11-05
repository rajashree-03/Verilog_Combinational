`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 00:33:13
// Design Name: 
// Module Name: mux_if_tb
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


module mux_if_tb();

//reg a_in;
//reg b_in;
reg sel_in;
reg i0;
reg i1; 

wire y_out;

mux_if DUT (
//               .a_in(a_in),
//               .b_in(b_in),
               .sel_in(sel_in),
               .i0(i0),
               .i1(i1),
               .y_out(y_out));
               
//always #20 a_in = ~a_in;
//always #10 b_in = ~b_in;

always #20 i0 = ~i0;
always #10 i1 = ~i1;
always #10 sel_in = ~sel_in;

initial
    begin
        sel_in = 0; i0 = 1; i1 = 0;
        #10 i0 = 0; 
            i1 = 1;
        #10 sel_in = 1;
            i0 = 1;
            i1 = 0;
        #10 i0 = 0;
            i1 = 1;
        #10 $finish();
    end
endmodule
