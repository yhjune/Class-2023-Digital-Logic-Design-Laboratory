`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/12 18:00:50
// Design Name: 
// Module Name: anode_control
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


module anode_control(
    input[1:0] refreshcounter,
    output reg [3:0] anode = 0
    );
    
    always @(posedge refreshcounter)
    begin
        case(refreshcounter)
            2'b00:
                anode = 4'b1110; // digit1 (right digit)
            2'b01:
                anode = 4'b1101; // digit2 
            2'b10:
                anode = 4'b1011; // digit3 
            2'b11:
                anode = 4'b0111; // digit4 (left digit)
         endcase               
    end
    
endmodule
