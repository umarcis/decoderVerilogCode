`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 04:41:08 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder(En,In0,In1,Out0,Out1,Out2,Out3
);
    input En;
    input In0;
    input In1;
    
    output Out0;
    output Out1;
    output Out2;
    output Out3;
    
    assign Out0 = ~((~In0)&(~In1)&En);
     assign Out1 = ~((~In1) &In0&En);
     assign Out2 = ~((~In0)&In1&En);
     assign Out3 = ~(In0&In1&En);
     

endmodule
