
module jtag_gen_flash (
	clk_clk,
	qspi_pins_dclk,
	qspi_pins_ncs,
	qspi_pins_data,
	reset_reset_n);	

	input		clk_clk;
	output		qspi_pins_dclk;
	output		qspi_pins_ncs;
	inout	[3:0]	qspi_pins_data;
	input		reset_reset_n;
endmodule
