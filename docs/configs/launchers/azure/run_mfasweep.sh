#!/bin/bash
cd /opt/ps_tools/invoke_modules/ || exit
pwsh -NoExit -Command './MFASweep_Launcher.ps1'
