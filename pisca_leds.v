
module pisca_leds(
	input clk_in1,
	output led_out1
);
reg [9:0] contador = 0;
reg l = 0;
assign led_out1 = l;
always @(posedge clk_in1) begin
	 contador = contador+1;
	if (contador == 0) begin
	 l = ~l;
	end
end

endmodule

module testbench;
  
	wire led;
	reg clk = 0;

	pisca_leds Leds1(clk, led);
  
	always #2 clk = ~clk;

	initial begin
	$dumpvars;
	#500;
	$finish;
	end

endmodule
