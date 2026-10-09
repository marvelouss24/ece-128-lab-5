`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 09:33:44 AM
// Design Name: 
// Module Name: d_flip_flops
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


module d_flip_flop_synchronous(
input D,
input rst,
input clk,
output reg Q
);

always @ (posedge clk)
    if (!rst)
        Q <= 0;
    else
        Q <= D;
        
endmodule

module d_flip_flop_asynchronous(
input D,
input rst,
input clk,
output reg Q
);

always @ (posedge clk or negedge rst)
    begin
        if (!rst)
            Q <= 0;
        else
            Q <= D;
    end 
endmodule
