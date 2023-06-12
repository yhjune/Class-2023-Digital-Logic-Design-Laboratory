`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/12 18:00:50
// Design Name: 
// Module Name: refreshCounter
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


module refreshCounter(
    input refresh_clock,
    output reg [1:0] refreshcounter=0
    );
    
    always @(posedge refresh_clock) refreshcounter <= refreshcounter+1;
endmodule
