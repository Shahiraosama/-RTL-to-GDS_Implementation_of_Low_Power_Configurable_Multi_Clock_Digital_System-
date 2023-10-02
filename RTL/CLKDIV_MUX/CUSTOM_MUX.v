module CUSTOM_MUX #(parameter D_WIDTH = 8)(

input	wire	[5:0]	IN,
output	reg	[D_WIDTH-1:0] OUT

);

always@(*)
begin

case(IN)

6'd32: OUT = 'd1; 
6'd16: OUT = 'd2;
6'd8:  OUT = 'd4;
6'd4:  OUT = 'd8;

default: OUT = 'b1;


endcase

end

endmodule
