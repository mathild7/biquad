-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity biquad is
generic (
    C_S_AXI_CTRL_BUS_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_CTRL_BUS_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    in_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    in_V_TVALID : IN STD_LOGIC;
    in_V_TREADY : OUT STD_LOGIC;
    out_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_V_TVALID : OUT STD_LOGIC;
    out_V_TREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_BUS_DATA_WIDTH/8-1 downto 0);
    s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CTRL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of biquad is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "biquad,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z100ffg900-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.256000,HLS_SYN_LAT=13,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=11,HLS_SYN_FF=1440,HLS_SYN_LUT=2029}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (25 downto 0) := "00000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (25 downto 0) := "00000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (25 downto 0) := "00000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (25 downto 0) := "00000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (25 downto 0) := "00000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (25 downto 0) := "00000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (25 downto 0) := "00001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (25 downto 0) := "00010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (25 downto 0) := "00100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (25 downto 0) := "01000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (25 downto 0) := "10000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_rst_n_inv : STD_LOGIC;
    signal in_V_0_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal in_V_0_vld_in : STD_LOGIC;
    signal in_V_0_vld_out : STD_LOGIC;
    signal in_V_0_ack_in : STD_LOGIC;
    signal in_V_0_ack_out : STD_LOGIC;
    signal in_V_0_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal in_V_0_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal in_V_0_sel_rd : STD_LOGIC := '0';
    signal in_V_0_sel_wr : STD_LOGIC := '0';
    signal in_V_0_sel : STD_LOGIC;
    signal in_V_0_load_A : STD_LOGIC;
    signal in_V_0_load_B : STD_LOGIC;
    signal in_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal in_V_0_state_cmp_full : STD_LOGIC;
    signal out_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_vld_in : STD_LOGIC;
    signal out_V_1_vld_out : STD_LOGIC;
    signal out_V_1_ack_in : STD_LOGIC;
    signal out_V_1_ack_out : STD_LOGIC;
    signal out_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal out_V_1_sel_rd : STD_LOGIC := '0';
    signal out_V_1_sel_wr : STD_LOGIC := '0';
    signal out_V_1_sel : STD_LOGIC;
    signal out_V_1_load_A : STD_LOGIC;
    signal out_V_1_load_B : STD_LOGIC;
    signal out_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal out_V_1_state_cmp_full : STD_LOGIC;
    signal a1 : STD_LOGIC_VECTOR (31 downto 0);
    signal a2 : STD_LOGIC_VECTOR (31 downto 0);
    signal b0 : STD_LOGIC_VECTOR (31 downto 0);
    signal b1 : STD_LOGIC_VECTOR (31 downto 0);
    signal b2 : STD_LOGIC_VECTOR (31 downto 0);
    signal user_writing_V : STD_LOGIC_VECTOR (0 downto 0);
    signal x1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal x2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal y1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal y2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal in_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal out_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state25 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state25 : signal is "none";
    signal ap_CS_fsm_state26 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state26 : signal is "none";
    signal user_writing_V_read_reg_184 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_110_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_123 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal grp_fu_115_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_129 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_105_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_134 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal user_writing_V_read_read_fu_56_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal b2_read_reg_188 : STD_LOGIC_VECTOR (31 downto 0);
    signal b1_read_reg_193 : STD_LOGIC_VECTOR (31 downto 0);
    signal b0_read_reg_198 : STD_LOGIC_VECTOR (31 downto 0);
    signal a2_read_reg_203 : STD_LOGIC_VECTOR (31 downto 0);
    signal a1_read_reg_208 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_119_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_reg_228 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_block_state26_io : BOOLEAN;
    signal grp_fu_105_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_105_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal grp_fu_110_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_110_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_115_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_115_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_105_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_105_ce : STD_LOGIC;
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_fu_110_ce : STD_LOGIC;
    signal grp_fu_115_ce : STD_LOGIC;
    signal grp_fu_119_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (25 downto 0);

    component biquad_faddfsub_3bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component biquad_fmul_32ns_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component biquad_CTRL_BUS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        a1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        a2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        b0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        b1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        b2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        user_writing_V : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    biquad_CTRL_BUS_s_axi_U : component biquad_CTRL_BUS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CTRL_BUS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CTRL_BUS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_CTRL_BUS_AWVALID,
        AWREADY => s_axi_CTRL_BUS_AWREADY,
        AWADDR => s_axi_CTRL_BUS_AWADDR,
        WVALID => s_axi_CTRL_BUS_WVALID,
        WREADY => s_axi_CTRL_BUS_WREADY,
        WDATA => s_axi_CTRL_BUS_WDATA,
        WSTRB => s_axi_CTRL_BUS_WSTRB,
        ARVALID => s_axi_CTRL_BUS_ARVALID,
        ARREADY => s_axi_CTRL_BUS_ARREADY,
        ARADDR => s_axi_CTRL_BUS_ARADDR,
        RVALID => s_axi_CTRL_BUS_RVALID,
        RREADY => s_axi_CTRL_BUS_RREADY,
        RDATA => s_axi_CTRL_BUS_RDATA,
        RRESP => s_axi_CTRL_BUS_RRESP,
        BVALID => s_axi_CTRL_BUS_BVALID,
        BREADY => s_axi_CTRL_BUS_BREADY,
        BRESP => s_axi_CTRL_BUS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        a1 => a1,
        a2 => a2,
        b0 => b0,
        b1 => b1,
        b2 => b2,
        user_writing_V => user_writing_V);

    biquad_faddfsub_3bkb_U1 : component biquad_faddfsub_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => grp_fu_105_p0,
        din1 => grp_fu_105_p1,
        opcode => grp_fu_105_opcode,
        ce => grp_fu_105_ce,
        dout => grp_fu_105_p2);

    biquad_fmul_32ns_cud_U2 : component biquad_fmul_32ns_cud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => grp_fu_110_p0,
        din1 => grp_fu_110_p1,
        ce => grp_fu_110_ce,
        dout => grp_fu_110_p2);

    biquad_fmul_32ns_cud_U3 : component biquad_fmul_32ns_cud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => grp_fu_115_p0,
        din1 => grp_fu_115_p1,
        ce => grp_fu_115_ce,
        dout => grp_fu_115_p2);

    biquad_fmul_32ns_cud_U4 : component biquad_fmul_32ns_cud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => x2,
        din1 => b2_read_reg_188,
        ce => grp_fu_119_ce,
        dout => grp_fu_119_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    in_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                in_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = in_V_0_ack_out) and (ap_const_logic_1 = in_V_0_vld_out))) then 
                                        in_V_0_sel_rd <= not(in_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    in_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                in_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = in_V_0_vld_in) and (ap_const_logic_1 = in_V_0_ack_in))) then 
                                        in_V_0_sel_wr <= not(in_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    in_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                in_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = in_V_0_vld_in) and (ap_const_logic_1 = in_V_0_ack_out) and (in_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = in_V_0_vld_in) and (in_V_0_state = ap_const_lv2_2)))) then 
                    in_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = in_V_0_vld_in) and (ap_const_logic_0 = in_V_0_ack_out) and (in_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = in_V_0_ack_out) and (in_V_0_state = ap_const_lv2_1)))) then 
                    in_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = in_V_0_vld_in) and (in_V_0_state = ap_const_lv2_2)) or ((ap_const_logic_1 = in_V_0_ack_out) and (in_V_0_state = ap_const_lv2_1)) or ((in_V_0_state = ap_const_lv2_3) and not(((ap_const_logic_1 = in_V_0_vld_in) and (ap_const_logic_0 = in_V_0_ack_out))) and not(((ap_const_logic_0 = in_V_0_vld_in) and (ap_const_logic_1 = in_V_0_ack_out)))))) then 
                    in_V_0_state <= ap_const_lv2_3;
                else 
                    in_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    out_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                out_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = out_V_1_ack_out) and (ap_const_logic_1 = out_V_1_vld_out))) then 
                                        out_V_1_sel_rd <= not(out_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    out_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                out_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_in))) then 
                                        out_V_1_sel_wr <= not(out_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    out_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                out_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_out) and (ap_const_lv2_3 = out_V_1_state)) or ((ap_const_logic_0 = out_V_1_vld_in) and (ap_const_lv2_2 = out_V_1_state)))) then 
                    out_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_0 = out_V_1_ack_out) and (ap_const_lv2_3 = out_V_1_state)) or ((ap_const_logic_0 = out_V_1_ack_out) and (ap_const_lv2_1 = out_V_1_state)))) then 
                    out_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_lv2_2 = out_V_1_state)) or ((ap_const_logic_1 = out_V_1_ack_out) and (ap_const_lv2_1 = out_V_1_state)) or ((ap_const_lv2_3 = out_V_1_state) and not(((ap_const_logic_1 = out_V_1_vld_in) and (ap_const_logic_0 = out_V_1_ack_out))) and not(((ap_const_logic_0 = out_V_1_vld_in) and (ap_const_logic_1 = out_V_1_ack_out)))))) then 
                    out_V_1_state <= ap_const_lv2_3;
                else 
                    out_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                a1_read_reg_208 <= a1;
                a2_read_reg_203 <= a2;
                b0_read_reg_198 <= b0;
                b1_read_reg_193 <= b1;
                b2_read_reg_188 <= b2;
                user_writing_V_read_reg_184 <= user_writing_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = in_V_0_load_A)) then
                in_V_0_payload_A <= in_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = in_V_0_load_B)) then
                in_V_0_payload_B <= in_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = out_V_1_load_A)) then
                out_V_1_payload_A <= grp_fu_105_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = out_V_1_load_B)) then
                out_V_1_payload_B <= grp_fu_105_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state15))) then
                reg_123 <= grp_fu_110_p2;
                reg_129 <= grp_fu_115_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state15) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state20) or ((ap_const_logic_1 = ap_CS_fsm_state25) and (out_V_1_ack_in = ap_const_logic_1)))) then
                reg_134 <= grp_fu_105_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_9_reg_228 <= grp_fu_119_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1))) then
                x1 <= in_V_0_data_out;
                x2 <= x1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state25) and (out_V_1_ack_in = ap_const_logic_1))) then
                y1 <= grp_fu_105_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                y2 <= y1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (in_V_0_vld_out, out_V_1_ack_in, ap_CS_fsm, ap_CS_fsm_state2, ap_CS_fsm_state25, ap_CS_fsm_state26, user_writing_V_read_read_fu_56_p2, ap_CS_fsm_state1, ap_block_state26_io)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_const_lv1_1 = user_writing_V_read_read_fu_56_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state26;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state25) and (out_V_1_ack_in = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state26;
                else
                    ap_NS_fsm <= ap_ST_fsm_state25;
                end if;
            when ap_ST_fsm_state26 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state26) and not(((ap_const_logic_0 = out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state26_io))))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state26;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state20 <= ap_CS_fsm(19);
    ap_CS_fsm_state21 <= ap_CS_fsm(20);
    ap_CS_fsm_state25 <= ap_CS_fsm(24);
    ap_CS_fsm_state26 <= ap_CS_fsm(25);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state26_io_assign_proc : process(out_V_1_ack_in, user_writing_V_read_reg_184)
    begin
                ap_block_state26_io <= ((ap_const_lv1_0 = user_writing_V_read_reg_184) and (ap_const_logic_0 = out_V_1_ack_in));
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    grp_fu_105_ce_assign_proc : process(out_V_1_ack_in, ap_CS_fsm_state2, ap_CS_fsm_state25, ap_CS_fsm_state26, ap_CS_fsm_state5, ap_CS_fsm_state1, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state26) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state1) or ((ap_const_logic_1 = ap_CS_fsm_state25) and (ap_const_logic_0 = out_V_1_ack_in)) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_fu_105_ce <= ap_const_logic_0;
        else 
            grp_fu_105_ce <= ap_const_logic_1;
        end if; 
    end process;


    grp_fu_105_opcode_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state11, ap_CS_fsm_state16, ap_CS_fsm_state21)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state21))) then 
            grp_fu_105_opcode <= ap_const_lv2_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            grp_fu_105_opcode <= ap_const_lv2_0;
        else 
            grp_fu_105_opcode <= "XX";
        end if; 
    end process;


    grp_fu_105_p0_assign_proc : process(reg_123, reg_134, ap_CS_fsm_state6, ap_CS_fsm_state11, ap_CS_fsm_state16, ap_CS_fsm_state21)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state21))) then 
            grp_fu_105_p0 <= reg_134;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_fu_105_p0 <= reg_123;
        else 
            grp_fu_105_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_105_p1_assign_proc : process(reg_123, reg_129, tmp_9_reg_228, ap_CS_fsm_state6, ap_CS_fsm_state11, ap_CS_fsm_state16, ap_CS_fsm_state21)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            grp_fu_105_p1 <= reg_123;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            grp_fu_105_p1 <= tmp_9_reg_228;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state21))) then 
            grp_fu_105_p1 <= reg_129;
        else 
            grp_fu_105_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_110_ce_assign_proc : process(in_V_0_vld_out, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state15, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state15) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_fu_110_ce <= ap_const_logic_1;
        else 
            grp_fu_110_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_110_p0_assign_proc : process(in_V_0_data_out, y1, ap_CS_fsm_state2, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_110_p0 <= y1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_110_p0 <= in_V_0_data_out;
        else 
            grp_fu_110_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_110_p1_assign_proc : process(ap_CS_fsm_state2, b0_read_reg_198, a1_read_reg_208, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_110_p1 <= a1_read_reg_208;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_110_p1 <= b0_read_reg_198;
        else 
            grp_fu_110_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_115_ce_assign_proc : process(in_V_0_vld_out, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state15, ap_CS_fsm_state12, ap_CS_fsm_state13, ap_CS_fsm_state14, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state15) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_fu_115_ce <= ap_const_logic_1;
        else 
            grp_fu_115_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_115_p0_assign_proc : process(x1, y2, ap_CS_fsm_state2, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_115_p0 <= y2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_115_p0 <= x1;
        else 
            grp_fu_115_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_115_p1_assign_proc : process(ap_CS_fsm_state2, b1_read_reg_193, a2_read_reg_203, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_115_p1 <= a2_read_reg_203;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_115_p1 <= b1_read_reg_193;
        else 
            grp_fu_115_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_119_ce_assign_proc : process(in_V_0_vld_out, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_fu_119_ce <= ap_const_logic_1;
        else 
            grp_fu_119_ce <= ap_const_logic_0;
        end if; 
    end process;

    in_V_0_ack_in <= in_V_0_state(1);

    in_V_0_ack_out_assign_proc : process(in_V_0_vld_out, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (in_V_0_vld_out = ap_const_logic_1))) then 
            in_V_0_ack_out <= ap_const_logic_1;
        else 
            in_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    in_V_0_data_out_assign_proc : process(in_V_0_payload_A, in_V_0_payload_B, in_V_0_sel)
    begin
        if ((ap_const_logic_1 = in_V_0_sel)) then 
            in_V_0_data_out <= in_V_0_payload_B;
        else 
            in_V_0_data_out <= in_V_0_payload_A;
        end if; 
    end process;

    in_V_0_load_A <= (in_V_0_state_cmp_full and not(in_V_0_sel_wr));
    in_V_0_load_B <= (in_V_0_sel_wr and in_V_0_state_cmp_full);
    in_V_0_sel <= in_V_0_sel_rd;
    in_V_0_state_cmp_full <= '0' when (in_V_0_state = ap_const_lv2_1) else '1';
    in_V_0_vld_in <= in_V_TVALID;
    in_V_0_vld_out <= in_V_0_state(0);

    in_V_TDATA_blk_n_assign_proc : process(in_V_0_state, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_V_TDATA_blk_n <= in_V_0_state(0);
        else 
            in_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    in_V_TREADY <= in_V_0_state(1);
    out_V_1_ack_in <= out_V_1_state(1);
    out_V_1_ack_out <= out_V_TREADY;

    out_V_1_data_out_assign_proc : process(out_V_1_payload_A, out_V_1_payload_B, out_V_1_sel)
    begin
        if ((ap_const_logic_1 = out_V_1_sel)) then 
            out_V_1_data_out <= out_V_1_payload_B;
        else 
            out_V_1_data_out <= out_V_1_payload_A;
        end if; 
    end process;

    out_V_1_load_A <= (out_V_1_state_cmp_full and not(out_V_1_sel_wr));
    out_V_1_load_B <= (out_V_1_sel_wr and out_V_1_state_cmp_full);
    out_V_1_sel <= out_V_1_sel_rd;
    out_V_1_state_cmp_full <= '0' when (out_V_1_state = ap_const_lv2_1) else '1';

    out_V_1_vld_in_assign_proc : process(out_V_1_ack_in, ap_CS_fsm_state25)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state25) and (out_V_1_ack_in = ap_const_logic_1))) then 
            out_V_1_vld_in <= ap_const_logic_1;
        else 
            out_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    out_V_1_vld_out <= out_V_1_state(0);
    out_V_TDATA <= out_V_1_data_out;

    out_V_TDATA_blk_n_assign_proc : process(out_V_1_state, ap_CS_fsm_state25, ap_CS_fsm_state26, user_writing_V_read_reg_184)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state25) or ((ap_const_logic_1 = ap_CS_fsm_state26) and (ap_const_lv1_0 = user_writing_V_read_reg_184)))) then 
            out_V_TDATA_blk_n <= out_V_1_state(1);
        else 
            out_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_TVALID <= out_V_1_state(0);
    user_writing_V_read_read_fu_56_p2 <= user_writing_V;
end behav;
