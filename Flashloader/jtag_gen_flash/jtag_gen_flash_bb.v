
module jtag_gen_flash (
	clk_clk,
	reset_reset_n,
	qspi_pins_dclk,
	qspi_pins_ncs,
	qspi_pins_data);	

	input		clk_clk;
	input		reset_reset_n;
	output		qspi_pins_dclk;
	output		qspi_pins_ncs;
	inout	[3:0]	qspi_pins_data;
endmodule
