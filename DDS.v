`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 18:53:32
// Design Name: 
// Module Name: DDS
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


module DDS(
    input clk,
    input reset,
    input [31:0] FTW,
    output signed [15:0] sample
    );
    wire [31:0] RawPhase;
    wire signed [15:0] LUTOutput;
    PhaseAcc PhA (clk, reset, FTW, RawPhase);
    SineMem SinM (RawPhase[31:20], LUTOutput);
    assign sample = LUTOutput;  
endmodule
