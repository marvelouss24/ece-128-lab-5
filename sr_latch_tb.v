`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 12:36:32 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
reg S;
reg R;
wire Q;
wire Qnot;

sr_latch uut(S, R, Q, Qnot);

initial begin 
    #10 S=1'b0;R=1'b0;
    #10 S=1'b0;R=1'b1;
    #10 S=1'b1;R=1'b0;
    #10 S=1'b1;R=1'b1;
	#10 $stop;
	
end 
endmodule
