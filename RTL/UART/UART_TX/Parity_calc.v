module Parity_calc(

input	wire		clk,
input	wire		rst,
input	wire		Data_valid,
input	wire	[7:0]	P_Data,
input	wire		Par_type,
input	wire		BUSY,
input	wire		Par_en,
output	reg		Par_bit
);

reg		[7:0]		DATA_REG;

localparam even = 1'b0;
localparam odd  = 1'b1;

always@(posedge clk or negedge rst)
begin
	if(!rst)
	begin
	DATA_REG <= 'b0;
	end

	else if (Data_valid & !BUSY)
	begin
	DATA_REG <= P_Data ;
	end
	
end

always@(posedge clk or negedge rst)
begin
	if(!rst)
	begin
	Par_bit <= 'd0;
	end

	else
	begin 
	if (Par_en)
	begin
	 
	 case (Par_type)
	 
	 even: Par_bit <= ^(DATA_REG) ;
	 
	 odd: Par_bit <= ~^(DATA_REG);
	 
	 default : Par_bit <= 'd0;
	 
	 endcase
	 
	 
	end
	
end
end

endmodule

