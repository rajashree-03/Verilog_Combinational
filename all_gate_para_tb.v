`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 23:20:24
// Design Name: 
// Module Name: all_gate_para_tb
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


module all_gate_para_tb #(parameter DATA_WIDTH = 8 );

reg  [7:0]a_in;
reg  [7:0]b_in;
wire [7:0]y_out_and;
wire [7:0]y_out_or;
wire [7:0]y_out_not;
wire [7:0]y_out_xor;
wire [7:0]y_out_xnor;
wire [7:0]y_out_nand;
wire [7:0]y_out_nor;
                       

all_gate_para #(.DATA_WIDTH(8)) DUT (
               .a_in(a_in),
               .b_in(b_in),
               .y_out_and(y_out_and),
               .y_out_or(y_out_or),
               .y_out_not(y_out_not),
               .y_out_xor(y_out_xor),
               .y_out_xnor(y_out_xnor),
               .y_out_nand(y_out_nand),
               .y_out_nor(y_out_nor)
               );
               
always #20 a_in = a_in+1;
always #10 b_in = b_in+1;


initial
    begin
        
        a_in = 0;
        b_in = 0;
        
        
        #200 $finish();
    end     

endmodule
