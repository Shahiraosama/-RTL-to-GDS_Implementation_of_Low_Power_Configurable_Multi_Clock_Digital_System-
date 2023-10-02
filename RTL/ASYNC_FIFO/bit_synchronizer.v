module BIT_SYNC #(parameter WIDTH = 4, STAGES = 2) 

(
	input	wire		[WIDTH-1:0]		ASYNC,
	input	wire							CLK,
	input	wire							RST,
	output	reg			[WIDTH-1:0]		SYNC
	
	);


// Synchronization FlipFlops
reg	[STAGES-1:0]	Sync_FFs	[WIDTH-1:0];

//iterator
integer i;


always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		
		for(i=0;i<WIDTH;i=i+1) begin
			Sync_FFs[i]		<=		'b0;
		end
		
	end
	else  begin

		for(i=0;i<WIDTH;i=i+1) begin
			Sync_FFs[i]		<=		{	Sync_FFs[i][STAGES-2:0], ASYNC[i]	};	
		end
		
	end
end

//Assiging output
always @(*)
 begin
  for (i=0; i<WIDTH; i=i+1)
    SYNC[i] = Sync_FFs[i][STAGES-1] ; 
 end 





endmodule