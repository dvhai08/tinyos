/*
 * Copyright (c) 2010 People Power Co.
 * All rights reserved.
 *
 * This open source code was developed with funding from People Power Company
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * - Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 *
 * - Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the
 *   distribution.
 *
 * - Neither the name of the copyright holders nor the names of
 *   its contributors may be used to endorse or promote products derived
 *   from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
 * THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 */

configuration PlatformAdcC {
  provides {
    interface HplMsp430GeneralIO as A0;
    interface HplMsp430GeneralIO as A1;
    interface HplMsp430GeneralIO as A2;
    interface HplMsp430GeneralIO as A3;
    interface HplMsp430GeneralIO as A4;
    interface HplMsp430GeneralIO as A5;
    interface HplMsp430GeneralIO as A6;
    interface HplMsp430GeneralIO as A7;

    interface Msp430Timer as TimerB;
    interface Msp430TimerControl as ControlB0;
    interface Msp430TimerControl as ControlB1;
    interface Msp430Compare as CompareB0;
    interface Msp430Compare as CompareB1;
  }
}

implementation {

  components HplMsp430GeneralIOC;
  A0 = HplMsp430GeneralIOC.ADC0;
  A1 = HplMsp430GeneralIOC.ADC1;
  A2 = HplMsp430GeneralIOC.ADC2;
  A3 = HplMsp430GeneralIOC.ADC3;
  A4 = HplMsp430GeneralIOC.ADC4;
  A5 = HplMsp430GeneralIOC.ADC5;
  A6 = HplMsp430GeneralIOC.ADC6;
  A7 = HplMsp430GeneralIOC.ADC7;

  components Msp430TimerC;
  TimerB = Msp430TimerC.Timer0_B;
  ControlB0 = Msp430TimerC.Control0_B0;
  ControlB1 = Msp430TimerC.Control0_B1;
  CompareB0 = Msp430TimerC.Compare0_B0;
  CompareB1 = Msp430TimerC.Compare0_B1;

}
