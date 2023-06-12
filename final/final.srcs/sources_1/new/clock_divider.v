`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/12 17:51:09
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


module clock_divider(
input wire clk, //100Mhz
output reg divided_clk =0// 1Hz -> 0.5s on 0.5s off
    );
    localparam div_vlaue =4999;
    
    integer counter_value = 0;
    always @(posedge clk)
    begin
        if(counter_value ==div_vlaue)
            counter_value <= 0;
        else
            counter_value <= counter_value+1;
    end
    
    always @(posedge clk)
    begin
        if(counter_value == div_vlaue)
            divided_clk <= -divided_clk;
        else 
            divided_clk <= divided_clk;
    end
endmodule
