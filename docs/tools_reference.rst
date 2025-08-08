Tools and Packages Overview
============================

PWNCLOUDOS is a Debian-based XFCE4 Linux distribution tailored for red, blue, and purple team operations in multi-cloud environments. All tools are organized under the `/opt/` directory by category for easier discoverability, maintenance, and contribution.

AWS Tools (/opt/aws_tools/)
----------------------------

These tools assist in auditing, enumerating, and attacking AWS environments:

- `AWeSomeUserFinder <https://github.com/dievus/AWeSomeUserFinder>`_
- `aws_enumerator <https://github.com/NotSoSecure/aws_enum>`_
- `github-oidc-checker <https://github.com/harshbothra/github-oidc-checker>`_
- `IAMGraph <https://github.com/nccgroup/IAMGraph>`_
- `pacu <https://github.com/RhinoSecurityLabs/pacu>`_
- `pmapper <https://github.com/nccgroup/PMapper>`_
- `s3_account_search <https://github.com/initstring/s3-account-search>`_

Azure Tools (/opt/azure_tools/)
-------------------------------

These tools focus on Azure infrastructure enumeration, credential abuse, and exploitation:

- `AzSubEnum <https://github.com/NetSPI/AzSubEnum>`_
- `azure_hound <https://github.com/BloodHoundAD/AzureHound>`_
- `basicblobfinder <https://github.com/initstring/basicblobfinder>`_
- `bloodhound <https://github.com/BloodHoundAD/BloodHound>`_
- `exfil_exchange_mail <https://github.com/nyxgeek/exfil_exchange_mail>`_
- `o365enum <https://github.com/nyxgeek/o365enum>`_
- `o365spray <https://github.com/0xZDH/o365spray>`_
- `Oh365UserFinder <https://github.com/dievus/Oh365UserFinder>`_
- `Omnispray <https://github.com/mhaskar/OmniSpray>`_
- `roadrecon <https://github.com/dirkjanm/ROADtools>`_
- `seamlesspass <https://github.com/BishopFox/seamlesspass>`_

GCP Tools (/opt/gcp_tools/)
---------------------------

Cloud security and misconfiguration assessment tools for GCP:

- `automated-cloud-misconfiguration-testing <https://github.com/pwnedlabs/automated-cloud-misconfiguration-testing>`_
- `gcp-permissions-checker <https://github.com/egre55/gcp-permissions-checker>`_
- `gcp_scanner <https://github.com/google/gcp_scanner>`_
- `google-workspace-enum <https://github.com/pwnedlabs/google-workspace-enum>`_
- `iam-policy-visualize <https://github.com/hac01/iam-policy-visualize>`_
- `sprayshark <https://github.com/helviojunior/sprayshark>`_
- `username-anarchy <https://github.com/urbanadventurer/username-anarchy>`_

Multi-Cloud Tools (/opt/multi_cloud_tools/)
-------------------------------------------

Tools that support AWS, Azure, and GCP in a unified manner:

- `cloudfox <https://github.com/BishopFox/cloudfox>`_
- `powerpipe <https://github.com/Azure/powerpipe>`_
- `prowler <https://github.com/prowler-cloud/prowler>`_
- `s3scanner <https://github.com/sa7mon/S3Scanner>`_
- `scoutsuite <https://github.com/nccgroup/ScoutSuite>`_
- `steampipe <https://github.com/turbot/steampipe>`_

PowerShell Tools (/opt/ps_tools/)
---------------------------------

Advanced post-exploitation and cloud access tooling for Windows environments:

- `AADInternals <https://github.com/Gerenios/AADInternals>`_
- `GraphRunner <https://github.com/samratashok/GraphRunner>`_
- `invoke_modules <https://github.com/PowerShellMafia/PowerSploit/tree/master/Recon>`_
- `MFASweep <https://github.com/dafthack/MFASweep>`_
- `TokenTacticsV2 <https://github.com/mvelazc0/TokenTactics>`_

Code Scanning Tools (/opt/code_scanning/)
-----------------------------------------

Tools for static secrets detection and credential scanning in source code:

- `git-secrets <https://github.com/awslabs/git-secrets>`_
- `trufflehog <https://github.com/trufflesecurity/trufflehog>`_

Cracking Tools (/opt/cracking-tools/)
-------------------------------------

Used for password hash cracking and password recovery:

- `John the Ripper <https://github.com/openwall/john>`_
- `Hashcat <https://github.com/hashcat/hashcat>`_

Other Tools
-----------

- **Terminal environments**: Zsh, PowerShell
- **Browsers**: Chromium, Firefox
- **Screenshot**: `Flameshot <https://flameshot.org/>`_
- **Web Proxy**: 
    - `CAIDO <https://caido.io/>`__
    - `BurpSuite Community <https://portswigger.net/burp/releases#community>`__
- **Fuzzing**: `ffuf <https://github.com/ffuf/ffuf>`_
- **Cloud SDKs**:
    - `AWS CLI <https://docs.aws.amazon.com/cli/>`_
    - `Azure CLI <https://learn.microsoft.com/en-us/cli/azure/install-azure-cli>`_

Python Tools Installed via pipx
-------------------------------

Installed into isolated environments and exposed via PATH:

- azure-cli 2.65.0
- iamgraph 0.1.0
- `impacket` 0.12.0 — `GitHub <https://github.com/fortra/impacket>`_
- pacu 1.6.0
- principalmapper (pmapper) 1.1.5
- prowler 5.0.5
- roadtools 0.0.1
- s3-account-search 0.2.1
- scoutsuite 5.14.0
- seamlesspass 0.0.1
- trufflehog 2.2.1

Desktop Environment and Theme
-------------------------------

PWNCLOUDOS provides a modern and user-friendly graphical interface built on **XFCE**, customized with stylish fonts, icons, and dark themes to enhance usability for cloud professionals.

**Current UI Stack:**

- **Desktop Environment:** XFCE 4.18.1
- **GTK Theme:** Fluent-pink-Dark  
  🔗 https://github.com/vinceliuice/Fluent-gtk-theme
- **Icon Theme:** Fluent-pink-dark  
  🔗 https://github.com/vinceliuice/Fluent-icon-theme
- **Cursor Theme:** Default system cursor
- **Font:** JetBrainsMono Nerd Font 10  
  🔗 https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip

**Base OS:** Debian 12 (Bookworm)  
🔗 https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/

The environment is optimized for terminal-first workflows, with floating window management, hotkey accessibility, and a minimal resource footprint.


Contribute
----------

Want to improve or extend PWNCLOUDOS? Start by reviewing the tooling here and submitting improvements or suggestions via `GitHub Issues <https://github.com/pwnedlabs/pwncloudos/issues>`_ or join our Discord community.