`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 23:13:14
// Design Name: 
// Module Name: all_gate_para
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


module all_gate_para #(parameter DATA_WIDTH = 8)(
                       input [DATA_WIDTH - 1:0]a_in,
                       input [DATA_WIDTH - 1:0]b_in,
                       output [DATA_WIDTH - 1:0]y_out_and,
                       output [DATA_WIDTH - 1:0]y_out_or,
                       output [DATA_WIDTH - 1:0]y_out_not,
                       output [DATA_WIDTH - 1:0]y_out_xor,
                       output [DATA_WIDTH - 1:0]y_out_xnor,
                       output [DATA_WIDTH - 1:0]y_out_nand,
                       output [DATA_WIDTH - 1:0]y_out_nor
                       
                       //output [DATA_WIDTH - 1:0][6:0]y_out
                       
);


 assign y_out_and = a_in && b_in;
 assign y_out_or = a_in || b_in;
 assign y_out_not = ~(a_in);
 assign y_out_xor = a_in ^ b_in;
 assign y_out_xnor = a_in ~^ b_in;
 assign y_out_nand = ~(a_in && b_in);
 assign y_out_nor = ~(a_in || b_in);

endmodule
