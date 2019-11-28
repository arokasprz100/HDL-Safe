
# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
set_property PACKAGE_PIN T18 [get_ports {open}];  # "BTNU"
set_property PACKAGE_PIN R16 [get_ports {lock}];  # "BTND"

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {diodes[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {diodes[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {diodes[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {diodes[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {diodes[4]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {diodes[5]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {diodes[6]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {diodes[7]}];  # "LD7

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
# JA Pmod - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN W7 [get_ports {a}];  # "JD1_N"
set_property PACKAGE_PIN V5 [get_ports {b}];  # "JD2_P"

# ----------------------------------------------------------------------------
# User DIP Switches - Bank 35
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN F22 [get_ports {doorCls}];  # "SW0"


# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];