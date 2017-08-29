
module pisca_leds(
	input CLOCK_50,
	input [3:0] KEY,
	input [9:0] SW,
	output [7:0] LEDR
	
);
reg [23:0] contador = 0;
reg l = 0;

assign LEDR[0] = l;
assign LEDR[1] = l;
assign LEDR[2] = l;
assign LEDR[3] = l;
assign LEDR[4] = l;
assign LEDR[5] = l;
assign LEDR[6] = l;
assign LEDR[7] = l;


always @(posedge CLOCK_50) begin
 contador = contador + 1;
 if(contador == 0) begin
	l = ~l;
	end
end	
endmodule	
