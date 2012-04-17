#!/bin/sh

TARGETDIR=legodoc
mkdir -p $TARGETDIR && cd $TARGETDIR || exit 1

# Bluetooth Developer Kit
# "Documents the communications protocols to the intelligent NXT brick,
# enabling you to create applications for various Bluetooth devices to
# communicate with MINDSTORMS NXT robots."
BDK='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/downloadFF7F8010EB6D176857CB6CBF82A8B567/BDK_Download1.zip'
wget $BDK

# Hardware Developer Kit
# "Includes documentation and schematics for the NXT and related sensors. The
# documentation enables you to design and develop your own sensors and
# actuators that can interact with and control the NXT through the various
# digital and analog interfaces."
HDK='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download8CFD37F17F7EFCDC412AE7CEBF245C6A/HDK_Download1.zip'
wget $HDK

# Software Developer Kit
# "Includes the NXT driver interface specification and necessary tools for
# creating third-party programming environments. This download includes
# documentation for interfacing with the MINDSTORMS NXT driver 
# on the PC or Mac."
SDK='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download3EF7DAF692C8F66CF4D53ED650CBB206/SDK_Download1.zip'
wget $SDK

# Software Developer Kit Documentation
# "Includes the NXT driver interface specification and necessary tools for
# creating third-party programming environments. This download includes
# documentation for the executable file format on the NXT. This document also
# describes how the NXT firmware's virtual machine (VM) executes the files."
SDKDOC='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download49E7B34DE74049D6BC872D3A0FB2A1F6/SDKdoc_Download1.pdf'
wget $SDKDOC

# Mobile Application Software
# "Control the NXT from the palm of your hand! Remote control your NXT robot
# like a true LEGO Racer! Control your own custom programs or have your NXT
# take pictures using your mobile phone. The choice is yours with The NXT
# Mobile Application."
#
# Disclaimer:
# This software is provided as-is without any warranty of any kind. The entire
# risk arising out of the use or performance of the software remains with you.
# Availability and supported features will depend on your phone make and model.
#
# Download the NXT Mobile Application Software and follow the instructions
# included in the download. A detailed compatability matrix is also included
# specifying the exact features supported by your phone.
MAS='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download1DC29FB3AF957254A13D998D196FCCFA/NXTMobileApplicationSoftware_Download1.zip'
wget $MAS

# Mobile Application Documentation
# Download the documentation for the NXT Mobile Application for detailed
# instructions, advanced usage, tips and tricks.
MAD='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download7D1C100F75942A4E3AFC509BDF39B2BF/MoblieApplicationDocumentation_Download1.zip'
wget $MAD

# Open Source Firmware
# You can now start developing your own LEGO MINDSTORMS NXT firmware version.
# By accepting the LEGO Open Source License Agreement, you will be able to
# look over the shoulders of our firmware developers. This will enable you to
# change the functionality from the very lowest hardware abstraction level to
# the user interaction level within the LEGO MINDSTORMS NXT. The Open Source
# files include all the source files needed for the ARM7 ATMEL microcontroller
# and the 8-bit AVR ATMEL.
LICENSE='http://cache.lego.com/upload/contentTemplating/MindstormsBroc/otherfiles/2057/download0013CFCA77C53EBB38037751846E53D0.txt'
OSF='http://cache.lego.com/Media/Download/Mindstorms2SupportFilesDownloads/otherfiles/download88BC504D356D3DD966A6F4D07F8DA6D5/OpenSourceFirmware_Download1.zip'
wget $LICENSE
wget $OSF

LICENSE_RENAME=OSF_License.txt
mv download0013CFCA77C53EBB38037751846E53D0.txt $LICENSE_RENAME
less $LICENSE_RENAME

echo ">>>"
echo ">>> BE SURE TO READ AND AGREE TO THE LEGO OPEN SOURCE FIRMWARE LICENSE AGREEMENT ($LICENSE_RENAME)"
echo ">>>"
