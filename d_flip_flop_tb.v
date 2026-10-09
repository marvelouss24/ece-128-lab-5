`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 12:36:32 PM
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb;
reg D;
reg clk;
reg rst;
wire Q;

d_flip_flop_asynchronous uut(D, rst, clk, Q);

initial begin 
    #10 rst=1'b0;D=1'b0;clk=1'b0;
    #10 rst=1'b0;D=1'b0;clk=1'b1;
    
    #10 rst=1'b0;D=1'b1;clk=1'b0;
    #10 rst=1'b0;D=1'b1;clk=1'b1;
    
    #10 rst=1'b1;D=1'b0;clk=1'b0;
    #10 rst=1'b1;D=1'b0;clk=1'b1;
    
    #10 rst=1'b1;D=1'b1;clk=1'b0;
    #10 rst=1'b1;D=1'b1;clk=1'b1;
    
    #10 rst=1'b0;D=1'b1;clk=1'b0;
    #10 rst=1'b0;D=1'b1;clk=1'b1;
    
	#10 $stop;
	
end 
endmodule
