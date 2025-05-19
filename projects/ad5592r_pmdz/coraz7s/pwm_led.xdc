create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i_system_wrapper/system_i/sys_ps7/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 12 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 12 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 12 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/counter[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 12 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_2[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 12 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 12 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 12 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 12 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_1[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 12 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_0[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 12 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_3[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 12 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_5_aux[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 12 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[0]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[1]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[2]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[3]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[4]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[5]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[6]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[7]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[8]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[9]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[10]} {i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/data_channel_4[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/end_of_period]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_3]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_4]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/pwm_led_5]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_3]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_4]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/r_5]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list i_system_wrapper/system_i/axi_pwm_custom_i/inst/i_if_axi_pwm_custom/rstn]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
