module PULSE_GEN_BLOCK (

input	wire		CLK,
input	wire		RST,
input	wire		LVL_SIG,
output	wire		PULSE_SIG


);

reg	out_reg ;
reg	in_reg;

always@(posedge CLK or negedge RST)
begin
if(!RST)
begin
out_reg	<= 'b0;
in_reg <= 'b0;
end

else
begin

in_reg <= LVL_SIG ;
out_reg <= in_reg ;

end

end

assign PULSE_SIG = ~out_reg & in_reg ;

endmodule
