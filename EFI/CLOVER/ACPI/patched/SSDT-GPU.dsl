/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLLmrPEV.aml, Mon Jul 10 11:22:50 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000203 (515)
 *     Revision         0x01
 *     Checksum         0xF3
 *     OEM ID           "shiloh"
 *     OEM Table ID     "GFX1"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "shiloh", "GFX1", 0x00001000)
{
    Device (_SB.PCI0.PEG0.GFX1)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_SUN, One)  // _SUN: Slot User Number
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x18)
            {
                "@0,AAPL,boot-display", 
                Buffer (Zero) {}, 
                "@0,built-in", 
                Buffer (One)
                {
                     0x01                                           
                }, 

                "@0,use-backlight-blanking", 
                Buffer (One)
                {
                     0x01                                           
                }, 

                "@0,backlight-control", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "@0,pwm-info", 
                Buffer (0x14)
                {
                    /* 0000 */  0x01, 0x14, 0x00, 0x64, 0xA8, 0x61, 0x00, 0x00,
                    /* 0008 */  0x1E, 0x02, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x04, 0x00, 0x00                         
                }, 

                "@0,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "@1,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "@2,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "@3,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "@4,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "@5,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            })
        }
    }

    Device (_SB.PCI0.PEG0.HDAU)
    {
        Name (_ADR, One)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x02)
            {
                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            })
        }
    }

    Name (\_SB.PCI0.PEG0.PEGP._STA, Zero)  // _STA: Status
}

