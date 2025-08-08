Assets: Background and Icons
=============================

PWNCLOUDOS includes pre-installed visual assets used across the desktop, login screen, boot splash, and cloud tooling UI. These assets are organized in the following directories inside the OS.

Asset Directory Structure
-------------------------

All image and icon assets in PWNCLOUDOS are located under:


/usr/share/pwncloudos/


Full structure:

::

    /usr/share/pwncloudos/
    ├── backgrounds/
    │   ├── gradient-cloud.png
    │   ├── PwnCloudOS-Bg-4k.png
    │   ├── PwnCloudOS-bootup.png
    │   └── PwnCloudOS-loginBg-2k.png
    └── icons/
        ├── AWS-PwnCloudOS.png
        ├── Azure-PwnCloudOS.png
        ├── BloodHound-PwnCloudOS.png
        ├── Cloudfox-PwnCloudOS.png
        ├── PwnCloudOS-icon.png
        └── Terminal-PwnCloudOS.png

Customizing Assets
------------------

To replace or add your own:

1. Copy your image to the appropriate folder (as root or with `sudo`)
2. Set correct permissions:
   ```
   sudo chmod 644 /usr/share/pwncloudos/backgrounds/your-image.png
   sudo chown root:root /usr/share/pwncloudos/backgrounds/your-image.png
   ```

For desktop backgrounds, use XFCE Settings → Background.

Available Assets for Download
-----------------------------

You can also download or clone these assets directly from the GitHub repository:

- **Background Images**: `docs/_static/backgrounds/ <https://github.com/yourusername/pwncloudos/tree/main/docs/_static/backgrounds>`__
- **Icons**: `docs/_static/icons/ <https://github.com/yourusername/pwncloudos/tree/main/docs/_static/icons>`__

Support
-------

Need help customizing assets or seeing them applied?

Join the community:  
☁️ `Join our Discord <https://discord.gg/mPfCrnZdXR>`_
