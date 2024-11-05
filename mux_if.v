`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 23:58:22
// Design Name: 
// Module Name: mux_if
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


module mux_if(  
//                 input b_in,
                 input sel_in,
                 input i0,
                 input i1,
                 output reg y_out);
                 
//always@(a_in,b_in,sel_in)
//    begin 
//        if(sel_in==1)
//        y_out=b_in;
//        else
//        y_out=a_in;
//     end

always@(*)
    begin
        if(sel_in)
        begin
            y_out = i1;
        end
        
        else
        begin
            y_out = i0;
        end
        
     end
endmodule
