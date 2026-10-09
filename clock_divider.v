`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 09:33:44 AM
// Design Name: 
// Module Name: clock_divider
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

always @(posedge clk)
    begin
        if (!rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
    
endmodule

module clock_divider(
input T,
input clk,
input rst,
output [1:0] Q
);

t_flip_flop T0(T, clk, rst, Q[0]);
t_flip_flop T1(T, Q[0], rst, Q[1]);

endmodule
