module piscaledsfinal(
	input CLOCK_50,
	input [3:0]KEY,
	output [7:0] LEDR
	);
	
	reg [25:0] cont = 0;
	reg [9:0] out = 0;
	reg [3:0] c = 1;
 	assign LEDR = out;
	
	always @(posedge CLOCK_50) begin
		cont = cont + c;
		if(cont >= 50000000) begin
			cont = 0;
			out = out+1;
		end
		if(KEY == 14) begin
			c = 1;
		end
		if(KEY == 13) begin
			c = 2;
		end
		if(KEY == 11) begin
			c = 4;
		end
		if(KEY == 7) begin
			c = 8;
		end
	end
endmodule