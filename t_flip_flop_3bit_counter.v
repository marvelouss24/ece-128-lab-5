`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 09:33:44 AM
// Design Name: 
// Module Name: t_flip_flop_3bit_counter
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

module t_flip_flop(
input T,
input clk,
input rst,
output reg Q
);

always @(posedge clk or negedge rst)
    begin
        if (!rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
    
endmodule

module t_flip_flop_3bit_counter(
input T,
input clk,
input rst,
output [2:0] Q
);

t_flip_flop T0(T, clk, rst, Q[0]);
t_flip_flop T1(Q[0], clk, rst, Q[1]);

wire a1;
and (a1, Q[0], Q[1]);

t_flip_flop T2(a1, clk, rst, Q[2]);

endmodule
