# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
# Switches
set_property PACKAGE_PIN U1 [get_ports {button3}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {button3}]
set_property PACKAGE_PIN T1 [get_ports {button2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {button2}]
set_property PACKAGE_PIN R2 [get_ports {button1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {button1}]
 

# LEDs
set_property PACKAGE_PIN P1 [get_ports {led1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led1}]
set_property PACKAGE_PIN L1 [get_ports {led2}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led2}]
