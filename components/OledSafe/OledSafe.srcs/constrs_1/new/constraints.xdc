# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"

# ----------------------------------------------------------------------------
# OLED Display - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN U10  [get_ports {dc}];  # "OLED-DC"
set_property PACKAGE_PIN U9   [get_ports {res}];  # "OLED-RES"
set_property PACKAGE_PIN AB12 [get_ports {sclk}];  # "OLED-SCLK"
set_property PACKAGE_PIN AA12 [get_ports {sdo}];  # "OLED-SDIN"
set_property PACKAGE_PIN U11  [get_ports {vbat}];  # "OLED-VBAT"
set_property PACKAGE_PIN U12  [get_ports {vdd}];  # "OLED-VDD"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
set_property PACKAGE_PIN R16 [get_ports {blank}];  # "BTND"

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];