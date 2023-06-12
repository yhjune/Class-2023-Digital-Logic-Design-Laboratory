`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/12 18:33:07
// Design Name: 
// Module Name: binary_to_BCD
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


module binary_to_BCD(
    input clk,
    input [7:0] eight_bit_value,
    output reg [3:0] ones=0,
    output reg [3:0] tens=0,
    output reg [3:0] hundreds =0
    );
    
    reg [3:0] i =0;
    reg [19:0] shift_register =0;
    reg [3:0] temp_ones = 0;
    reg [3:0] temp_tens = 0;
    reg [3:0] temp_hundreds = 0;
    reg [7:0] OLD_eight_bit_value=0;
    
    always @(posedge clk)
    begin 
        if(i==0 & (OLD_eight_bit_value !=eight_bit_value ))begin
        shift_register = 20'd0;
        OLD_eight_bit_value = eight_bit_value;
        shift_register[7:0] = eight_bit_value;
        temp_ones = shift_register[19:16];
        temp_tens = shift_register[15:12];
        temp_hundreds = shift_register[11:8];
        i = i+1;
        end
        if(i<9 & i>0) begin
            if(temp_hundreds >=5) temp_hundreds = temp_hundreds+3;
            if(temp_tens >=5) temp_tens = temp_tens+3;
            if(temp_ones >=5) temp_ones = temp_ones+3;
            shift_register [19:8] = {temp_hundreds, temp_tens, temp_ones};
            shift_register = shift_register<<1;
            temp_hundreds= shift_register[19:16];
            temp_tens =shift_register[15:12];
            temp_ones =shift_register[11:8];
            i = i+1; // repeat until i =9;
        end
        if(i==9) begin
           i=0;
	       hundreds = temp_hundreds;
	       tens = temp_tens;
	       ones = temp_ones;
        end
    end
    
endmodule
