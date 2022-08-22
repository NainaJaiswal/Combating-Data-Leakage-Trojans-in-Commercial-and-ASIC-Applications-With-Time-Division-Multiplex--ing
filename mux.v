`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:35 04/05/2019 
// Design Name: 
// Module Name:    mux 
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
module mux(cout,a,b,c,d,s1,s0 );


  input  a,b,c,d,s1,s0;
  output cout;
  
  wire  s0n,s1n; //s0 not, s1 not
  wire  w1,w2,w3,w4;

  not n1(s0n,s0);
  not n2(s1n,s1);

  and and1(w1,a,s1n,s0n);
  and and2(w2,b,s1n,s0);
  and and3(w3,c,s1,s0n);
  and and4(w4,d,s1,s0);

  or or1(cout,w1,w2,w3,w4);



endmodule
