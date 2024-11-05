`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 23:06:18
// Design Name: 
// Module Name: all_gate_tb
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


module all_gate_tb();

reg a_in;
reg b_in;
wire [6:0]y_out;


all_gate DUT (  .a_in(a_in),
                .b_in(b_in),
                .y_out(y_out));
                
                
always #20 a_in = ~a_in;
always #10 b_in = ~b_in;


initial
    begin
        a_in = 0;
        b_in = 0;
        
        
        #100 $finish();
    end
endmodule
