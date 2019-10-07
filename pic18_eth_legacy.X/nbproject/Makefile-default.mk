#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/device_config.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c "TCPIP Stack/StackTsk.c" "TCPIP Stack/IP.c" "TCPIP Stack/ETH97J60.c" "TCPIP Stack/Helpers.c" "TCPIP Stack/ICMP.c" "TCPIP Stack/ARP.c" "TCPIP Stack/Tick.c" "TCPIP Stack/TCP.c" "TCPIP Stack/AutoIP.c" "TCPIP Stack/DHCP.c" "TCPIP Stack/UDP.c" "TCPIP Stack/Announce.c" "TCPIP Stack/DNS.c" main.c PingDemo.c GenericTCPServer.c GenericTCPClient.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 "${OBJECTDIR}/TCPIP Stack/StackTsk.p1" "${OBJECTDIR}/TCPIP Stack/IP.p1" "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1" "${OBJECTDIR}/TCPIP Stack/Helpers.p1" "${OBJECTDIR}/TCPIP Stack/ICMP.p1" "${OBJECTDIR}/TCPIP Stack/ARP.p1" "${OBJECTDIR}/TCPIP Stack/Tick.p1" "${OBJECTDIR}/TCPIP Stack/TCP.p1" "${OBJECTDIR}/TCPIP Stack/AutoIP.p1" "${OBJECTDIR}/TCPIP Stack/DHCP.p1" "${OBJECTDIR}/TCPIP Stack/UDP.p1" "${OBJECTDIR}/TCPIP Stack/Announce.p1" "${OBJECTDIR}/TCPIP Stack/DNS.p1" ${OBJECTDIR}/main.p1 ${OBJECTDIR}/PingDemo.p1 ${OBJECTDIR}/GenericTCPServer.p1 ${OBJECTDIR}/GenericTCPClient.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d "${OBJECTDIR}/TCPIP Stack/StackTsk.p1.d" "${OBJECTDIR}/TCPIP Stack/IP.p1.d" "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1.d" "${OBJECTDIR}/TCPIP Stack/Helpers.p1.d" "${OBJECTDIR}/TCPIP Stack/ICMP.p1.d" "${OBJECTDIR}/TCPIP Stack/ARP.p1.d" "${OBJECTDIR}/TCPIP Stack/Tick.p1.d" "${OBJECTDIR}/TCPIP Stack/TCP.p1.d" "${OBJECTDIR}/TCPIP Stack/AutoIP.p1.d" "${OBJECTDIR}/TCPIP Stack/DHCP.p1.d" "${OBJECTDIR}/TCPIP Stack/UDP.p1.d" "${OBJECTDIR}/TCPIP Stack/Announce.p1.d" "${OBJECTDIR}/TCPIP Stack/DNS.p1.d" ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/PingDemo.p1.d ${OBJECTDIR}/GenericTCPServer.p1.d ${OBJECTDIR}/GenericTCPClient.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/TCPIP\ Stack/StackTsk.p1 ${OBJECTDIR}/TCPIP\ Stack/IP.p1 ${OBJECTDIR}/TCPIP\ Stack/ETH97J60.p1 ${OBJECTDIR}/TCPIP\ Stack/Helpers.p1 ${OBJECTDIR}/TCPIP\ Stack/ICMP.p1 ${OBJECTDIR}/TCPIP\ Stack/ARP.p1 ${OBJECTDIR}/TCPIP\ Stack/Tick.p1 ${OBJECTDIR}/TCPIP\ Stack/TCP.p1 ${OBJECTDIR}/TCPIP\ Stack/AutoIP.p1 ${OBJECTDIR}/TCPIP\ Stack/DHCP.p1 ${OBJECTDIR}/TCPIP\ Stack/UDP.p1 ${OBJECTDIR}/TCPIP\ Stack/Announce.p1 ${OBJECTDIR}/TCPIP\ Stack/DNS.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/PingDemo.p1 ${OBJECTDIR}/GenericTCPServer.p1 ${OBJECTDIR}/GenericTCPClient.p1

# Source Files
SOURCEFILES=mcc_generated_files/device_config.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c TCPIP Stack/StackTsk.c TCPIP Stack/IP.c TCPIP Stack/ETH97J60.c TCPIP Stack/Helpers.c TCPIP Stack/ICMP.c TCPIP Stack/ARP.c TCPIP Stack/Tick.c TCPIP Stack/TCP.c TCPIP Stack/AutoIP.c TCPIP Stack/DHCP.c TCPIP Stack/UDP.c TCPIP Stack/Announce.c TCPIP Stack/DNS.c main.c PingDemo.c GenericTCPServer.c GenericTCPClient.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F67J60
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.p1: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/StackTsk.p1" "TCPIP Stack/StackTsk.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/StackTsk".d "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/IP.p1: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/IP.p1" "TCPIP Stack/IP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/IP".d "${OBJECTDIR}/TCPIP Stack/IP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.p1: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ETH97J60.p1" "TCPIP Stack/ETH97J60.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ETH97J60".d "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.p1: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Helpers.p1" "TCPIP Stack/Helpers.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Helpers".d "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.p1: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ICMP.p1" "TCPIP Stack/ICMP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ICMP".d "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ARP.p1: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ARP.p1" "TCPIP Stack/ARP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ARP".d "${OBJECTDIR}/TCPIP Stack/ARP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Tick.p1: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Tick.p1" "TCPIP Stack/Tick.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Tick".d "${OBJECTDIR}/TCPIP Stack/Tick.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/TCP.p1: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/TCP.p1" "TCPIP Stack/TCP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/TCP".d "${OBJECTDIR}/TCPIP Stack/TCP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.p1: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/AutoIP.p1" "TCPIP Stack/AutoIP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/AutoIP".d "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.p1: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/DHCP.p1" "TCPIP Stack/DHCP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/DHCP".d "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/UDP.p1: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/UDP.p1" "TCPIP Stack/UDP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/UDP".d "${OBJECTDIR}/TCPIP Stack/UDP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Announce.p1: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Announce.p1" "TCPIP Stack/Announce.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Announce".d "${OBJECTDIR}/TCPIP Stack/Announce.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/DNS.p1: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/DNS.p1" "TCPIP Stack/DNS.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/DNS".d "${OBJECTDIR}/TCPIP Stack/DNS.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PingDemo.p1: PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingDemo.p1.d 
	@${RM} ${OBJECTDIR}/PingDemo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/PingDemo.p1 PingDemo.c 
	@-${MV} ${OBJECTDIR}/PingDemo.d ${OBJECTDIR}/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PingDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPServer.p1: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/GenericTCPServer.p1 GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/GenericTCPServer.d ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPClient.p1: GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPClient.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPClient.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/GenericTCPClient.p1 GenericTCPClient.c 
	@-${MV} ${OBJECTDIR}/GenericTCPClient.d ${OBJECTDIR}/GenericTCPClient.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPClient.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.p1: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/StackTsk.p1" "TCPIP Stack/StackTsk.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/StackTsk".d "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/IP.p1: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/IP.p1" "TCPIP Stack/IP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/IP".d "${OBJECTDIR}/TCPIP Stack/IP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.p1: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ETH97J60.p1" "TCPIP Stack/ETH97J60.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ETH97J60".d "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.p1: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Helpers.p1" "TCPIP Stack/Helpers.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Helpers".d "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.p1: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ICMP.p1" "TCPIP Stack/ICMP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ICMP".d "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/ARP.p1: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/ARP.p1" "TCPIP Stack/ARP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/ARP".d "${OBJECTDIR}/TCPIP Stack/ARP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Tick.p1: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Tick.p1" "TCPIP Stack/Tick.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Tick".d "${OBJECTDIR}/TCPIP Stack/Tick.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/TCP.p1: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/TCP.p1" "TCPIP Stack/TCP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/TCP".d "${OBJECTDIR}/TCPIP Stack/TCP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.p1: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/AutoIP.p1" "TCPIP Stack/AutoIP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/AutoIP".d "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.p1: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/DHCP.p1" "TCPIP Stack/DHCP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/DHCP".d "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/UDP.p1: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/UDP.p1" "TCPIP Stack/UDP.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/UDP".d "${OBJECTDIR}/TCPIP Stack/UDP.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/Announce.p1: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/Announce.p1" "TCPIP Stack/Announce.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/Announce".d "${OBJECTDIR}/TCPIP Stack/Announce.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TCPIP\ Stack/DNS.p1: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/TCPIP Stack" 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.p1".d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.p1" 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o"${OBJECTDIR}/TCPIP Stack/DNS.p1" "TCPIP Stack/DNS.c" 
	@-${MV} "${OBJECTDIR}/TCPIP Stack/DNS".d "${OBJECTDIR}/TCPIP Stack/DNS.p1".d 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.p1".d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PingDemo.p1: PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PingDemo.p1.d 
	@${RM} ${OBJECTDIR}/PingDemo.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/PingDemo.p1 PingDemo.c 
	@-${MV} ${OBJECTDIR}/PingDemo.d ${OBJECTDIR}/PingDemo.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PingDemo.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPServer.p1: GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPServer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/GenericTCPServer.p1 GenericTCPServer.c 
	@-${MV} ${OBJECTDIR}/GenericTCPServer.d ${OBJECTDIR}/GenericTCPServer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPServer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GenericTCPClient.p1: GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GenericTCPClient.p1.d 
	@${RM} ${OBJECTDIR}/GenericTCPClient.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/GenericTCPClient.p1 GenericTCPClient.c 
	@-${MV} ${OBJECTDIR}/GenericTCPClient.d ${OBJECTDIR}/GenericTCPClient.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GenericTCPClient.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_default=$(CND_CONF)  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  --double=32 --float=32 --emi=wordwrite --opt=none --addrqual=ignore -DCFG_INCLUDE_PICDN2_ETH97 -P -N255 -I"Include" -I"." --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pic18_eth_legacy.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
