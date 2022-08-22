`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:54:50 04/05/2019
// Design Name:   Des_Top
// Module Name:   D:/Paul S/E-Pro_project/ME/TRE/des/tdm_test2.v
// Project Name:  DESS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Des_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tdm_test2;

	// Inputs
	reg CLK;
	reg RST;
	reg CHIP_SELECT_BAR;
	reg [64:1] PLAIN_TEXT;
	reg [64:1] KEY;
	reg [64:1] d;
	reg [64:1] s1;
	reg [64:1] s0;
	reg [64:1] f;

	// Outputs
	wire [64:1] CIPHER_TEXT;
	wire [64:1] out;

	// Instantiate the Unit Under Test (UUT)
	Des_Top uut (
		.CLK(CLK), 
		.RST(RST), 
		.CHIP_SELECT_BAR(CHIP_SELECT_BAR), 
		.PLAIN_TEXT(PLAIN_TEXT), 
		.CIPHER_TEXT(CIPHER_TEXT), 
		.KEY(KEY), 
		.d(d), 
		.s1(s1), 
		.s0(s0), 
		.f(f), 
		.out(out)
	);

initial begin
	CLK=1;
	forever
	#10
	CLK=~CLK;
end

	initial begin
		// Initialize Inputs
		
		RST = 0;
		CHIP_SELECT_BAR = 0;
		//PLAIN_TEXT = 64'h69276d2073657879;
		PLAIN_TEXT = 64'hc16b85393adb0ecb;
		KEY = 64'h0101010101010101;
		d =   64'h0101111110101111;
		s1 =  64'h0010110101001011;
		s0 =  64'h1010101010101010;
		f =   64'h0111110000111000;

		// Wait 100 ns for global reset to finish
		#100;
		
     // CLK = 0;
		RST = 1;
		CHIP_SELECT_BAR = 0;
		//PLAIN_TEXT = 64'h69276d2073657879;
		PLAIN_TEXT = 64'hc16b85393adb0ecb;
		KEY = 64'h1100100110011001;
		d =   64'h1010101010101010;
		s1 =  64'h0001110011100011;
		s0 =  64'h1010101010101010;
		f =   64'h1111111111111111;

     # 20
	  RST=0;

		#100;
        
	end
      
		   

endmodule

