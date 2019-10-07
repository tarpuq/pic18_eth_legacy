/*********************************************************************
 *
 *  MQTT Client Demonstrations
 *	  - MQTT Client (publish, subscribe)
 *
 *********************************************************************
 * FileName:        MQTTDemo.c
 * Dependencies:    TCP/IP stack
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights reserved.
 * Copyright (C) 2013,2014 Cyberdyne
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 *	https://developer.ibm.com/iot/recipes/improvise/
 *	https://internetofthings.ibmcloud.com/dashboard/#/organizations/mkxk7/devices
 *	https://developer.ibm.com/iot/recipes/improvise-registered-devices/
 *
 * Author               Date      Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * E. Wood     			4/26/08	  Moved from MainDemo.c
 * D. Greggio  			9/30/14	  wrote example
 ********************************************************************/
#define __MQTTDEMO_C

#include "TCPIPConfig.h"

#if defined(STACK_USE_MQTT_CLIENT)

#include "TCPIP Stack/TCPIP.h"
#include "MainDemo.h"

char MQTTMessage[256];

/*****************************************************************************
  Function:
	void MQTTDemo(void)

  Summary:
	Demonstrates use of the MQTT client.
	
  Description:
	This function demonstrates the use of the MQTT client.  The function is
	called periodically by the stack, and checks if BUTTON2 and BUTTON3 are
	pressed simultaneously.  If they are, it attempts to send an e-mail 
	message using parameters hard coded in the function below.
	FINIRE!!

	While the client is executing, LED1 will be used as a busy indicator.  
	LED2 will light when the transmission has been completed successfully.  
	If both LEDs extinguish, an error occurred.
	
	For an example of sending a longer message (one that does not exist in
	RAM all at once), see the commented secondary implementation of this
	function in this file (SMTPDemo.c) below.  For an example of sending
	a message using parameters gathered at run time, and/or a message with 
	attachments, see the implementation of HTTPPostEmail in CustomHTTPApp.c.

  Precondition:
	The MQTT client is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void MQTTDemo(void) {
	// Send a PUBLISH once if someone pushes BUTTON2 and BUTTON3 at the same time
	// This is a simple message example, where the message 
	// body must already be in RAM.
	// LED1 will be used as a busy indicator
	// LED2 will be used as a mail sent successfully indicator
	static enum	{
		MQTT_HOME = 0,
		MQTT_BEGIN,
		MQTT_CONNECT,
		MQTT_CONNECT_WAIT,
		MQTT_PUBLISH,
		MQTT_PUBLISH_WAIT,
		MQTT_FINISHING,
		MQTT_DONE
		} MQTTState = MQTT_HOME;
	static DWORD WaitTime;
	static char JSONbuffer[64];
       
	switch(MQTTState)	{
		case MQTT_HOME:
		  if((BUTTON0_IO == 0u) && (BUTTON0_IO == 0u))	{
				// Start sending to MQTT server
				LED1_IO = 1;
				MQTTState++;
				LED2_IO = 0;
				}
			break;

		case MQTT_BEGIN:
			if(MQTTBeginUsage()) {
				// Note that these strings must stay allocated in 
				// memory until MQTTIsBusy() returns FALSE.  To 
				// guarantee that the C compiler does not reuse this 
				// memory, you must allocate the strings as static.

#if defined(__18CXX)
				MQTTClient.Server.szROM = (ROM BYTE*)"yourcompany.messaging.internetofthings.ibmcloud.com";	// MQTT server address
				MQTTClient.ROMPointers.Server = 1;
#else
				MQTTClient.Server.szRAM = "yourcompany.messaging.internetofthings.ibmcloud.com";	// MQTT server address
#endif
#if defined(__18CXX)
				MQTTClient.ConnectId.szROM = (ROM BYTE*)"d:company:device:10";
				MQTTClient.ROMPointers.ConnectId = 1;
#else
				MQTTClient.ConnectId.szRAM = "d:company:device:10";
#endif
#if defined(__18CXX)
				MQTTClient.Username.szROM = (ROM BYTE*)"use-token-auth";
				MQTTClient.ROMPointers.Username = 1;
#else
				MQTTClient.Username.szRAM = "use-token-auth";
#endif
#if defined(__18CXX)
				MQTTClient.Password.szROM = (ROM BYTE*)"secretpassword";
				MQTTClient.ROMPointers.Password = 1;
#else
				MQTTClient.Password.szRAM = "secretpassword";
#endif
				MQTTClient.bSecure=FALSE;
				//  MQTTClient.m_Callback = callback;
				MQTTClient.QOS=0;
				MQTTClient.KeepAlive=MQTT_KEEPALIVE_LONG;
				//  MQTTClient.Stream = stream;

				MQTTState++;
				}
			break;

		case MQTT_CONNECT:
			MQTTConnect(MQTTClient.ConnectId.szRAM,MQTTClient.Username.szRAM,MQTTClient.Password.szRAM,
				NULL,0,0,NULL);
			MQTTState++;
			break;

		case MQTT_CONNECT_WAIT:
			if(MQTTIsIdle()) {
				if(MQTTResponseCode == MQTT_SUCCESS)
					MQTTState++;
				else
					MQTT_FINISHING;			// boh che fare? :)
				}
			break;

		case MQTT_PUBLISH:
#if defined(__18CXX)
			MQTTClient.Topic.szROM = (ROM BYTE*)"iot-2/evt/temperature/fmt/data";		// different
			MQTTClient.ROMPointers.Topic = 1;
#else
			MQTTClient.Topic.szRAM = "iot-2/evt/temperature/fmt/json";
#endif
#if defined(__18CXX)
			MQTTClient.Payload.szROM = (ROM BYTE*)"25.5";
			MQTTClient.ROMPointers.Payload = 1;
#else
			GetAsJSONValue(JSONbuffer,"temperature",25.5);
			MQTTClient.Payload.szRAM = JSONbuffer;
#endif

			MQTTPublish(MQTTClient.Topic.szRAM,MQTTClient.Payload.szRAM,strlen(MQTTClient.Payload.szRAM),0);		// così... ROM?
			MQTTState++;
			break;

		case MQTT_PUBLISH_WAIT:
			if(MQTTIsIdle()) {
				if(MQTTResponseCode == MQTT_SUCCESS)
					MQTTState=MQTT_FINISHING;
				else
					MQTTState=MQTT_FINISHING;			// boh che fare? :)
				}
			break;

		case MQTT_FINISHING:
			if(!MQTTIsBusy())	{

				// Finished receiving mail
				LED1_IO = 0;
				MQTTState++;
				WaitTime = TickGet();
				LED2_IO = (MQTTEndUsage() == MQTT_SUCCESS);
				}
			break;

		case MQTT_DONE:
			// Wait for the user to release BUTTON2 or BUTTON3 and for at 
			// least 1 second to pass before allowing another 
			// email to be sent.  This is merely to prevent 
			// accidental flooding of email boxes while 
			// developing code.  Your application may wish to remove this.
			if(BUTTON0_IO && BUTTON0_IO) {
				if(TickGet() - WaitTime > TICK_SECOND)
					MQTTState = MQTT_HOME;
				}
			break;
		}
	}


#endif //#if defined(STACK_USE_MQTT_CLIENT)
