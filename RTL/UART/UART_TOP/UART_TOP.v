module UART_TOP #(parameter D_WIDTH = 8)(

input	wire					TX_CLK,
input	wire					RX_CLK,
input	wire					SYNC_RST,
input	wire					RX_IN,
input	wire					TX_IN_VALID,
input	wire	[D_WIDTH-1:0]	TX_IN_P,  
input	wire	[5:0]			UART_CONFIG,
input	wire					Par_en,
input	wire					Par_type,

output			[D_WIDTH-1:0]	RX_OUT_P,
output							RX_OUT_V,
output							TX_OUT,
output							TX_OUT_V,
output  wire                    parity_error,
output  wire                    framing_error


);


UART_TX  #(.D_WIDTH(D_WIDTH)) uart_tx_unit (

.clk(TX_CLK),
.rst(SYNC_RST),
.P_Data(TX_IN_P),
.Data_valid(TX_IN_VALID),
.Par_type(Par_type),
.Par_en(Par_en),
.TX_OUT(TX_OUT),
.busy(TX_OUT_V)

);



UART_RX #(.D_WIDTH(D_WIDTH)) uart_rx_unit(

.clk(RX_CLK),
.rst(SYNC_RST),
.RX_IN(RX_IN),
.PAR_EN(Par_en),
.prescale(UART_CONFIG),
.PAR_TYPE(Par_type),
.data_valid(RX_OUT_V),
.P_Data(RX_OUT_P),
.parity_error(parity_error),
.framing_error(framing_error)


);

endmodule
