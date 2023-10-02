module FSM_RX (

input	wire			clk,
input	wire			rst,
input	wire	[5:0]		prescale,
input	wire			PAR_EN,
input	wire			RX_IN,
input	wire	[5:0]		edge_count,	
input	wire	[3:0]		bit_count,
input	wire			stp_err,
input	wire			strt_glitch,
input	wire			par_err,
output	wire			data_sample_en,
output	wire			enable,
output	wire			deser_en,
output	reg				data_valid,
output	wire			stp_chk_en,
output	wire			strt_chk_en,
output	wire			par_chk_en


);

reg		[3:0]	current_state;
reg		[3:0]	next_state;
reg				data_valid_comb;

localparam IDLE   = 4'b0000;
localparam start  = 4'b0001;
localparam S_Data = 4'b0010;
localparam parity = 4'b0011;
localparam stop   = 4'b0111;
localparam another_frame = 4'b1111;


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        current_state <= IDLE;
    end
    else begin
        current_state <= next_state ;
    end
end

always@(*) begin
    case(current_state)
    IDLE: begin
        if (RX_IN) begin
            next_state = IDLE ;
        end
        else begin
            next_state = start;
        end
    end

    start: begin
                if(edge_count ==  ((prescale >> 1) + 'd1) && strt_glitch)
                    begin
                            next_state = IDLE;
							end
                        else if (edge_count == prescale) begin
                            next_state = S_Data;
                    end
                else
                    begin   
                       next_state = start;
                    end                    
            end

    S_Data:  begin
                if( (bit_count == 9) && edge_count == prescale ) // Wait until the whole 8 data bits are sampled and their clock cycles have passed
                    begin
                        if(PAR_EN) begin
                            next_state = parity;
                        end
						else begin
                            next_state = stop;
                   end
				   end
                else
                    begin
                        next_state = S_Data;
                    end
            end

    parity:  begin
                if(edge_count == prescale)
                    begin
                        next_state = stop;
                    end
                else
                    begin
                        next_state = parity;
                    end
            end

    stop: 
	begin
                if(edge_count == (prescale - 'd1) )
                    begin
                        next_state = another_frame;
                    end
                else
                    begin
                        next_state = stop;
                    end
            end


    another_frame: begin
        if(!RX_IN) begin
            next_state = start;
        end
        else begin
            next_state = IDLE ;
        end
    end
	

    default :
    begin
    next_state = IDLE ;
    end

    endcase

end

always@(*)
begin

if (next_state == another_frame)
	begin
	
	if(PAR_EN)
		begin
		if(!par_err && !stp_err )
			begin
			data_valid_comb = 'd1;
				end
				else 
				begin
				data_valid_comb = 'd0;
					end
			end
	else
		begin
	if(!stp_err )
			begin
			data_valid_comb = 'd1;
				end
				else 
				begin
				data_valid_comb = 'd0;
					end
			end
	
		end
		else
		begin
		data_valid_comb = 'd0;
		end

end

assign enable = ((next_state == IDLE) || (next_state == another_frame)) ? 'd0: 'd1;

assign deser_en = ((current_state == S_Data) && (edge_count == (prescale >> 'd1 ) + 'd1 )) ? 1'b1 : 1'b0;

assign strt_chk_en = ((current_state == start) && (edge_count == (prescale >> 'd1 ) + 'd1 )) ? 1'b1 : 1'b0;

assign par_chk_en = ((current_state == parity) && (edge_count == (prescale >> 'd1 ) + 'd1 )) ? 1'b1 : 1'b0;

assign stop_check_en = ((current_state == stop) && (edge_count == (prescale >> 'd1 ) + 'd1 )) ? 1'b1 : 1'b0;


 always @(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            data_valid <= 1'b0;
        end
        else
        begin
            data_valid <= data_valid_comb;
        end
    end


endmodule