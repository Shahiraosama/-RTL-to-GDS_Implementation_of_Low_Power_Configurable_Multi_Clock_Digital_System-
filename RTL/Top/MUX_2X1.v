module MUX_2X1 #(parameter D_WIDTH =8) (

input	wire	[D_WIDTH-1:0]	IN1,
input	wire	[D_WIDTH-1:0]	IN0,
input	wire			SEL,
output	wire	[D_WIDTH-1:0]	OUT	
	
);

assign OUT = (SEL)? IN1 : IN0 ;

endmodule
