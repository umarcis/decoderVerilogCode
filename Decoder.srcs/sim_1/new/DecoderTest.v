`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 05:25:31 PM
// Design Name: 
// Module Name: DecoderTest
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


module DecoderTest(


    );
    reg [2:0]x;
    wire [7:0]D;
    
    ThreeToEight_decoder a1(x[0],x[1],x[2],D[0],D[1],D[2],D[3],D[4],D[5],D[6],D[7]);
    
    initial begin 
    #100 
    x=3'b000;
    #100 
    x=3'b001;
    #100 
    x=3'b010;
    #100 
    x=3'b011;
    #100 
    x=3'b100;
    #100 
    x=3'b101;
    #100 
    x=3'b110;
    #100 
    x=3'b111;
    end
endmodule
