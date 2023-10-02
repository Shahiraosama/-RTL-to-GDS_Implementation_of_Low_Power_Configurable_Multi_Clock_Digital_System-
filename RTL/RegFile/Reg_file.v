module Reg_file #(parameter ADDRESS = 4, parameter D_WIDTH = 8 , parameter DEPTH = 16)(

input	wire			clk,
input	wire			rst,
input 	wire			WrEn,
input	wire			RdEn,
input	wire	[ADDRESS-1:0]	Address,
input	wire	[D_WIDTH-1:0]	WrData,

output	reg	[D_WIDTH-1:0]	RdData,
output	reg			RD_DATA_VALID,
output		[D_WIDTH-1:0]	REG0,		
output		[D_WIDTH-1:0]	REG1,
output		[D_WIDTH-1:0]	REG2,
output		[D_WIDTH-1:0]	REG3

);

integer i;
reg [D_WIDTH-1:0] RegFile [DEPTH-1:0];

always @ (posedge clk or negedge rst)
begin

if (!rst)
begin

RD_DATA_VALID <= 'b0;
RdData <= 'b0;

for (i=0; i< DEPTH ; i=i+1)
begin

if(i == 2)
begin
RegFile[i] <= 'b100000_01 ;
end

else if(i == 3)
begin
RegFile[i] <= 'b0010_0000 ; // config of DIV_RATIO
end

else
begin
RegFile[i]<='b0;
end

end

end

else if (WrEn && !RdEn)
begin
RegFile[Address] <= WrData;
end

else if (RdEn && !WrEn)
begin
RdData <= RegFile[Address]; 
RD_DATA_VALID <= 'b1;
end

else
begin
RD_DATA_VALID <= 'b0;
end

end

assign REG0 = RegFile[0];
assign REG1 = RegFile[1];
assign REG2 = RegFile[2];
assign REG3 = RegFile[3];

endmodule

