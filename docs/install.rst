Installing
==========

You can run PWNCLOUDOS using your preferred hypervisor or virtual machine platform.

System Requirements
-------------------

- Minimum 6 GB RAM
- At least 20 GB disk space
- Internet connection for updates and tool syncing

System Compatibility and Downloads
----------------------------------

- **PWNCLOUDOS (AMD64):**  
  Compatible with VirtualBox and VMware Workstation on Intel/AMD platforms.  
  Download: `Windows AMD64 Image <https://pwnedlabs.io/pwncloudos#downloads>`_

- **PWNCLOUDOS (ARM64):**  
  Compatible only with VMware Workstation on Apple Silicon (M-Series).  
  Download: `Apple M1/M2 ARM64 Image <https://pwnedlabs.io/pwncloudos#downloads>`_



Video Walkthroughs
------------------

Prefer video instructions? Here are two excellent community walkthroughs for installing PWNCLOUDOS:

- `How to Install PWNCLOUDOS (HackSmarter by Tyler Ramsbey) <https://www.youtube.com/watch?v=sA70BNN3yf4&ab_channel=TylerRamsbey-HackSmarter>`_

- `Install PWNCLOUDOS in VMware (Hamada Security) <https://www.youtube.com/watch?v=jlQyxZXFuyM&ab_channel=HamadaSecurity>`_

Importing the Image
===================


On Windows (AMD64):

1. Download the `.ova` or `.vmdk` file
2. Open VMware or VirtualBox
3. Import the image
4. Start the virtual machine

On macOS (ARM64/Apple Silicon):

1. Use VMware Workstation
2. Import the ARM64 image
3. Allocate resources (6+ GB RAM recommended)
4. Boot into PWNCLOUDOS

Networking Tips
---------------

- For internet access, ensure your VM network is set to **NAT** or **Bridged**

- Why am I seeing a blank, black screen on load?
  
  - If you're using **Oracle VirtualBox**, make sure the **Graphics Controller** is set to **VMSVGA**. Otherwise, you may experience a blank/black screen when booting PWNCLOUDOS.
