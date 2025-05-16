// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2017 (c) Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/main/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************
// This is the LVDS/DDR interface
`timescale 1ns/100ps
module axi_pwm_custom_if (
  input            pwm_clk,
 (* MARK_DEBUG = "TRUE" *) input            rstn,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_0,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_1,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_2,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_3,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_4,
 (* MARK_DEBUG = "TRUE" *) input    [11:0]  data_channel_5,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_0,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_1,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_2,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_3,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_4,
 (* MARK_DEBUG = "TRUE" *) output           pwm_led_5
);
  localparam PULSE_PERIOD = 4095;
// internal registers
  (* MARK_DEBUG = "TRUE" *) reg [11:0] counter = 0;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_0_aux;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_1_aux;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_2_aux;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_3_aux;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_4_aux;
 (* MARK_DEBUG = "TRUE" *) reg [11:0] data_channel_5_aux;
 (* MARK_DEBUG = "TRUE" *)  reg r_0 = 0;
 (* MARK_DEBUG = "TRUE" *)  reg r_1 = 0;
 (* MARK_DEBUG = "TRUE" *)  reg r_2 = 0;
 (* MARK_DEBUG = "TRUE" *)  reg r_3 = 0;
 (* MARK_DEBUG = "TRUE" *)  reg r_4 = 0;
 (* MARK_DEBUG = "TRUE" *)  reg r_5 = 0;
// internal wires
  (* MARK_DEBUG = "TRUE" *) wire end_of_period;
// generate a signal named end_of_period which has '1' logic value at the end of the PULSE_PERIOD
  assign end_of_period = (counter == PULSE_PERIOD) ? 1 : 0;
// Create a counter from 0 to PULSE_PERIOD
  always @(posedge pwm_clk or negedge rstn) begin
    if (rstn == 0)
        counter <= 0;
    else begin
        if (counter == PULSE_PERIOD)
          counter <= 0;
        else
          counter <= counter + 1;
    end
   end
// control the pwm signal value based on the input signal and counter value
  always @(posedge pwm_clk) begin
    if (counter < data_channel_0_aux)
      r_0 <= 1;
    else
      r_0 <= 0;
  end
  always @(posedge pwm_clk) begin
    if (counter < data_channel_1_aux)
      r_1 <= 1;
    else
      r_1 <= 0;
  end
  always @(posedge pwm_clk) begin
    if (counter < data_channel_2_aux)
      r_2 <= 1;
    else
      r_2 <= 0;
  end
  always @(posedge pwm_clk) begin
    if (counter < data_channel_3_aux)
      r_3 <= 1;
    else
      r_3 <= 0;
  end
  always @(posedge pwm_clk) begin
    if (counter < data_channel_4_aux)
      r_4 <= 1;
    else
      r_4 <= 0;
  end
  always @(posedge pwm_clk) begin
    if (counter < data_channel_5_aux)
      r_5 <= 1;
    else
      r_5 <= 0;
  end
// make sure that the new data is processed only after the end_of_period
  always @(posedge end_of_period) begin
    data_channel_0_aux <= data_channel_0;
    data_channel_1_aux <= data_channel_1;
    data_channel_2_aux <= data_channel_2;
    data_channel_3_aux <= data_channel_3;
    data_channel_4_aux <= data_channel_4;
    data_channel_5_aux <= data_channel_5;
  end
  assign pwm_led_0 = r_0;
  assign pwm_led_1 = r_1;
  assign pwm_led_2 = r_2;
  assign pwm_led_3 = r_3;
  assign pwm_led_4 = r_4;
  assign pwm_led_5 = r_5;
endmodule
