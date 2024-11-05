`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2024 01:37:03
// Design Name: 
// Module Name: comp_tb
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


module comp_tb();


reg a_in;
reg b_in;
wire g_t;
wire l_t;
wire e_t;

comparator DUT (a_in,b_in,g_t,l_t,e_t);

//always  #10 a_in = ~a_in;
//always #10 b_in = ~b_in;


initial 
    begin
        a_in = 0;
        b_in = 0;
        
        #20 a_in = 1;
            b_in = 1;
        
        #20 a_in = 1;
            b_in = 0;
            
        #20 a_in = 0;
            b_in = 1;
            
        #100 $finish();
        
        
        
         
    end

endmodule
