`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:23 04/05/2019 
// Design Name: 
// Module Name:    tdm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tdm( d,clk,rst,s1,s0,f,out);  //,out,q );


input   d,s0,s1,f;
input   clk,rst;

output   out;                                    

wire   z0,z1,z2,z3,z4,z5;


dff  i0(.d(d), .clk(clk), .rst(rst), .q(z0));
dff  i1(.d(d), .clk(clk), .rst(rst), .q(z1));
dff  i2(.d(d), .clk(clk), .rst(rst), .q(z2));
dff  i3(.d(d), .clk(clk), .rst(rst), .q(z3));
mux  i4(.a(z0),.b(z1), .c(z2), .d(z3), .s0(s0), .s1(s1), .cout(z4));
dff  i5(.d(z4), .clk(clk),.rst(rst), .q(z5));
axor i6(.e(z5), .f(f), .g(out));


    


endmodule
