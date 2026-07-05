`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 18:17:28
// Design Name: 
// Module Name: PhaseAcc
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


module PhaseAcc(
    input clk,
    input reset,
    input [31:0] phase_inc,
    output [31:0] phase
    );
    reg [31:0] phase_acc;
    
    always @ (posedge clk) begin
        if (reset) begin
            phase_acc <= 32'd0;
        end
        
        else begin
            phase_acc <= phase_acc + phase_inc;
        end
    end        
       assign phase = phase_acc;
       
endmodule
