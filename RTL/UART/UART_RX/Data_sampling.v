module Data_sampling (

input	wire			clk,	
input	wire			rst,
input	wire	[5:0]		prescale,
input	wire			RX_IN,
input	wire			data_sample_en,
input	wire	[5:0]		edge_count,
output	wire			sampled_bit

);

   
    reg sample1, sample2, sample3;
    reg sample1_comb, sample2_comb, sample3_comb;
    
    // Samples sequential logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            sample1 <= 1'b0;
            sample2 <= 1'b0;
            sample3 <= 1'b0;
        end
        else
        begin
            sample1 <= sample1_comb;
            sample2 <= sample2_comb;
            sample3 <= sample3_comb;
        end
    end
    
    // Sample 1 combinational logic
    always@(*)
    begin
        
        if (edge_count == ((prescale >> 1) - 'd2))
        begin
            sample1_comb = RX_IN;
        end
        else
        begin
            sample1_comb = sample1;
        end
    end
    
    // Sample 2 combinational logic
    always@(*)
    begin
      
        if (edge_count == (prescale >> 1) - 'd1)
        begin
            sample2_comb = RX_IN;
        end
        else
        begin
            sample2_comb = sample2;
        end
    end
    
    // Sample 3 combinational logic
    always@(*)
    begin
       
        if (edge_count == (prescale >> 1))
        begin
            sample3_comb = RX_IN;
        end
        else
        begin
            sample3_comb = sample3;
        end
    end
    
    
     
    assign sampled_bit = (sample1 & sample2) | (sample1 & sample3) | (sample2 & sample3);
    
endmodule