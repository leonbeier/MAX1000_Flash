-- qspi_inf_mux.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity qspi_inf_mux is
	port (
		clk                 : in  std_logic                     := '0';             --       clk.clk
		reset               : in  std_logic                     := '0';             -- clk_reset.reset
		src_ready           : in  std_logic                     := '0';             --       src.ready
		src_valid           : out std_logic;                                        --          .valid
		src_data            : out std_logic_vector(3 downto 0);                     --          .data
		src_channel         : out std_logic_vector(11 downto 0);                    --          .channel
		src_startofpacket   : out std_logic;                                        --          .startofpacket
		src_endofpacket     : out std_logic;                                        --          .endofpacket
		sink0_ready         : out std_logic;                                        --     sink0.ready
		sink0_valid         : in  std_logic                     := '0';             --          .valid
		sink0_channel       : in  std_logic_vector(11 downto 0) := (others => '0'); --          .channel
		sink0_data          : in  std_logic_vector(3 downto 0)  := (others => '0'); --          .data
		sink0_startofpacket : in  std_logic                     := '0';             --          .startofpacket
		sink0_endofpacket   : in  std_logic                     := '0';             --          .endofpacket
		sink1_ready         : out std_logic;                                        --     sink1.ready
		sink1_valid         : in  std_logic                     := '0';             --          .valid
		sink1_channel       : in  std_logic_vector(11 downto 0) := (others => '0'); --          .channel
		sink1_data          : in  std_logic_vector(3 downto 0)  := (others => '0'); --          .data
		sink1_startofpacket : in  std_logic                     := '0';             --          .startofpacket
		sink1_endofpacket   : in  std_logic                     := '0';             --          .endofpacket
		sink2_ready         : out std_logic;                                        --     sink2.ready
		sink2_valid         : in  std_logic                     := '0';             --          .valid
		sink2_channel       : in  std_logic_vector(11 downto 0) := (others => '0'); --          .channel
		sink2_data          : in  std_logic_vector(3 downto 0)  := (others => '0'); --          .data
		sink2_startofpacket : in  std_logic                     := '0';             --          .startofpacket
		sink2_endofpacket   : in  std_logic                     := '0'              --          .endofpacket
	);
end entity qspi_inf_mux;

architecture rtl of qspi_inf_mux is
	component jtag_gen_flash_intel_generic_serial_flash_interface_top_0_qspi_inf_inst_qspi_inf_mux_qspi_inf_mux is
		port (
			clk                 : in  std_logic                     := 'X';             -- clk
			reset               : in  std_logic                     := 'X';             -- reset
			src_ready           : in  std_logic                     := 'X';             -- ready
			src_valid           : out std_logic;                                        -- valid
			src_data            : out std_logic_vector(3 downto 0);                     -- data
			src_channel         : out std_logic_vector(11 downto 0);                    -- channel
			src_startofpacket   : out std_logic;                                        -- startofpacket
			src_endofpacket     : out std_logic;                                        -- endofpacket
			sink0_ready         : out std_logic;                                        -- ready
			sink0_valid         : in  std_logic                     := 'X';             -- valid
			sink0_channel       : in  std_logic_vector(11 downto 0) := (others => 'X'); -- channel
			sink0_data          : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- data
			sink0_startofpacket : in  std_logic                     := 'X';             -- startofpacket
			sink0_endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			sink1_ready         : out std_logic;                                        -- ready
			sink1_valid         : in  std_logic                     := 'X';             -- valid
			sink1_channel       : in  std_logic_vector(11 downto 0) := (others => 'X'); -- channel
			sink1_data          : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- data
			sink1_startofpacket : in  std_logic                     := 'X';             -- startofpacket
			sink1_endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			sink2_ready         : out std_logic;                                        -- ready
			sink2_valid         : in  std_logic                     := 'X';             -- valid
			sink2_channel       : in  std_logic_vector(11 downto 0) := (others => 'X'); -- channel
			sink2_data          : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- data
			sink2_startofpacket : in  std_logic                     := 'X';             -- startofpacket
			sink2_endofpacket   : in  std_logic                     := 'X'              -- endofpacket
		);
	end component jtag_gen_flash_intel_generic_serial_flash_interface_top_0_qspi_inf_inst_qspi_inf_mux_qspi_inf_mux;

begin

	qspi_inf_mux : component jtag_gen_flash_intel_generic_serial_flash_interface_top_0_qspi_inf_inst_qspi_inf_mux_qspi_inf_mux
		port map (
			clk                 => clk,                 --       clk.clk
			reset               => reset,               -- clk_reset.reset
			src_ready           => src_ready,           --       src.ready
			src_valid           => src_valid,           --          .valid
			src_data            => src_data,            --          .data
			src_channel         => src_channel,         --          .channel
			src_startofpacket   => src_startofpacket,   --          .startofpacket
			src_endofpacket     => src_endofpacket,     --          .endofpacket
			sink0_ready         => sink0_ready,         --     sink0.ready
			sink0_valid         => sink0_valid,         --          .valid
			sink0_channel       => sink0_channel,       --          .channel
			sink0_data          => sink0_data,          --          .data
			sink0_startofpacket => sink0_startofpacket, --          .startofpacket
			sink0_endofpacket   => sink0_endofpacket,   --          .endofpacket
			sink1_ready         => sink1_ready,         --     sink1.ready
			sink1_valid         => sink1_valid,         --          .valid
			sink1_channel       => sink1_channel,       --          .channel
			sink1_data          => sink1_data,          --          .data
			sink1_startofpacket => sink1_startofpacket, --          .startofpacket
			sink1_endofpacket   => sink1_endofpacket,   --          .endofpacket
			sink2_ready         => sink2_ready,         --     sink2.ready
			sink2_valid         => sink2_valid,         --          .valid
			sink2_channel       => sink2_channel,       --          .channel
			sink2_data          => sink2_data,          --          .data
			sink2_startofpacket => sink2_startofpacket, --          .startofpacket
			sink2_endofpacket   => sink2_endofpacket    --          .endofpacket
		);

end architecture rtl; -- of qspi_inf_mux
