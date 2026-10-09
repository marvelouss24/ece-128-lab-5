`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 12:36:32 PM
// Design Name: 
// Module Name: sr_flip_flop_tb
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


module sr_flip_flop_tb;
reg S;
reg R;
reg E;
wire Q;
wire Qnot;

sr_flip_flip uut(S, R, E, Q, Qnot);

initial begin 
    #10 E=1'b0;S=1'b0;R=1'b0;
    #10 E=1'b0;S=1'b0;R=1'b1;
    #10 E=1'b0;S=1'b1;R=1'b0;
    #10 E=1'b0;S=1'b1;R=1'b1;
    #10 E=1'b1;S=1'b0;R=1'b0;
    #10 E=1'b1;S=1'b0;R=1'b1;
    #10 E=1'b1;S=1'b1;R=1'b0;
    #10 E=1'b1;S=1'b1;R=1'b1;
	#10 $stop;
	
end 
endmodule

