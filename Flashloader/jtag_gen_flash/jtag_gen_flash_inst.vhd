	component jtag_gen_flash is
		port (
			clk_clk        : in    std_logic                    := 'X';             -- clk
			reset_reset_n  : in    std_logic                    := 'X';             -- reset_n
			qspi_pins_dclk : out   std_logic;                                       -- dclk
			qspi_pins_ncs  : out   std_logic;                                       -- ncs
			qspi_pins_data : inout std_logic_vector(3 downto 0) := (others => 'X')  -- data
		);
	end component jtag_gen_flash;

	u0 : component jtag_gen_flash
		port map (
			clk_clk        => CONNECTED_TO_clk_clk,        --       clk.clk
			reset_reset_n  => CONNECTED_TO_reset_reset_n,  --     reset.reset_n
			qspi_pins_dclk => CONNECTED_TO_qspi_pins_dclk, -- qspi_pins.dclk
			qspi_pins_ncs  => CONNECTED_TO_qspi_pins_ncs,  --          .ncs
			qspi_pins_data => CONNECTED_TO_qspi_pins_data  --          .data
		);

