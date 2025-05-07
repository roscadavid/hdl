
#Pmod Header JA ADC PMOD CONNECTOR 

set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33 }   [get_ports ad5592r_spi_sclk];     
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33 }   [get_ports ad5592r_spi_sdo];      
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33 }   [get_ports ad5592r_spi_sdi];      
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 }   [get_ports ad5592r_spi_cs];       

set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33 }    [get_ports ad5592r_busy_alt_gp0]; ## CK_IO09
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33 }    [get_ports ad5592r_spi_cnv];      ## CK_IO06
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33 }    [get_ports ad5592r_resetn];       ## CK_IO04

#Pmod Header JB  PMOD CONNECTOR

set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33 }   [get_ports sniffing_sclk];     
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33 }   [get_ports sniffing_sdo];      
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33 }   [get_ports sniffing_sdi];      
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33 }   [get_ports sniffing_cs];   

# rename auto-generated clock for SPIEngine to spi_clk - 40MHz
# NOTE: clk_fpga_0 is the first PL fabric clock, also called $sys_cpu_clk
create_generated_clock -name spi_clk -source [get_pins -filter name=~*CLKIN1 -of [get_cells -hier -filter name=~*spi_clkgen*i_mmcm]] -master_clock clk_fpga_0 [get_pins -filter name=~*CLKOUT0 -of [get_cells -hier -filter name=~*spi_clkgen*i_mmcm]]

#relax the SDO path to help closing timing at high frequencies
set_multicycle_path -setup 8 -to [get_cells -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]}] -from [get_clocks spi_clk]
set_multicycle_path -hold  7 -to [get_cells -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]}] -from [get_clocks spi_clk]
set_multicycle_path -setup 8 -to [get_cells -hierarchical -filter {NAME=~*/spi_ad5592r_execution/inst/left_aligned_reg*}] -from [get_clocks spi_clk]
set_multicycle_path -hold  7 -to [get_cells -hierarchical -filter {NAME=~*/spi_ad5592r_execution/inst/left_aligned_reg*}] -from [get_clocks spi_clk]
