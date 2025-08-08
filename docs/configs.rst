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

Tool Launcher Scripts
=====================

PWNCLOUDOS includes **custom launcher scripts** for each tool, allowing them to be executed directly from the XFCE menu or terminal. These launchers provide helpful descriptions, examples, and flags for common use cases.

All launcher files are located in:

**Directory:** ``docs/configs/launchers/``  
**In PWNCLOUDOS system:** ``/opt/<tool-category>/<tool-name>/<tool>_launcher.sh``

---

Launcher Categories
-------------------

Each launcher is grouped by its respective cloud or tool domain:

- **AWS Tools:**  
  📂 ``docs/configs/launchers/aws/``  
  🔗 [View on GitHub](https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers/aws)

- **Azure Tools:**  
  📂 ``docs/configs/launchers/azure/``  
  🔗 [View on GitHub](https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers/azure)

- **GCP Tools:**  
  📂 ``docs/configs/launchers/gcp/``  
  🔗 [View on GitHub](https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers/gcp)

- **Multi-Cloud Tools:**  
  📂 ``docs/configs/launchers/multi_cloud/``  
  🔗 [View on GitHub](https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers/multi_cloud)

- **Code Scanning Tools:**  
  📂 ``docs/configs/launchers/code_scanning/``  
  🔗 [View on GitHub](https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers/code_scanning)

---

Example: AWeSomeUserFinder
--------------------------

**Tool path:** ``/opt/aws_tools/AWeSomeUserFinder/awesome_userfinder_launcher.sh``  
**Docs path:** ``docs/configs/launchers/aws/awesome_userfinder_launcher.sh``

📥 [Download Launcher](https://github.com/pwnedlabs/pwncloudos/raw/main/docs/configs/launchers/aws/awesome_userfinder_launcher.sh)

.. code-block:: bash

   #!/bin/zsh
   echo -e "\nAWeSomeUserFinder Tool"
   echo -e "Usage example:"
   echo -e "> python3 AWeSomeUserFinder.py -f -ak <accesskey> -sk <secretkey> ..."

This launcher provides an overview, usage examples, and links to documentation when launched via the XFCE app menu.

---

How to Use or Create a Launcher
-------------------------------

1. **Write a bash/zsh launcher script** that:
   - Prints a description, usage, examples, and references.
   - Runs the main tool if desired.

2. **Place it in the appropriate tool directory:**
   - For Example: /opt/aws_tools/<tool>/<tool>_launcher.sh


---

💡 Pro Tip:
You can explore and download all launchers from this GitHub directory:  
🔗 https://github.com/pwnedlabs/pwncloudos/tree/main/docs/configs/launchers
