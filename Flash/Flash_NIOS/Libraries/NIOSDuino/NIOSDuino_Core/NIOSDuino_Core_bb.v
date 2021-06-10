
module NIOSDuino_Core (
	clk_in_clk,
	pio_export,
	qspi_dclk,
	qspi_ncs,
	qspi_data,
	reset_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	sdram_clk_clk,
	uart_rxd,
	uart_txd);	

	input		clk_in_clk;
	inout	[15:0]	pio_export;
	output		qspi_dclk;
	output		qspi_ncs;
	inout	[3:0]	qspi_data;
	input		reset_reset_n;
	output	[11:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output		sdram_clk_clk;
	input		uart_rxd;
	output		uart_txd;
endmodule
