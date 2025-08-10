# XFCE4 Profile Pack

The PWNCLOUDOS XFCE4 Profile Pack contains **everything you need** to replicate the exact desktop environment, panel layout, themes, shortcuts, and custom menu entries used in PWNCLOUDOS.

## Included in the Pack

- XFCE4 Panel Profile (`pwncloudos-xfce4-profile-pack.tar.gz`)
- Keyboard shortcuts (`xfce4-keyboard-shortcuts.xml`)
- Appearance settings (`xsettings.xml`)
- Window manager preferences (`xfwm4.xml`)
- Desktop settings (`xfce4-desktop.xml`)
- All custom MenuLibre `.desktop` launchers for PWNCLOUDOS tools

> **Download PWNCLOUDOS XFCE4 Profile Pack:**  
> [https://github.com/pwnedlabs/pwncloudos/raw/main/docs/configs/xfce4/pwncloudos-xfce4-profile-pack.tar.gz](https://github.com/pwnedlabs/pwncloudos/raw/main/docs/configs/xfce4/pwncloudos-xfce4-profile-pack.tar.gz)

## Files Included in the XFCE4 Profile Pack

| Category                  | File Location                                                     | Purpose                             |
| ------------------------- | ---------------------------------------------------------------- | --------------------------------- |
| Panel Layout              | `pwncloudos-xfce4-profile-pack.tar.gz` (exported with `xfce4-panel-profiles save`) | Full XFCE panel layout & app launchers |
| Keyboard Shortcuts        | `~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml` | All key mappings                  |
| Appearance Settings       | `~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml`       | Theme, icon, font                 |
| Window Manager Settings   | `~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml`           | Window decorations, behavior      |
| Desktop Settings          | `~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml`   | Wallpapers, desktop icons         |
| MenuLibre Custom Menu     | `~/.local/share/applications/`                                   | All custom `.desktop` tool launchers |

## How to Apply

1. Extract the pack:

    ```bash
    tar -xzvf pwncloudos-xfce4-profile-pack.tar.gz -C ~/
    ```

2. Apply the panel profile:

    ```bash
    sudo apt install xfce4-panel-profiles
    xfce4-panel-profiles load pwncloudos-xfce4-profile-pack.tar.gz
    ```

3. Copy XFCE4 settings:

    ```bash
    mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    cp xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    cp xsettings.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    cp xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    cp xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
    ```

4. Install custom launchers:

    ```bash
    mkdir -p ~/.local/share/applications/
    cp -r custom-launchers/* ~/.local/share/applications/
    ```

## Command Line Usage of xfce4-panel-profiles

Panel profiles provide two command line options that allow you to load and activate a panel profile or save the current configuration.

```bash
xfce4-panel-profiles <load|save> <file>
```

## Reference

For more details, see the official docs:  
[XFCE4 Panel Profiles Documentation](https://docs.xfce.org/apps/xfce4-panel-profiles/start)