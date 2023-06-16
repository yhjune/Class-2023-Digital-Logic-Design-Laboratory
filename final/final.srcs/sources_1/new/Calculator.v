`timescale 1ns / 1ps

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
