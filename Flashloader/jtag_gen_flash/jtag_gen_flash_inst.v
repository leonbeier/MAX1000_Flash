	jtag_gen_flash u0 (
		.clk_clk        (<connected-to-clk_clk>),        //       clk.clk
		.qspi_pins_dclk (<connected-to-qspi_pins_dclk>), // qspi_pins.dclk
		.qspi_pins_ncs  (<connected-to-qspi_pins_ncs>),  //          .ncs
		.qspi_pins_data (<connected-to-qspi_pins_data>), //          .data
		.reset_reset_n  (<connected-to-reset_reset_n>)   //     reset.reset_n
	);

