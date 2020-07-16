@ECHO OFF
COLOR f0
Title Utility Kit by Jaxparrow
echo Extracting files. Not Installing.
echo This is a One-the-go toolkit.
echo No Installation required
echo .
echo Will be deleted after Closing
tar -xf Soft.zip
echo Completed
:main
cls
mode con: cols=50 lines=30
COLOR f0
echo ++++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                                +
echo +        Utility Kit by Jaxparrow                +
echo +                                                +
echo +                                                +
echo +               -:Partition:-                    +
echo +                                                +
echo +  [1] Partition Wizard                          +
echo +  [2] DM Resizer                                +
echo +                                                +
echo +               -:BOOT/BCD:-                     +
echo +                                                +
echo +  [3] Easy BCD                                  +
echo +  [4] BOOTICE                                   +
echo +                                                +
echo +               -:FLASHING:-                     +
echo +                                                +
echo +  [5] Rufus                                     +
echo +  [6] Android x86 Installer (NTFS)              +
echo +  [7] UNetBootin ( Linux Flasher )              +
echo +                                                +
echo +                -:info:-                        +
echo +                                                +
echo +            [a]About [x]Exit                    +
echo +                                                +
echo ++++++++++++++++++++++++++++++++++++++++++++++++++
set /p input=Enter Your Choice:
if %input% ==1 goto :PW
if %input% ==2 goto :DMR
if %input% ==3 goto :EasyBCD
if %input% ==4 goto :BOOTICE
if %input% ==5 goto :Rufus
if %input% ==6 goto :Android
if %input% ==7 goto :Unet
if %input% ==a goto :About
if %input% ==x goto :Exit
if %input% ==m goto :Manual
goto :invalid

:PW
echo Opening Partition Wizard
start PT\partitionwizard.exe
pause
goto :main
:DMR
echo Opening Resizer
start Rezizer\dm.resizer.exe
pause
goto :main
:EasyBCD
echo Opening EasyBCD
start EasyBCD\EASYBCD.exe
pause
goto :main

:BOOTICE
echo Opening BOOTICE
start BOOTICE.exe
pause
goto :main
:Rufus
echo Opening Rufus
start Rufus\rufus.exe
pause
goto :main
:Android
echo Opening Android x86 Installer
start Android.exe
pause
goto :main
:Unet
echo Opening UNetBootin
start unetbootin.exe
pause
goto :main
:About
cls
echo This Softwares are not created by me.
echo I only packed this things and made
echo this as an App for Begineers. The
echo credits goes to the Original devs
echo of this apps/software. These are
echo Portable Version of the Softwares.
pause
goto :main

:Exit
echo Deleting Files before exit
RD /S /Q EasyBCD PT Rezizer Rufus
del Android.exe BOOTICE.exe unetbootin.exe
del Soft.zip
exit

:Manual
echo Coming Soon
pause
goto :main
:invalid
echo Invalid Option
pause
goto :main