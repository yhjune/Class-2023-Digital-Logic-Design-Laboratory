`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/02 17:02:06
// Design Name: 
// Module Name: sevenSegmentCal
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


module sevenSegmentCal(rsb, btn, swA,swB,segA, segB,clk);
    input rsb;
    input wire clk;//100Mhz
    input [2:0] btn; // up ==btn[0] mid =[1] down=[2]
    input [16:9] swB;
    input [8:1] swA;
    output [8:5] segB;
    output [4:1] segA;
    
    reg [15:0] result;
    wire refreshclock;
    
    clock_divider refreshclock_generator(
    .clk(clk),
    .divided_clk(refreshclock)
    );

endmodule
