library verilog;
use verilog.vl_types.all;
entity tcore_rx_xgmii is
    generic(
        RX_DRAM_DEPTH   : integer := 3072;
        RX_DRAM_ADDR_WIDTH: integer := 12;
        MAX_RSVD_SIZE   : integer := 1154
    );
    port(
        clk156          : in     vl_logic;
        clk250          : in     vl_logic;
        \rst_\          : in     vl_logic;
        TCORE_MODE      : in     vl_logic;
        pkt_data        : out    vl_logic_vector(63 downto 0);
        pkt_start       : out    vl_logic;
        pkt_end         : out    vl_logic;
        pkt_we          : out    vl_logic;
        drx_pkt_data    : out    vl_logic_vector(63 downto 0);
        drx_pkt_start   : out    vl_logic;
        drx_pkt_end     : out    vl_logic;
        drx_pkt_we      : out    vl_logic;
        drx_pkt_beat_bcnt: out    vl_logic_vector(2 downto 0);
        drx_pkt_be      : out    vl_logic_vector(7 downto 0);
        drx_crc32       : out    vl_logic_vector(31 downto 0);
        drx_crc_vld     : out    vl_logic;
        drx_crc_err     : out    vl_logic;
        drx_crc_err_dly1: out    vl_logic;
        wen             : out    vl_logic;
        waddr           : out    vl_logic_vector;
        wptr            : out    vl_logic_vector;
        raddr_marker    : in     vl_logic_vector;
        wdata           : out    vl_logic_vector(63 downto 0);
        rx_pause        : out    vl_logic;
        rx_pvalue       : out    vl_logic_vector(15 downto 0);
        rx_pack         : in     vl_logic;
        pause_en        : in     vl_logic;
        bcast_en        : in     vl_logic;
        pmode           : in     vl_logic;
        daddr0          : in     vl_logic_vector(47 downto 0);
        rsize           : in     vl_logic_vector(11 downto 0);
        rxd             : in     vl_logic_vector(63 downto 0);
        rxc             : in     vl_logic_vector(7 downto 0);
        br_sof4         : in     vl_logic;
        rxp             : in     vl_logic_vector(7 downto 0);
        fmac_ctrl1_dly  : in     vl_logic_vector(31 downto 0);
        fmac_rxd_en     : in     vl_logic;
        FMAC_DCNT_OVERRUN: out    vl_logic_vector(31 downto 0);
        FMAC_DCNT_LINK_ERR: out    vl_logic_vector(31 downto 0);
        FMAC_PKT_CNT_OVERSIZE: out    vl_logic_vector(31 downto 0);
        FIFO_OV_IPEND   : out    vl_logic;
        clr_pkt_cnt_oversize: in     vl_logic;
        add_lo_bcast    : out    vl_logic;
        add_lo_mcast    : out    vl_logic;
        clr_carry_cast  : out    vl_logic;
        add_hi_cast     : out    vl_logic;
        vlan_ip         : out    vl_logic;
        normal_ip       : out    vl_logic;
        non_ip          : out    vl_logic;
        pkt_reject      : out    vl_logic;
        pkt_jumbo_flag  : out    vl_logic;
        pkt_ipver       : out    vl_logic_vector(3 downto 0);
        wr_nbyte        : out    vl_logic;
        nbytes_out      : out    vl_logic_vector(15 downto 0);
        rxfifo_full     : in     vl_logic;
        chk_crc         : out    vl_logic_vector(31 downto 0);
        crc32_ok        : out    vl_logic;
        fmac_rx_clr_en  : in     vl_logic
    );
end tcore_rx_xgmii;
