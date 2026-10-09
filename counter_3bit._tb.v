`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 12:36:32 PM
// Design Name: 
// Module Name: counter_3bit
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


module counter_3bit_tb;
reg T;
reg clk;
reg rst;
wire [2:0]Q;

t_flip_flop_3bit_counter uut(T, clk, rst, Q);

initial begin 
    #10 rst=1'b0;clk=1'b0;
    #10 rst=1'b0;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
	#10 $stop;
end
endmodule
