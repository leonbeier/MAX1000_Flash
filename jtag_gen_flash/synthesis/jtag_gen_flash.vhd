-- jtag_gen_flash.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity jtag_gen_flash is
	port (
		clk_clk        : in    std_logic                    := '0';             --       clk.clk
		qspi_pins_dclk : out   std_logic;                                       -- qspi_pins.dclk
		qspi_pins_ncs  : out   std_logic;                                       --          .ncs
		qspi_pins_data : inout std_logic_vector(3 downto 0) := (others => '0'); --          .data
		reset_reset_n  : in    std_logic                    := '0'              --     reset.reset_n
	);
end entity jtag_gen_flash;

architecture rtl of jtag_gen_flash is
	component jtag_gen_flash_intel_generic_serial_flash_interface_top_0 is
		generic (
			DEVICE_FAMILY : string  := "";
			CHIP_SELS     : integer := 1
		);
		port (
			avl_csr_address       : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- address
			avl_csr_read          : in    std_logic                     := 'X';             -- read
			avl_csr_readdata      : out   std_logic_vector(31 downto 0);                    -- readdata
			avl_csr_write         : in    std_logic                     := 'X';             -- write
			avl_csr_writedata     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avl_csr_waitrequest   : out   std_logic;                                        -- waitrequest
			avl_csr_readdatavalid : out   std_logic;                                        -- readdatavalid
			avl_mem_write         : in    std_logic                     := 'X';             -- write
			avl_mem_burstcount    : in    std_logic_vector(6 downto 0)  := (others => 'X'); -- burstcount
			avl_mem_waitrequest   : out   std_logic;                                        -- waitrequest
			avl_mem_read          : in    std_logic                     := 'X';             -- read
			avl_mem_address       : in    std_logic_vector(20 downto 0) := (others => 'X'); -- address
			avl_mem_writedata     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avl_mem_readdata      : out   std_logic_vector(31 downto 0);                    -- readdata
			avl_mem_readdatavalid : out   std_logic;                                        -- readdatavalid
			avl_mem_byteenable    : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			clk_clk               : in    std_logic                     := 'X';             -- clk
			reset_reset           : in    std_logic                     := 'X';             -- reset
			qspi_pins_dclk        : out   std_logic;                                        -- dclk
			qspi_pins_ncs         : out   std_logic;                                        -- ncs
			qspi_pins_data        : inout std_logic_vector(3 downto 0)  := (others => 'X')  -- data
		);
	end component jtag_gen_flash_intel_generic_serial_flash_interface_top_0;

	component jtag_gen_flash_master_0 is
		generic (
			USE_PLI     : integer := 0;
			PLI_PORT    : integer := 50000;
			FIFO_DEPTHS : integer := 2
		);
		port (
			clk_clk              : in  std_logic                     := 'X';             -- clk
			clk_reset_reset      : in  std_logic                     := 'X';             -- reset
			master_address       : out std_logic_vector(31 downto 0);                    -- address
			master_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			master_read          : out std_logic;                                        -- read
			master_write         : out std_logic;                                        -- write
			master_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			master_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			master_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			master_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			master_reset_reset   : out std_logic                                         -- reset
		);
	end component jtag_gen_flash_master_0;

	component jtag_gen_flash_mm_interconnect_0 is
		port (
			clk_0_clk_clk                                                    : in  std_logic                     := 'X';             -- clk
			master_0_clk_reset_reset_bridge_in_reset_reset                   : in  std_logic                     := 'X';             -- reset
			master_0_master_translator_reset_reset_bridge_in_reset_reset     : in  std_logic                     := 'X';             -- reset
			master_0_master_address                                          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- address
			master_0_master_waitrequest                                      : out std_logic;                                        -- waitrequest
			master_0_master_byteenable                                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			master_0_master_read                                             : in  std_logic                     := 'X';             -- read
			master_0_master_readdata                                         : out std_logic_vector(31 downto 0);                    -- readdata
			master_0_master_readdatavalid                                    : out std_logic;                                        -- readdatavalid
			master_0_master_write                                            : in  std_logic                     := 'X';             -- write
			master_0_master_writedata                                        : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			intel_generic_serial_flash_interface_top_0_avl_csr_address       : out std_logic_vector(5 downto 0);                     -- address
			intel_generic_serial_flash_interface_top_0_avl_csr_write         : out std_logic;                                        -- write
			intel_generic_serial_flash_interface_top_0_avl_csr_read          : out std_logic;                                        -- read
			intel_generic_serial_flash_interface_top_0_avl_csr_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			intel_generic_serial_flash_interface_top_0_avl_csr_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest   : in  std_logic                     := 'X';             -- waitrequest
			intel_generic_serial_flash_interface_top_0_avl_mem_address       : out std_logic_vector(20 downto 0);                    -- address
			intel_generic_serial_flash_interface_top_0_avl_mem_write         : out std_logic;                                        -- write
			intel_generic_serial_flash_interface_top_0_avl_mem_read          : out std_logic;                                        -- read
			intel_generic_serial_flash_interface_top_0_avl_mem_readdata      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			intel_generic_serial_flash_interface_top_0_avl_mem_writedata     : out std_logic_vector(31 downto 0);                    -- writedata
			intel_generic_serial_flash_interface_top_0_avl_mem_burstcount    : out std_logic_vector(6 downto 0);                     -- burstcount
			intel_generic_serial_flash_interface_top_0_avl_mem_byteenable    : out std_logic_vector(3 downto 0);                     -- byteenable
			intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid : in  std_logic                     := 'X';             -- readdatavalid
			intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest   : in  std_logic                     := 'X'              -- waitrequest
		);
	end component jtag_gen_flash_mm_interconnect_0;

	component altera_reset_controller is
		generic (
			NUM_RESET_INPUTS          : integer := 6;
			OUTPUT_RESET_SYNC_EDGES   : string  := "deassert";
			SYNC_DEPTH                : integer := 2;
			RESET_REQUEST_PRESENT     : integer := 0;
			RESET_REQ_WAIT_TIME       : integer := 1;
			MIN_RST_ASSERTION_TIME    : integer := 3;
			RESET_REQ_EARLY_DSRT_TIME : integer := 1;
			USE_RESET_REQUEST_IN0     : integer := 0;
			USE_RESET_REQUEST_IN1     : integer := 0;
			USE_RESET_REQUEST_IN2     : integer := 0;
			USE_RESET_REQUEST_IN3     : integer := 0;
			USE_RESET_REQUEST_IN4     : integer := 0;
			USE_RESET_REQUEST_IN5     : integer := 0;
			USE_RESET_REQUEST_IN6     : integer := 0;
			USE_RESET_REQUEST_IN7     : integer := 0;
			USE_RESET_REQUEST_IN8     : integer := 0;
			USE_RESET_REQUEST_IN9     : integer := 0;
			USE_RESET_REQUEST_IN10    : integer := 0;
			USE_RESET_REQUEST_IN11    : integer := 0;
			USE_RESET_REQUEST_IN12    : integer := 0;
			USE_RESET_REQUEST_IN13    : integer := 0;
			USE_RESET_REQUEST_IN14    : integer := 0;
			USE_RESET_REQUEST_IN15    : integer := 0;
			ADAPT_RESET_REQUEST       : integer := 0
		);
		port (
			reset_in0      : in  std_logic := 'X'; -- reset
			clk            : in  std_logic := 'X'; -- clk
			reset_out      : out std_logic;        -- reset
			reset_req      : out std_logic;        -- reset_req
			reset_req_in0  : in  std_logic := 'X'; -- reset_req
			reset_in1      : in  std_logic := 'X'; -- reset
			reset_req_in1  : in  std_logic := 'X'; -- reset_req
			reset_in2      : in  std_logic := 'X'; -- reset
			reset_req_in2  : in  std_logic := 'X'; -- reset_req
			reset_in3      : in  std_logic := 'X'; -- reset
			reset_req_in3  : in  std_logic := 'X'; -- reset_req
			reset_in4      : in  std_logic := 'X'; -- reset
			reset_req_in4  : in  std_logic := 'X'; -- reset_req
			reset_in5      : in  std_logic := 'X'; -- reset
			reset_req_in5  : in  std_logic := 'X'; -- reset_req
			reset_in6      : in  std_logic := 'X'; -- reset
			reset_req_in6  : in  std_logic := 'X'; -- reset_req
			reset_in7      : in  std_logic := 'X'; -- reset
			reset_req_in7  : in  std_logic := 'X'; -- reset_req
			reset_in8      : in  std_logic := 'X'; -- reset
			reset_req_in8  : in  std_logic := 'X'; -- reset_req
			reset_in9      : in  std_logic := 'X'; -- reset
			reset_req_in9  : in  std_logic := 'X'; -- reset_req
			reset_in10     : in  std_logic := 'X'; -- reset
			reset_req_in10 : in  std_logic := 'X'; -- reset_req
			reset_in11     : in  std_logic := 'X'; -- reset
			reset_req_in11 : in  std_logic := 'X'; -- reset_req
			reset_in12     : in  std_logic := 'X'; -- reset
			reset_req_in12 : in  std_logic := 'X'; -- reset_req
			reset_in13     : in  std_logic := 'X'; -- reset
			reset_req_in13 : in  std_logic := 'X'; -- reset_req
			reset_in14     : in  std_logic := 'X'; -- reset
			reset_req_in14 : in  std_logic := 'X'; -- reset_req
			reset_in15     : in  std_logic := 'X'; -- reset
			reset_req_in15 : in  std_logic := 'X'  -- reset_req
		);
	end component altera_reset_controller;

	signal master_0_master_readdata                                                           : std_logic_vector(31 downto 0); -- mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	signal master_0_master_waitrequest                                                        : std_logic;                     -- mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	signal master_0_master_address                                                            : std_logic_vector(31 downto 0); -- master_0:master_address -> mm_interconnect_0:master_0_master_address
	signal master_0_master_read                                                               : std_logic;                     -- master_0:master_read -> mm_interconnect_0:master_0_master_read
	signal master_0_master_byteenable                                                         : std_logic_vector(3 downto 0);  -- master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	signal master_0_master_readdatavalid                                                      : std_logic;                     -- mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	signal master_0_master_write                                                              : std_logic;                     -- master_0:master_write -> mm_interconnect_0:master_0_master_write
	signal master_0_master_writedata                                                          : std_logic_vector(31 downto 0); -- master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdata      : std_logic_vector(31 downto 0); -- intel_generic_serial_flash_interface_top_0:avl_csr_readdata -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_readdata
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest   : std_logic;                     -- intel_generic_serial_flash_interface_top_0:avl_csr_waitrequest -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_address       : std_logic_vector(5 downto 0);  -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_address -> intel_generic_serial_flash_interface_top_0:avl_csr_address
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_read          : std_logic;                     -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_read -> intel_generic_serial_flash_interface_top_0:avl_csr_read
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid : std_logic;                     -- intel_generic_serial_flash_interface_top_0:avl_csr_readdatavalid -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_write         : std_logic;                     -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_write -> intel_generic_serial_flash_interface_top_0:avl_csr_write
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_writedata     : std_logic_vector(31 downto 0); -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_csr_writedata -> intel_generic_serial_flash_interface_top_0:avl_csr_writedata
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdata      : std_logic_vector(31 downto 0); -- intel_generic_serial_flash_interface_top_0:avl_mem_readdata -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_readdata
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest   : std_logic;                     -- intel_generic_serial_flash_interface_top_0:avl_mem_waitrequest -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_address       : std_logic_vector(20 downto 0); -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_address -> intel_generic_serial_flash_interface_top_0:avl_mem_address
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_read          : std_logic;                     -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_read -> intel_generic_serial_flash_interface_top_0:avl_mem_read
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_byteenable    : std_logic_vector(3 downto 0);  -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_byteenable -> intel_generic_serial_flash_interface_top_0:avl_mem_byteenable
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid : std_logic;                     -- intel_generic_serial_flash_interface_top_0:avl_mem_readdatavalid -> mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_write         : std_logic;                     -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_write -> intel_generic_serial_flash_interface_top_0:avl_mem_write
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_writedata     : std_logic_vector(31 downto 0); -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_writedata -> intel_generic_serial_flash_interface_top_0:avl_mem_writedata
	signal mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_burstcount    : std_logic_vector(6 downto 0);  -- mm_interconnect_0:intel_generic_serial_flash_interface_top_0_avl_mem_burstcount -> intel_generic_serial_flash_interface_top_0:avl_mem_burstcount
	signal rst_controller_reset_out_reset                                                     : std_logic;                     -- rst_controller:reset_out -> [mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:master_0_master_translator_reset_reset_bridge_in_reset_reset]
	signal reset_reset_n_ports_inv                                                            : std_logic;                     -- reset_reset_n:inv -> [intel_generic_serial_flash_interface_top_0:reset_reset, master_0:clk_reset_reset, rst_controller:reset_in0]

begin

	intel_generic_serial_flash_interface_top_0 : component jtag_gen_flash_intel_generic_serial_flash_interface_top_0
		generic map (
			DEVICE_FAMILY => "MAX 10",
			CHIP_SELS     => 1
		)
		port map (
			avl_csr_address       => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_address,       --   avl_csr.address
			avl_csr_read          => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_read,          --          .read
			avl_csr_readdata      => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdata,      --          .readdata
			avl_csr_write         => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_write,         --          .write
			avl_csr_writedata     => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_writedata,     --          .writedata
			avl_csr_waitrequest   => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest,   --          .waitrequest
			avl_csr_readdatavalid => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid, --          .readdatavalid
			avl_mem_write         => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_write,         --   avl_mem.write
			avl_mem_burstcount    => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_burstcount,    --          .burstcount
			avl_mem_waitrequest   => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest,   --          .waitrequest
			avl_mem_read          => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_read,          --          .read
			avl_mem_address       => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_address,       --          .address
			avl_mem_writedata     => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_writedata,     --          .writedata
			avl_mem_readdata      => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdata,      --          .readdata
			avl_mem_readdatavalid => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid, --          .readdatavalid
			avl_mem_byteenable    => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_byteenable,    --          .byteenable
			clk_clk               => clk_clk,                                                                            --       clk.clk
			reset_reset           => reset_reset_n_ports_inv,                                                            --     reset.reset
			qspi_pins_dclk        => qspi_pins_dclk,                                                                     -- qspi_pins.dclk
			qspi_pins_ncs         => qspi_pins_ncs,                                                                      --          .ncs
			qspi_pins_data        => qspi_pins_data                                                                      --          .data
		);

	master_0 : component jtag_gen_flash_master_0
		generic map (
			USE_PLI     => 0,
			PLI_PORT    => 50000,
			FIFO_DEPTHS => 2
		)
		port map (
			clk_clk              => clk_clk,                       --          clk.clk
			clk_reset_reset      => reset_reset_n_ports_inv,       --    clk_reset.reset
			master_address       => master_0_master_address,       --       master.address
			master_readdata      => master_0_master_readdata,      --             .readdata
			master_read          => master_0_master_read,          --             .read
			master_write         => master_0_master_write,         --             .write
			master_writedata     => master_0_master_writedata,     --             .writedata
			master_waitrequest   => master_0_master_waitrequest,   --             .waitrequest
			master_readdatavalid => master_0_master_readdatavalid, --             .readdatavalid
			master_byteenable    => master_0_master_byteenable,    --             .byteenable
			master_reset_reset   => open                           -- master_reset.reset
		);

	mm_interconnect_0 : component jtag_gen_flash_mm_interconnect_0
		port map (
			clk_0_clk_clk                                                    => clk_clk,                                                                            --                                              clk_0_clk.clk
			master_0_clk_reset_reset_bridge_in_reset_reset                   => rst_controller_reset_out_reset,                                                     --               master_0_clk_reset_reset_bridge_in_reset.reset
			master_0_master_translator_reset_reset_bridge_in_reset_reset     => rst_controller_reset_out_reset,                                                     -- master_0_master_translator_reset_reset_bridge_in_reset.reset
			master_0_master_address                                          => master_0_master_address,                                                            --                                        master_0_master.address
			master_0_master_waitrequest                                      => master_0_master_waitrequest,                                                        --                                                       .waitrequest
			master_0_master_byteenable                                       => master_0_master_byteenable,                                                         --                                                       .byteenable
			master_0_master_read                                             => master_0_master_read,                                                               --                                                       .read
			master_0_master_readdata                                         => master_0_master_readdata,                                                           --                                                       .readdata
			master_0_master_readdatavalid                                    => master_0_master_readdatavalid,                                                      --                                                       .readdatavalid
			master_0_master_write                                            => master_0_master_write,                                                              --                                                       .write
			master_0_master_writedata                                        => master_0_master_writedata,                                                          --                                                       .writedata
			intel_generic_serial_flash_interface_top_0_avl_csr_address       => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_address,       --     intel_generic_serial_flash_interface_top_0_avl_csr.address
			intel_generic_serial_flash_interface_top_0_avl_csr_write         => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_write,         --                                                       .write
			intel_generic_serial_flash_interface_top_0_avl_csr_read          => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_read,          --                                                       .read
			intel_generic_serial_flash_interface_top_0_avl_csr_readdata      => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdata,      --                                                       .readdata
			intel_generic_serial_flash_interface_top_0_avl_csr_writedata     => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_writedata,     --                                                       .writedata
			intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_readdatavalid, --                                                       .readdatavalid
			intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest   => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_csr_waitrequest,   --                                                       .waitrequest
			intel_generic_serial_flash_interface_top_0_avl_mem_address       => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_address,       --     intel_generic_serial_flash_interface_top_0_avl_mem.address
			intel_generic_serial_flash_interface_top_0_avl_mem_write         => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_write,         --                                                       .write
			intel_generic_serial_flash_interface_top_0_avl_mem_read          => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_read,          --                                                       .read
			intel_generic_serial_flash_interface_top_0_avl_mem_readdata      => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdata,      --                                                       .readdata
			intel_generic_serial_flash_interface_top_0_avl_mem_writedata     => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_writedata,     --                                                       .writedata
			intel_generic_serial_flash_interface_top_0_avl_mem_burstcount    => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_burstcount,    --                                                       .burstcount
			intel_generic_serial_flash_interface_top_0_avl_mem_byteenable    => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_byteenable,    --                                                       .byteenable
			intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_readdatavalid, --                                                       .readdatavalid
			intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest   => mm_interconnect_0_intel_generic_serial_flash_interface_top_0_avl_mem_waitrequest    --                                                       .waitrequest
		);

	rst_controller : component altera_reset_controller
		generic map (
			NUM_RESET_INPUTS          => 1,
			OUTPUT_RESET_SYNC_EDGES   => "deassert",
			SYNC_DEPTH                => 2,
			RESET_REQUEST_PRESENT     => 0,
			RESET_REQ_WAIT_TIME       => 1,
			MIN_RST_ASSERTION_TIME    => 3,
			RESET_REQ_EARLY_DSRT_TIME => 1,
			USE_RESET_REQUEST_IN0     => 0,
			USE_RESET_REQUEST_IN1     => 0,
			USE_RESET_REQUEST_IN2     => 0,
			USE_RESET_REQUEST_IN3     => 0,
			USE_RESET_REQUEST_IN4     => 0,
			USE_RESET_REQUEST_IN5     => 0,
			USE_RESET_REQUEST_IN6     => 0,
			USE_RESET_REQUEST_IN7     => 0,
			USE_RESET_REQUEST_IN8     => 0,
			USE_RESET_REQUEST_IN9     => 0,
			USE_RESET_REQUEST_IN10    => 0,
			USE_RESET_REQUEST_IN11    => 0,
			USE_RESET_REQUEST_IN12    => 0,
			USE_RESET_REQUEST_IN13    => 0,
			USE_RESET_REQUEST_IN14    => 0,
			USE_RESET_REQUEST_IN15    => 0,
			ADAPT_RESET_REQUEST       => 0
		)
		port map (
			reset_in0      => reset_reset_n_ports_inv,        -- reset_in0.reset
			clk            => clk_clk,                        --       clk.clk
			reset_out      => rst_controller_reset_out_reset, -- reset_out.reset
			reset_req      => open,                           -- (terminated)
			reset_req_in0  => '0',                            -- (terminated)
			reset_in1      => '0',                            -- (terminated)
			reset_req_in1  => '0',                            -- (terminated)
			reset_in2      => '0',                            -- (terminated)
			reset_req_in2  => '0',                            -- (terminated)
			reset_in3      => '0',                            -- (terminated)
			reset_req_in3  => '0',                            -- (terminated)
			reset_in4      => '0',                            -- (terminated)
			reset_req_in4  => '0',                            -- (terminated)
			reset_in5      => '0',                            -- (terminated)
			reset_req_in5  => '0',                            -- (terminated)
			reset_in6      => '0',                            -- (terminated)
			reset_req_in6  => '0',                            -- (terminated)
			reset_in7      => '0',                            -- (terminated)
			reset_req_in7  => '0',                            -- (terminated)
			reset_in8      => '0',                            -- (terminated)
			reset_req_in8  => '0',                            -- (terminated)
			reset_in9      => '0',                            -- (terminated)
			reset_req_in9  => '0',                            -- (terminated)
			reset_in10     => '0',                            -- (terminated)
			reset_req_in10 => '0',                            -- (terminated)
			reset_in11     => '0',                            -- (terminated)
			reset_req_in11 => '0',                            -- (terminated)
			reset_in12     => '0',                            -- (terminated)
			reset_req_in12 => '0',                            -- (terminated)
			reset_in13     => '0',                            -- (terminated)
			reset_req_in13 => '0',                            -- (terminated)
			reset_in14     => '0',                            -- (terminated)
			reset_req_in14 => '0',                            -- (terminated)
			reset_in15     => '0',                            -- (terminated)
			reset_req_in15 => '0'                             -- (terminated)
		);

	reset_reset_n_ports_inv <= not reset_reset_n;

end architecture rtl; -- of jtag_gen_flash
