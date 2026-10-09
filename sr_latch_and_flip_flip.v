`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2026 09:33:44 AM
// Design Name: 
// Module Name: sr_latch_and_flip_flip
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


module sr_latch(
input S,
input R,
output Q,
output Qnot    
);

nor (Q, R, Qnot);
nor (Qbar, S, Q);

endmodule
module sr_latch(
input S,
input R,
output Q,
output Qnot    
);

nor (Q, R, Qnot);
nor (Qnot, S, Q);

endmodule

module sr_flip_flip(
input S,
input R,
input E,
output Q,
output Qnot    
);

wire a1, a2;

and (a1, R, E);
and (a2, S, E);

nor (Q, a1, Qnot);
nor (Qnot, a2, Q);

endmodule

