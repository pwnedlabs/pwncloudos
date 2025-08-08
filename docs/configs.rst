Shell Configuration Files
=========================

All user and root shell profiles used in **PWNCLOUDOS** are available for download and customization. These profiles provide cloud-centric CLI enhancements, prompt themes, aliases, and plugin integration.

**Directory:** ``docs/configs/shell/``  
**GitHub:** https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/shell

.. contents::
   :local:
   :depth: 2

ZSH Configuration (Linux Shell)
-------------------------------

**Files:** ``.zshrc``  
**Paths:**  
- ``docs/configs/shell/zsh/user/.zshrc``  
- ``docs/configs/shell/zsh/root/.zshrc``

Features
~~~~~~~~

- Starship prompt integration with custom theme  
- Kali-style cloud prompt  
- History optimization for shared and persistent history  
- Plugins:  
  - ``zsh-autosuggestions``  
  - ``zsh-syntax-highlighting``  
- Useful aliases and path enhancements

How to Apply
~~~~~~~~~~~~

.. code-block:: bash

   # Normal user
   cp docs/configs/shell/zsh/user/.zshrc ~/.zshrc

   # Root user
   sudo cp docs/configs/shell/zsh/root/.zshrc /root/.zshrc

PowerShell Profile Configuration (Linux or Windows Terminal)
-------------------------------------------------------------

Two profile configurations are included for normal user and root.

User Profile
~~~~~~~~~~~~

**Path:** ``docs/configs/shell/powershell/user/Microsoft.PowerShell_profile.ps1``

Features
~~~~~~~~

- Colored multi-line prompt styled similarly to ZSH  
- Virtual environment detection (``$VIRTUAL_ENV``)  
- Enhanced directory formatting and color-coded output  
- Aliases: ``ll``, ``la``, ``l``, ``reload``  
- History expansion and 24-bit RGB ANSI color support

Root Profile
~~~~~~~~~~~~

**Path:** ``docs/configs/shell/powershell/root/Microsoft.PowerShell_profile.ps1``

Features
~~~~~~~~

- Same prompt structure as user profile  
- Red-tinted visuals for clear privilege separation  
- Safe aliases and history formatting  
- UTF-8 terminal support

How to Apply PowerShell Profiles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

On Linux:

.. code-block:: bash

   # User profile
   mkdir -p ~/.config/powershell
   cp docs/configs/shell/powershell/user/Microsoft.PowerShell_profile.ps1 ~/.config/powershell/

   # Root profile
   sudo mkdir -p /root/.config/powershell
   sudo cp docs/configs/shell/powershell/root/Microsoft.PowerShell_profile.ps1 /root/.config/powershell/

On Windows (PowerShell):

.. code-block:: powershell

   # User profile (creates profile if not exists)
   if (!(Test-Path -Path $PROFILE)) {
       New-Item -ItemType File -Path $PROFILE -Force
   }
   Copy-Item docs/configs/shell/powershell/user/Microsoft.PowerShell_profile.ps1 $PROFILE

.. note::

   For root or Administrator profile on Windows, run PowerShell as Administrator and use the corresponding profile path stored in ``$PROFILE``.

Optional: Verify Profile Load
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add this line at the end of each profile to verify it loads on shell start:

.. code-block:: powershell

   Write-Host "✅ PowerShell profile loaded for $env:USERNAME" -ForegroundColor Cyan

Or for ZSH:

.. code-block:: zsh

   echo "✅ ZSH profile loaded for $USER"
