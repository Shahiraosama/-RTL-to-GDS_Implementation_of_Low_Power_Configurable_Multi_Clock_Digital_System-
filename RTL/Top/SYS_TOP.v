module SYS_TOP #(parameter D_WIDTH = 8 , parameter STAGES = 2 ,parameter FUNC_ALU = 4 ,parameter ADDRESS=4 ,parameter DEPTH =8 ,parameter RATIO = 8)(

input	wire		REF_CLK,
input	wire		RST,
input	wire		UART_CLK,
input	wire		RX_IN,
output	wire		TX_OUT,
output  wire            parity_error,
output  wire            framing_error


);

wire			tx_clk;
wire			rx_clk;
wire			ALU_CLK;
wire			sync_rst_2;
wire			sync_rst_1;
wire			f_empty;
wire	[D_WIDTH-1:0]		uart_config;
wire	[D_WIDTH-1:0]	fifo_data;
wire	[D_WIDTH-1:0]	rx_p_data;
wire			rx_data_valid;
wire			busy;
wire			rx_sync_valid;
wire	[D_WIDTH-1:0]	rx_sync_data;
wire			fifo_full;
wire			alu_out_valid;
wire	[2*D_WIDTH-1:0]	alu_out;
wire			rf_rd_data_vld;
wire	[D_WIDTH-1:0]	in_data_fifo;
wire			fifo_data_vld;
wire			alu_en;
wire	[FUNC_ALU-1:0]	alu_func;
wire			clk_en;
wire	[ADDRESS-1:0]	rf_address;
wire			wren;
wire			rden;
wire	[D_WIDTH-1:0]	rf_w_data;
wire	[D_WIDTH-1:0]	rf_rd_data;
wire			clk_div_en;
wire	[D_WIDTH-1:0]	OP_A;
wire	[D_WIDTH-1:0]	OP_B;
wire	[D_WIDTH-1:0]	division_ratio;
wire					RD_INC;
wire	[D_WIDTH-1:0]	rx_division_ratio;



UART_TOP #(.D_WIDTH(D_WIDTH)) uart_unit (

.TX_CLK(tx_clk),
.RX_CLK(rx_clk),
.SYNC_RST(sync_rst_2),
.Par_en(uart_config[0]),
.Par_type(uart_config[1]),
.UART_CONFIG(uart_config[7:2]),
.RX_IN(RX_IN),
.RX_OUT_P(rx_p_data),
.RX_OUT_V(rx_data_valid),
.TX_IN_VALID(!(f_empty)),
.TX_IN_P(fifo_data),
.TX_OUT(TX_OUT),
.TX_OUT_V(busy),
.parity_error(parity_error),
.framing_error(framing_error)

);

DATA_SYNC #(.D_WIDTH(D_WIDTH),.STAGES(STAGES)) data_sync_unit (
.CLK(REF_CLK),
.RST(sync_rst_1),
.bus_enable(rx_data_valid),
.unsync_bus(rx_p_data),
.enable_pulse(rx_sync_valid),
.sync_bus(rx_sync_data)

);

SYS_CTRL #(.D_WIDTH(D_WIDTH),.FUNC_ALU(FUNC_ALU),.ADDRESS(ADDRESS)) sys_ctrl_unit(

.CLK(REF_CLK),
.RST(sync_rst_1),
.RD_DATA(rf_rd_data),
.RD_DATA_VALID(rf_rd_data_vld),
.WrEn(wren),
.RdEn(rden),
.Address(rf_address),
.WrData(rf_w_data),
.ALU_EN(alu_en),
.ALU_FUNC(alu_func),
.ALU_OUT(alu_out),
.OUT_VALID(alu_out_valid),
.CLK_EN(clk_en),
.clk_div_en(clk_div_en),
.FIFO_FULL(fifo_full),
.RX_P_DATA(rx_sync_data),
.RX_D_VLD(rx_sync_valid),
.TX_P_DATA(in_data_fifo),
.TX_D_VLD(fifo_data_vld)

);

Reg_file #(.ADDRESS(ADDRESS),.D_WIDTH(D_WIDTH),.DEPTH(DEPTH)) reg_file_unit (

.clk(REF_CLK),
.rst(sync_rst_1),
.WrEn(wren),
.RdEn(rden),
.Address(rf_address),
.WrData(rf_w_data),
.RdData(rf_rd_data),
.RD_DATA_VALID(rf_rd_data_vld),
.REG0(OP_A),
.REG1(OP_B),
.REG2(uart_config),
.REG3(division_ratio)

);

ALU_16 #(.D_WIDTH(D_WIDTH),.FUN_WIDTH(FUNC_ALU)) alu_unit(
.CLK(ALU_CLK),
.RST(sync_rst_1),
.A(OP_A),
.B(OP_B),
.ENABLE(alu_en),
.ALU_FUN(alu_func),
.OUT_VALID(alu_out_valid),
.ALU_OUT(alu_out)


);

CLK_GATE clk_gating_unit(
.CLK_EN(clk_en),
.CLK(REF_CLK),
.GATED_CLK(ALU_CLK)
);

RST_SYNC #(.STAGES(STAGES)) RST_SYNC_1(

.CLK(REF_CLK),
.RST(RST),
.SYNC_RST(sync_rst_1)

);

RST_SYNC #(.STAGES(STAGES)) RST_SYNC_2(

.CLK(UART_CLK),
.RST(RST),
.SYNC_RST(sync_rst_2)

);

FIFO #(.WIDTH(D_WIDTH),.ADDRESS(ADDRESS),.DEPTH(DEPTH))  asynch_fifo (

.W_CLK(REF_CLK),
.W_RST(sync_rst_1),
.W_INC(fifo_data_vld),
.WR_DATA(in_data_fifo),
.R_CLK(tx_clk),
.R_RST(sync_rst_2),
.R_INC(RD_INC),
.RD_DATA(fifo_data),
.FULL(fifo_full),
.EMPTY(f_empty)


);


PULSE_GEN_BLOCK  pulse_gen_block (

.CLK(tx_clk),
.RST(sync_rst_2),
.LVL_SIG(busy),
.PULSE_SIG(RD_INC)

);

ClkDiv #(.RATIO(RATIO)) tx_clk_div (

.I_ref_clk (UART_CLK),
.I_rst_n (sync_rst_2),
.I_clk_en(clk_div_en),
.I_div_ratio(division_ratio),
.o_div_clk (tx_clk)
);

ClkDiv #(.RATIO(RATIO)) rx_clk_div (

.I_ref_clk (UART_CLK),
.I_rst_n (sync_rst_2),
.I_clk_en(clk_div_en),
.I_div_ratio(rx_division_ratio),
.o_div_clk (rx_clk)
);

CUSTOM_MUX #(.D_WIDTH(D_WIDTH)) custom_mux_unit (

.IN(uart_config[7:2]),
.OUT(rx_division_ratio)

);

endmodule
