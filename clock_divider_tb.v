`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 12:36:32 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb;
reg T;
reg clk;
reg rst;
wire [1:0]Q;

clock_divider uut(T, clk, rst, Q);

initial begin 
    #10 rst=1'b0;clk=1'b0;
    
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
       
    #10 rst=1'b1;T=1'b1;clk=1'b0;
    #10 rst=1'b1;T=1'b1;clk=1'b1;
    
    #10 clk=1'b0;
    #10 clk=1'b1;
    
    #10 clk=1'b0;
    #10 clk=1'b1;
    
    #10 clk=1'b0;
    #10 clk=1'b1;
     
	#10 $stop;
end
endmodule
