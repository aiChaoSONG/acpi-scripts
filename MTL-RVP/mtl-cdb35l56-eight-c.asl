 /** @file
  The definition block in ACPI table under SoundWire Controller,
  connecting to Cirrus Logic CDB35L56-EIGHT-C Board.

Copyright (c) 2023, Intel Corporation. All rights reserved.<BR>
  This program and the accompanying materials
  are licensed and made available under the terms and conditions of the BSD License
  which accompanies this distribution.  The full text of the license may be found at
  http://opensource.org/licenses/bsd-license.php

  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
**/

DefinitionBlock (
  "",
  "SSDT",
   2,
  "INTEL",
  "MtlP_Rvp",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.IDA.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.IDA.SNDW) {
    Device (CL0)  // CS42L43 on link 0
    {
        Name (_ADR, 0x00003001FA424301)  // _ADR: Address
    }
    Device (CL1) // first CS35L56 on link 1
    {
        Name (_ADR, 0x00013601FA355601)  // _ADR: Address
    }
    Device (CL2) // second CS35L56 on link 1
    {
        Name (_ADR, 0x00013701FA355601)  // _ADR: Address
    }
    Device (CL3) // first CS35L56 on link 2
    {
        Name (_ADR, 0x00023201FA355601)  // _ADR: Address
    }
    Device (CL4) // second CS35L56 on link 2
    {
        Name (_ADR, 0x00023301FA355601)  // _ADR: Address
    }
  }
}
