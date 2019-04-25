############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project biquad
set_top biquad
add_files biquad.cpp
add_files biquad.h
add_files -tb biquad_test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1} -tool vivado
create_clock -period 10 -name default
#source "./biquad/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
