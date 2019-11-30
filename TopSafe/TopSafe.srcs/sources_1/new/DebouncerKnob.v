`timescale 1ns/1ns

module DebouncerKnob #(parameter N=3) (input clk, rst, in, 
		output reg out);

reg [N:0] q;

always @(posedge clk, posedge rst)
	if (rst)
		begin q <= {(N+1){1'b0}}; out <= 1'b0; end
	else begin
		case(q[N:1])
			{N{1'b1}}: out <= 1'b1;
			{N{1'b0}}: out <= 1'b0;
			default: ;
		endcase
		q <= {q[N-1:0], in};
	end
 
endmodule

