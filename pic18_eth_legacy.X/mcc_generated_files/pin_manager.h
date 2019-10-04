/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC18F67J60
        Version           :  2.0
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.05 and above
        MPLAB             :  MPLAB X 5.20

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set LEDA aliases
#define LEDA_TRIS                 TRISAbits.TRISA0
#define LEDA_LAT                  LATAbits.LATA0
#define LEDA_PORT                 PORTAbits.RA0
#define LEDA_ANS                  anselRA0bits.anselRA0
#define LEDA_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define LEDA_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define LEDA_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define LEDA_GetValue()           PORTAbits.RA0
#define LEDA_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define LEDA_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define LEDA_SetAnalogMode()      do { anselRA0bits.anselRA0 = 1; } while(0)
#define LEDA_SetDigitalMode()     do { anselRA0bits.anselRA0 = 0; } while(0)

// get/set LEDB aliases
#define LEDB_TRIS                 TRISAbits.TRISA1
#define LEDB_LAT                  LATAbits.LATA1
#define LEDB_PORT                 PORTAbits.RA1
#define LEDB_ANS                  anselRA1bits.anselRA1
#define LEDB_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define LEDB_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define LEDB_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define LEDB_GetValue()           PORTAbits.RA1
#define LEDB_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define LEDB_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define LEDB_SetAnalogMode()      do { anselRA1bits.anselRA1 = 1; } while(0)
#define LEDB_SetDigitalMode()     do { anselRA1bits.anselRA1 = 0; } while(0)


/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/