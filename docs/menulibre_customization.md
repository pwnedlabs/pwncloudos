# MenuLibre Profile Pack

The PWNCLOUDOS MenuLibre Profile Pack contains all custom `.desktop` launchers and category `.directory` files used in PWNCLOUDOS. This allows you to replicate the exact MenuLibre menu customizations, including all tools and categories.

---

## Included in the Pack

- Custom application launchers (`menulibre-*.desktop` files)
- Application categories (`menulibre-*.directory` files)

> **Download the MenuLibre Profile Pack:**  
> [pwncloudos-menulibre-profile-pack.tar.gz](https://github.com/pwnedlabs/pwncloudos/raw/main/docs/configs/menulibre/pwncloudos-menulibre-profile-pack.tar.gz)

---

## Files Included in the MenuLibre Profile Pack

| Category                  | File Location                                            | Purpose                            |
|---------------------------|----------------------------------------------------------|----------------------------------|
| Application categories    | `~/.local/share/desktop-directories/menulibre-*.directory` | Defines menu categories in MenuLibre |
| Custom launchers          | `~/.local/share/applications/menulibre-*.desktop`         | Custom `.desktop` app launchers  |

---

## How to Apply the MenuLibre Profile Pack

1. Download and extract the profile pack:

    ```bash
    wget https://github.com/pwnedlabs/pwncloudos/raw/main/docs/configs/menulibre/pwncloudos-menulibre-profile-pack.tar.gz -O pwncloudos-menulibre-profile-pack.tar.gz
    tar -xzvf pwncloudos-menulibre-profile-pack.tar.gz -C ~/
    ```

2. Copy the category files to your local desktop directories folder:

    ```bash
    mkdir -p ~/.local/share/desktop-directories/
    cp menulibre-*.directory ~/.local/share/desktop-directories/
    ```

3. Copy the custom launchers to your local applications folder:

    ```bash
    mkdir -p ~/.local/share/applications/
    cp menulibre-*.desktop ~/.local/share/applications/
    ```

4. Restart your desktop environment or run `update-desktop-database` to apply changes:

    ```bash
    update-desktop-database ~/.local/share/applications/
    ```

---

## Reference

For more details, see the official MenuLibre and XDG desktop entry specifications:  
- [MenuLibre Project](https://menulibre.org/)  
- [XDG Desktop Entry Specification](https://specifications.freedesktop.org/menu-spec/latest/)

---

Feel free to modify this profile pack! If you have improvements or new launchers to add, please create a pull request or open an issue to suggest changes.
