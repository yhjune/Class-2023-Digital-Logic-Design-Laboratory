`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/12 18:00:50
// Design Name: 
// Module Name: BCD_controller
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


module BCD_controller(
    input[3:0] digit1, //one
    input[3:0] digit2, //ten
    input[3:0] digit3, //hundred
    input[3:0] digit4, // thousand
    input [1:0] refreshcounter,
    output reg [3:0] ONE_DIGIT = 0 //choose which input digit in to be display
    );
    
    always @(posedge refreshcounter)
    begin
        case(refreshcounter)
            2'd0:
                ONE_DIGIT = digit1; // digit1 (right digit)
            2'd1:
                ONE_DIGIT = digit2; // digit2 
            2'd2:
                ONE_DIGIT =digit3; // digit3 
            2'd3:
                ONE_DIGIT = digit4; // digit4 (left digit)
         endcase               
    end
endmodule
