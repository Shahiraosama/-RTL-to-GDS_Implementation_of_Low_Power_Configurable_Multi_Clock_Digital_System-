module ALU_16 #(parameter D_WIDTH = 8 , parameter FUN_WIDTH = 4 )(

input	wire	[D_WIDTH-1:0]		A,
input	wire	[D_WIDTH-1:0]		B,
input	wire				ENABLE,
input	wire				CLK,
input	wire				RST,
input	wire	[FUN_WIDTH-1:0]		ALU_FUN,
output	reg  				OUT_VALID,
output	reg 	[(2*D_WIDTH)-1:0] 	ALU_OUT

);

reg [D_WIDTH-1:0] 		ALU_OUT_Comb;
reg                 	OUT_VALID_Comb;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    ALU_OUT  <= 'b0 ;
    OUT_VALID <= 1'b0 ;	
   end
  else 
   begin  
    ALU_OUT  <= ALU_OUT_Comb ;
    OUT_VALID <= OUT_VALID_Comb ;
   end	
 end  


always@(*)
begin

 OUT_VALID_Comb = 1'b0 ;
   ALU_OUT_Comb  = 'b0 ;

if (ENABLE)
begin

 OUT_VALID_Comb = 1'b1 ;

case (ALU_FUN)

'b0000:
	begin
	ALU_OUT_Comb = A+B;
	end

'b0001:
	begin
	ALU_OUT_Comb = A-B;
	end

'b0010:
	begin
	ALU_OUT_Comb = A*B;
	end

'b0011:
	begin
	ALU_OUT_Comb = A/B;
	end

'b0100:
	begin
	ALU_OUT_Comb = A&B;
	end

'b0101:
	begin
	ALU_OUT_Comb = A|B;
	end

'b0110:
	begin
	ALU_OUT_Comb = ~(A&B);
	end

'b0111:
	begin
	ALU_OUT_Comb = ~(A|B);
	end

'b1000:
	begin
	ALU_OUT_Comb = A^B;
	end

'b1001:
	begin
	ALU_OUT_Comb = ~(A^B);
	end

'b1010:
	begin
   if(A==B)
	ALU_OUT_Comb = 'd1;
     else
       begin
	ALU_OUT_Comb = 'd0;
         end
           end
'b1011:
	begin
         if(A>B)
  	ALU_OUT_Comb = 'd2;
          else
           begin
	ALU_OUT_Comb = 'd0;
            end
             end

4'b1100:	
	begin
	 if(A<B)
	ALU_OUT_Comb =16'd3;
          else
           begin
	ALU_OUT_Comb =16'd0;
            end
              end

'b1101:
	begin
	ALU_OUT_Comb = A>>1'b1;
          end

'b1110:
	begin
	  ALU_OUT_Comb = A<<1'b1;
	  end

default: ALU_OUT_Comb = 'b0;

endcase

end

else
   begin
	 OUT_VALID_Comb = 1'b0 ;
   end

end

endmodule
