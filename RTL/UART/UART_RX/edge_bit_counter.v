module edge_bit_counter (

input	wire				clk,
input	wire				rst,
input	wire				enable,
input	wire    	[5:0]		prescale,
output	reg		[3:0]	 	bit_count,
output	reg		[5:0]		edge_count		

);

reg		[5:0]	edge_count_comb;
reg		[3:0]	bit_count_comb;

always@(posedge clk or negedge rst)
begin

if(!rst)
begin
edge_count <= 'b0 ;
bit_count <= 'b0 ;
end

else 
begin

edge_count <= edge_count_comb ;
bit_count <= bit_count_comb ;

end

end

always@(*)
begin

if(enable)
		begin
	if(edge_count == prescale)
		begin
		edge_count_comb = 'd1;
			end
				else
				begin
				edge_count_comb = edge_count_comb + 'd1;	
					end
			end
		else
			begin
			edge_count_comb = 'd0;
				end

end

always@(*)
begin

if(enable)
		begin
	if(bit_count == 'd0)
		begin
		bit_count_comb = 'd1;
			end
				else if (edge_count == prescale)
				begin
				bit_count_comb = bit_count_comb + 'd1;	
					end
			else
			begin
				bit_count_comb = bit_count;
				end

			end
				else
				begin
					bit_count_comb = 'd0;
					end


end

endmodule