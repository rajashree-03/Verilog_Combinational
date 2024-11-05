`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 01:45:48
// Design Name: 
// Module Name: sub_tb
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


module sub_tb #(parameter DATA_WIDTH = 4);

reg [DATA_WIDTH -1:0]a_in;
reg [DATA_WIDTH -1:0]b_in;

wire [DATA_WIDTH -1:0]diff_out;
wire borrow_out;

substractor #(.DATA_WIDTH(4)) DUT(
              .a_in(a_in),
              .b_in(b_in),
              .diff_out(diff_out),
              .borrow_out(borrow_out));
              
always #20 a_in = a_in-1;
always #10 b_in = b_in-1;


initial
    begin
        a_in = 4'b0000;
        b_in = 4'b0000;
        
//        #10 a_in = 4'b1;
//            b_in = 4'b0;

        #50 $finish();
            
     end 


endmodule
