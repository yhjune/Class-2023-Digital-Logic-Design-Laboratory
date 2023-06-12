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
    
    always @(posedge rsb) begin 
        
    end
    
    
    //switch-segment connect, with display refresh rate and default==std number
    
    //up==add
    always @(posedge btn[0]) begin
        result = swA + swB;
    end
    //mid==mul
    always @(posedge btn[1]) begin 
    
    end
    
    //down==sub
    always @(posedge btn[2]) 
    begin
        if(swA > swB) begin 
            result = swA-swB;
        end
        else result = 0;
    end

endmodule
