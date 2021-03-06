/*
 * Copyright (c) 2009-2010 People Power Co.
 * All rights reserved.
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

#include "msp430usci.h"

/**
 * Connect the appropriate pins for USCI support on a CC430.
 *
 * @author Peter A. Bigot <pab@peoplepowerco.com>
 */

configuration PlatformUsciMapC {
} implementation {
  components HplMsp430GeneralIOC as GIO;
  components PlatformP;

  components Msp430UsciUartA1P as UartA1C;
  UartA1C.URXD -> GIO.UCA1RXD;
  UartA1C.UTXD -> GIO.UCA1TXD;

  components Msp430UsciSpiA0P as SpiA0C;
  SpiA0C.SIMO -> GIO.UCA0SIMO;
  SpiA0C.SOMI -> GIO.UCA0SOMI;
  SpiA0C.CLK  -> GIO.UCA0CLK;

  components Msp430UsciSpiB0P as SpiB0C;
  SpiB0C.SIMO -> GIO.UCB0SIMO;
  SpiB0C.SOMI -> GIO.UCB0SOMI;
  SpiB0C.CLK  -> GIO.UCB0CLK;

  /*components Msp430UsciSpiA3P as SpiA3C;*/
  /*SpiA3C.SIMO -> GIO.UCA3SIMO;*/
  /*SpiA3C.SOMI -> GIO.UCA3SOMI;*/
  /*SpiA3C.CLK  -> GIO.UCA3CLK;*/

  components Msp430UsciI2CB1P as I2CB1C;
  I2CB1C.SDA -> GIO.UCB1SDA;
  I2CB1C.SCL -> GIO.UCB1SCL;
  I2CB1C.Platform -> PlatformP;
}
