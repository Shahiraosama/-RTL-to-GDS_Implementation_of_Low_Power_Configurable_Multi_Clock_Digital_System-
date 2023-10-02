`include "Data_sampling.v"
`include "deserializer.v"
`include "edge_bit_counter.v"
`include "start_check.v"
`include "stop_check.v"
`include "Parity_check.v"

module UART_RX #(parameter D_WIDTH = 8)(

input	wire			clk,
input	wire			rst,
input	wire			RX_IN,
input	wire			PAR_EN,
input	wire		[5:0]	prescale,
input	wire			PAR_TYPE,
output				data_valid,
output			[D_WIDTH-1:0]	P_Data,
output					parity_error,
output					framing_error



);

wire			par_chk_en; 
wire			sampled_bit;

wire			stp_chk_en;
wire			deser_en;
wire			data_sample_en;
wire	[5:0]		edge_count;
wire			enable;
wire	[3:0]		bit_count;
wire			strt_chk_en;
wire			strt_glitch;


Parity_check PAR_CHK (
.clk(clk),
.rst(rst),
.PAR_TYPE(PAR_TYPE),
.PAR_EN(PAR_EN),
.par_chk_en(par_chk_en),
.sampled_bit(sampled_bit),
.P_Data(P_Data),
.par_err(parity_error)
);


stop_check stp_chk (
.clk(clk),
.rst(rst),
.stp_chk_en(stp_chk_en),
.sampled_bit(sampled_bit),
.stp_err(framing_error)

);

deserializer deser_Unit (
.clk(clk),
.rst(rst),
.sampled_bit(sampled_bit),
.P_Data(P_Data),
.deser_en (deser_en),
.edge_count (edge_count),
.prescale (prescale)
);

Data_sampling sampler (
.clk(clk),
.rst(rst),
.RX_IN(RX_IN),
.prescale(prescale),
.data_sample_en(data_sample_en),
.edge_count(edge_count),
.sampled_bit (sampled_bit)

);

edge_bit_counter counter_Unit (
.clk(clk),
.rst(rst),
.enable(enable),
.prescale(prescale),
.bit_count (bit_count),
.edge_count (edge_count)
);

start_check strt_CHK_Unit (
.clk(clk),
.rst(rst),
.sampled_bit(sampled_bit),
.strt_chk_en (strt_chk_en),
.strt_glitch (strt_glitch)

);

FSM_RX fsm_Unit (
.clk(clk),
.rst(rst),
.PAR_EN(PAR_EN),
.RX_IN(RX_IN),
.edge_count(edge_count),
.bit_count(bit_count),
.stp_err(framing_error),
.strt_glitch(strt_glitch),
.par_err (parity_error),
.data_sample_en (data_sample_en),
.enable(enable),
.deser_en(deser_en),
.data_valid(data_valid),
.stp_chk_en(stp_chk_en),
.strt_chk_en(strt_chk_en),
.par_chk_en (par_chk_en),
.prescale (prescale)
);


endmodule