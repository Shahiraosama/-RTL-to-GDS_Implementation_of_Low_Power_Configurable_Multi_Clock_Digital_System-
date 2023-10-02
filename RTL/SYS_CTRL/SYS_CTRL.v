module SYS_CTRL #(parameter D_WIDTH = 8 , parameter FUNC_ALU =4 , parameter ADDRESS = 4) (

input	wire						CLK, 
input	wire						RST, 
input	wire						RX_D_VLD, 
input	wire						OUT_VALID, 
input	wire	[D_WIDTH-1:0]		RX_P_DATA, 

input	wire	[D_WIDTH-1:0]		RD_DATA, 

input	wire						RD_DATA_VALID, 
input	wire						FIFO_FULL, 	

input	wire	[(2*D_WIDTH)-1:0]	ALU_OUT,

output	reg							ALU_EN,
output	reg	[FUNC_ALU-1:0]			ALU_FUNC,
output	reg							CLK_EN,
output	reg	[ADDRESS-1:0]				Address,
output	reg							WrEn,
output	reg							RdEn,
output	reg						clk_div_en,
output	reg		[D_WIDTH-1:0]		TX_P_DATA,  // input data to FIFO WR_DATA
output	reg							TX_D_VLD, //WR_INCR
output	reg	[D_WIDTH-1:0]		WrData //input data to the RegFile



);


//states
localparam          IDLE_state  = 4'b0000 ,
                    Register_File_Write1 = 4'b0001 ,                    
                    Register_File_Read1 = 4'b0010 ,
                    ALU_With_op1 = 4'b0011 ,
                    Register_File_Write2 = 4'b0100 ,
                    Register_File_Write_ready = 4'b0101 ,
                    Register_File_Read_ready = 4'b0110 ,
                    ALU_With_op2 = 4'b0111 ,
                    ALU_With_Fun = 4'b1000 ,
                    ALU_calc = 4'b1001 ,
                    ALU_out1 = 4'b1010 ,
                    ALU_out2 = 4'b1011 ;
                    
                    
                    

reg      [3:0]      current_state ,
                    next_state ;




//state transition
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    current_state <= IDLE_state ;
   end
  else
   begin
    current_state <= next_state ;
   end
 end

//next state logic
always @ (*)
 begin
   case (current_state)
   IDLE_state   :  begin
              if(RX_D_VLD)
                begin
                  if(RX_P_DATA == 8'hAA)
                    begin
                      next_state = Register_File_Write1  ;
                    end
               else if(RX_P_DATA == 8'hBB)
                 begin
                   next_state = Register_File_Read1  ;
                 end
               else if (RX_P_DATA == 8'hCC)
                 begin
                   next_state = ALU_With_op1  ;
                 end
               else if (RX_P_DATA == 8'hDD)
                 begin
                   next_state = ALU_With_Fun  ;
                 end
                end
              else
                begin
                 next_state = IDLE_state  ;
                end  
             end
   Register_File_Write1  :  begin
             if(RX_D_VLD)
            begin
              next_state = Register_File_Write2  ;
                end 
              else
              begin
                next_state = Register_File_Write1  ;
            end 
     
        end
   Register_File_Write2  :  begin
          if(RX_D_VLD)
            begin
              next_state = Register_File_Write_ready  ;
                end 
              else
              begin
                next_state = Register_File_Write2  ;
               end 
        
             end
             
    Register_File_Write_ready  :  begin
            if(RX_D_VLD)
                begin
                  if(RX_P_DATA == 8'hAA)
                    begin
                      next_state = Register_File_Write1  ;
                    end
               else if(RX_P_DATA == 8'hBB)
                 begin
                   next_state = Register_File_Read1  ;
                 end
               else if (RX_P_DATA == 8'hCC)
                 begin
                   next_state = ALU_With_op1  ;
                 end
               else if (RX_P_DATA == 8'hDD)
                 begin
                   next_state = ALU_With_Fun  ;
                 end
                end
              else
                begin
                 next_state = IDLE_state  ;
                end
             end

Register_File_Read1  :  begin
             if(RX_D_VLD)
            begin
              next_state = Register_File_Read_ready  ;
                end 
              else
              begin
                next_state = Register_File_Read1  ;
            end
          end 
     
 Register_File_Read_ready  :  begin
   if (FIFO_FULL || !RD_DATA_VALID)
        begin
          next_state = Register_File_Read_ready  ;
        end
        else if (!FIFO_FULL && RD_DATA_VALID)
        begin
            if(RX_D_VLD)
                begin
                  if(RX_P_DATA == 8'hAA)
                    begin
                      next_state = Register_File_Write1  ;
                    end
               else if(RX_P_DATA == 8'hBB)
                 begin
                   next_state = Register_File_Read1  ;
                 end
               else if (RX_P_DATA == 8'hCC)
                 begin
                   next_state = ALU_With_op1  ;
                 end
               else if (RX_P_DATA == 8'hDD)
                 begin
                   next_state = ALU_With_Fun  ;
                 end
                end
              else
                begin
                 next_state = IDLE_state  ;
                end
              end
              else
            begin
              next_state = IDLE_state  ;
          end   
             end
             
  ALU_With_op1  :  begin
          if(RX_D_VLD)
            begin
              next_state = ALU_With_op2  ;
                end 
              else
              begin
                next_state = ALU_With_op1  ;
               end
             end 
  
  ALU_With_op2  :  begin
          if(RX_D_VLD)
            begin
              next_state = ALU_With_Fun  ;
                end 
              else
              begin
                next_state = ALU_With_op2  ;
               end
             end    
               
  ALU_With_Fun  :  begin
          if(RX_D_VLD)
            begin
              next_state = ALU_calc  ;
                end 
              else
              begin
                next_state = ALU_With_Fun  ;
               end
             end
               
               
  ALU_calc  :  begin
          if(OUT_VALID)
            begin
              next_state = ALU_out1  ;
                end 
              else
              begin
                next_state = ALU_calc  ;
               end
             end 
               
  ALU_out1  :  begin
              next_state = ALU_out2  ;
               end          
  
  ALU_out2  :  begin
            if(RX_D_VLD)
                begin
                  if(RX_P_DATA == 8'hAA)
                    begin
                      next_state = Register_File_Write1  ;
                    end
               else if(RX_P_DATA == 8'hBB)
                 begin
                   next_state = Register_File_Read1  ;
                 end
               else if (RX_P_DATA == 8'hCC)
                 begin
                   next_state = ALU_With_op1  ;
                 end
               else if (RX_P_DATA == 8'hDD)
                 begin
                   next_state = ALU_With_Fun  ;
                 end
                end
              else
                begin
                 next_state = IDLE_state  ;
                end  
             end

  
  default : begin
                 next_state = IDLE_state  ;
             end           
   endcase   
 end

/*always @(RST or current_state or stp_chk_en)
begin
  if(!RST || current_state == IDLE_state || current_state == Start_chk_state)
    begin
      error_flag_stop <= 0;
  end
  else if (stp_chk_en)
    begin
      error_flag_stop <= stp_err ;
      end
      
end*/
//output logic
reg [3:0] Address_reg ;
reg [7:0] WrData_reg ;
reg [3:0] ALU_FUNC_reg ;
reg [15:0] ALU_OUT_reg ;

always @ (posedge CLK)
begin
  Address_reg <= Address ;
  WrData_reg <= WrData ;
  ALU_FUNC_reg <= ALU_FUNC ;
  ALU_OUT_reg <= ALU_OUT ;
end


always @ (*)
 begin
   case (current_state)
   IDLE_state   :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
  Register_File_Write1  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = RX_P_DATA ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
  Register_File_Read1  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = RX_P_DATA  ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
  ALU_With_op1  :  begin
              WrEn = 1'b1 ;
              RdEn = 1'b0 ;
              Address = 4'b0000 ;
              WrData = RX_P_DATA ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end

  Register_File_Write2  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = Address_reg ;
              WrData = RX_P_DATA ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
  Register_File_Write_ready  :  begin
              WrEn = 1'b1 ;
              RdEn = 1'b0 ;
              Address = Address_reg ;
              WrData = WrData_reg ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
  Register_File_Read_ready  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b1 ;
              Address = Address_reg ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = RD_DATA ;
              if(RD_DATA_VALID)
              begin 
              TX_D_VLD  = 1'b1 ;
            end
          else
            begin
              TX_D_VLD  = 1'b0 ;
            end
             end          
             
   ALU_With_op2  :  begin
              WrEn = 1'b1 ;
              RdEn = 1'b0 ;
              Address = 4'b0001 ;
              WrData = RX_P_DATA ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end          
             
   ALU_With_Fun  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = RX_P_DATA ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
    ALU_calc  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = ALU_FUNC_reg ; 
              ALU_EN = 1'b1 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end
             
   ALU_out1  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = ALU_OUT_reg [7:0] ; 
              TX_D_VLD  = 1'b1 ;
             end 
    ALU_out2  :  begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = ALU_OUT_reg [15:8] ; 
              TX_D_VLD  = 1'b1 ;
             end  
                        
             
             
             
             
   default : begin
              WrEn = 1'b0 ;
              RdEn = 1'b0 ;
              Address = 4'b0100 ;
              WrData = 8'b00000000 ;
              ALU_FUNC = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLK_EN = 1'b1 ; 
              clk_div_en = 1'b1 ;
              TX_P_DATA = 8'b00000000 ; 
              TX_D_VLD  = 1'b0 ;
             end  
   endcase   
 end




endmodule


