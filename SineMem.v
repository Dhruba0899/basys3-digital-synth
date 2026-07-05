`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 17:01:30
// Design Name: 
// Module Name: SineMem
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


module SineMem(
    input [11:0] Addr,
    output signed [15:0] MemOut
    );
    
    reg signed [15:0] ROM [0:4095];
    
    initial begin
        $readmemh("SineLUT.mem", ROM);
       end
        
    assign MemOut = ROM[Addr];
    
endmodule
