`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 03:35:39 PM
// Design Name: 
// Module Name: lights_of_decoder
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


module lights_of_decoder(
In0,In1,En,R,G,B
    );
output reg R,G,B;
input En,In0,In1;
wire Out0,Out1,Out2,Out3;   
Decoder d1(En,In0,In1,Out0,Out1,Out2,Out3);



always@(*)
begin
case({Out0,Out1,Out2,Out3})
    4'b1110: begin R<=0; B<=0; G<=0; end  //En=1 In0=1 In1=1  Black colour  Out3
    4'b1101: begin R<=1; B<=0; G<=0; end  //En=1 In0=0 In1=1  Red Colour    Out2  
    4'b1011: begin R<=0; B<=1; G<=0; end   //En=1 In0=0 In1=1   Blue Out1    
    4'b0111: begin R<=1; B<=0; G<=1; end   //En=1 In0=0 In1=0   Yellow   Out0
    
    default:begin R<=1; B<=1; G<=1; end
endcase
end
endmodule
