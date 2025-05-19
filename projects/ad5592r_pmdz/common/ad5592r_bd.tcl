###############################################################################
## Copyright (C) 2024-2025 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

# system level parameter
#create ports: pwm_led_0_r, pwm_led_0_g, pwm_led_0_b, pwm_led_1_r, pwm_led_1_g, pwm_led_1_b ports
# command example: create_bd_port -dir O example led
create_bd_port -dir O pwm_led_0_r
create_bd_port -dir O pwm_led_0_b
create_bd_port -dir O pwm_led_0_g

create_bd_port -dir O pwm_led_1_r
create_bd_port -dir O pwm_led_1_b
create_bd_port -dir O pwm_led_1_g

#add axi_pwm_custom IP using ad_ip_instance command
ad_ip_instance  axi_pwm_custom axi_pwm_custom_i

#connect the axi_pwm_custom IP to the block design ports using ad_connect command

ad_connect pwm_led_0_r axi_pwm_custom_i/pwm_led_0
ad_connect pwm_led_0_g axi_pwm_custom_i/pwm_led_1
ad_connect pwm_led_0_b axi_pwm_custom_i/pwm_led_2
ad_connect pwm_led_1_r axi_pwm_custom_i/pwm_led_3
ad_connect pwm_led_1_g axi_pwm_custom_i/pwm_led_4
ad_connect pwm_led_1_b axi_pwm_custom_i/pwm_led_5

#connect the axi_pwm_custom IP to the CPU using ad_cpu_interconnect at 0x44b30000
ad_cpu_interconnect  0x44b30000 axi_pwm_custom_i

set SPI_4WIRE $ad_project_params(SPI_4WIRE)  
#extrage si seteaza valoarea parametrului SPI_4WIRE dintr-o variabila globala. Controleaza daca SPI functioneaza in modul 4-wire.
puts "build parameter: SPI_4WIRE: $SPI_4WIRE"
#se afiseaza valoarea parametrului in consola

create_bd_intf_port -mode Master -vlnv analog.com:interface:spi_engine_rtl:1.0 ad5592r_spi
#creeaza un port de SPI pentru ad5592r in modulul Master
create_bd_port -dir O ad5592r_spi_cnv
#portul de iesire a semnalului de conversie
create_bd_port -dir I ad5592r_spi_busy
create_bd_port -dir I gpio_cnv
#busy si gpio sunt porturile de intrare

source $ad_hdl_dir/library/spi_engine/scripts/spi_engine.tcl
# se incarca un script extern pentru configurare SPI Engine 

set data_width    16
#latimea de date 
set async_spi_clk 1
#Activeaza spi_clk asincron 
set num_cs        1
set num_sdi       1
set num_sdo       1
#numarul de linii
set sdi_delay     1
#seteaza o intarziere pentru datele de intrare
set echo_sclk     0
#controleaza daca semnalul de SPI este returnat 
set hier_spi_engine spi_ad5592r

spi_engine_create $hier_spi_engine $data_width $async_spi_clk $num_cs $num_sdi $num_sdo $sdi_delay $echo_sclk

# To support the 1MSPS (SCLK == 20 MHz), set the spi clock to 40 MHz

ad_ip_instance axi_clkgen spi_clkgen
ad_ip_parameter spi_clkgen CONFIG.CLK0_DIV 15
ad_ip_parameter spi_clkgen CONFIG.VCO_DIV 1
ad_ip_parameter spi_clkgen CONFIG.VCO_MUL 6
ad_connect $sys_cpu_clk spi_clkgen/clk
ad_connect spi_clk spi_clkgen/clk_0

ad_ip_instance axi_pwm_gen ad5592r_trigger_gen

ad_ip_parameter ad5592r_trigger_gen CONFIG.PULSE_0_PERIOD 160
ad_ip_parameter ad5592r_trigger_gen CONFIG.PULSE_0_WIDTH 1

ad_connect spi_clk ad5592r_trigger_gen/ext_clk
ad_connect $sys_cpu_clk ad5592r_trigger_gen/s_axi_aclk
ad_connect sys_cpu_resetn ad5592r_trigger_gen/s_axi_aresetn

# dma to receive data stream

ad_ip_instance axi_dmac axi_ad5592r_dma
ad_ip_parameter axi_ad5592r_dma CONFIG.DMA_TYPE_SRC 1
ad_ip_parameter axi_ad5592r_dma CONFIG.DMA_TYPE_DEST 0
ad_ip_parameter axi_ad5592r_dma CONFIG.CYCLIC 0
ad_ip_parameter axi_ad5592r_dma CONFIG.SYNC_TRANSFER_START 0
ad_ip_parameter axi_ad5592r_dma CONFIG.AXI_SLICE_SRC 0
ad_ip_parameter axi_ad5592r_dma CONFIG.AXI_SLICE_DEST 1
ad_ip_parameter axi_ad5592r_dma CONFIG.DMA_2D_TRANSFER 0

ad_ip_parameter axi_ad5592r_dma CONFIG.DMA_DATA_WIDTH_SRC $data_width
ad_ip_parameter axi_ad5592r_dma CONFIG.DMA_DATA_WIDTH_DEST 64

ad_connect sys_cpu_clk $hier_spi_engine/clk
ad_connect spi_clk axi_ad5592r_dma/s_axis_aclk
ad_connect sys_cpu_resetn $hier_spi_engine/resetn
ad_connect sys_cpu_resetn axi_ad5592r_dma/m_dest_axi_aresetn

ad_connect spi_clk $hier_spi_engine/spi_clk
ad_connect $hier_spi_engine/m_spi ad5592r_spi
ad_connect axi_ad5592r_dma/s_axis $hier_spi_engine/M_AXIS_SAMPLE

ad_connect ad5592r_trigger_gen/pwm_0 $hier_spi_engine/trigger
ad_connect ad5592r_trigger_gen/pwm_0 ad5592r_spi_cnv
ad_cpu_interconnect 0x44a00000 $hier_spi_engine/${hier_spi_engine}_axi_regmap
ad_cpu_interconnect 0x44a30000 axi_ad5592r_dma
ad_cpu_interconnect 0x44a70000 spi_clkgen
ad_cpu_interconnect 0x44b00000 ad5592r_trigger_gen

ad_cpu_interrupt "ps-13" "mb-13" axi_ad5592r_dma/irq
ad_cpu_interrupt "ps-12" "mb-12" $hier_spi_engine/irq

ad_mem_hp2_interconnect sys_cpu_clk sys_ps7/S_AXI_HP2
ad_mem_hp2_interconnect sys_cpu_clk axi_ad5592r_dma/m_dest_axi
