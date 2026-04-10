# PWNCLOUDOS ☁️

PWNCLOUDOS is a multi-cloud security Linux distribution for hackers and defenders. Built for red, blue, and purple team operations across AWS, Azure & Microsoft 365, and GCP & Google Workspace.

It comes pre-loaded with cloud exploitation tools, auditing frameworks, and security testing utilities, all in a lightweight and highly customizable XFCE4 desktop environment.

🌐 [pwncloudos.pwnedlabs.io](https://pwnedlabs.io/pwncloudos)

[![GitHub repo size](https://img.shields.io/github/repo-size/pwnedlabs/pwncloudos)](https://github.com/pwnedlabs/pwncloudos)  
[![GitHub issues](https://img.shields.io/github/issues/pwnedlabs/pwncloudos)](https://github.com/pwnedlabs/pwncloudos/issues)  
[![GitHub stars](https://img.shields.io/github/stars/pwnedlabs/pwncloudos)](https://github.com/pwnedlabs/pwncloudos/stargazers)  
[![GitHub license](https://img.shields.io/github/license/pwnedlabs/pwncloudos)](https://github.com/pwnedlabs/pwncloudos/LICENSE)

![PWNCLOUDOS Login Screen](https://github.com/user-attachments/assets/eaf78b9b-f337-4cd9-a194-731ba099f09d)

---

## 🔥 Key Features

- ✅ Pre-installed tools for **AWS**, **Azure** & **Microsoft 365**, **GCP** & **Google Workspace**
- ✅ ZSH + PowerShell with custom cloud-themed prompts
- ✅ Custom XFCE4, Menulibre config and launchers
- ✅ Downloadable configs for `.zshrc`, PowerShell, XFCE
- ✅ Community-driven and open-source
- ✅ Two builds: **AMD64** (Intel/Windows) and **ARM64** (Apple Silicon)

---

## 💻 Downloads

| Version | Architecture | Format | Supported Platforms | Link |
|---------|--------------|--------|---------------------|------|
| `v1.2` | AMD64 | `.ova` | VMware Workstation, VirtualBox, Proxmox | [Download VM Image](https://download.pwncloudos.pwnedlabs.io/images/pwncloudos-amd64.ova) |
| `v1.2` | AMD64 | `.iso` | Bare Metal, Any Hypervisor | [Download ISO Image](https://download.pwncloudos.pwnedlabs.io/images/pwncloudos-amd64.iso) |
| `v1.2` | ARM64 | `.vmwarevm` | VMware Fusion (Apple Silicon) | [Download VM Image](https://download.pwncloudos.pwnedlabs.io/images/pwncloudos-arm64.zip) |

> 💡 **Hyper-V users:** Use [VMCreate](https://github.com/moerketh/VMCreate) to import PWNCLOUDOS on Windows Hyper-V.

---

## 🛠️ Tools Included

Includes popular pentesting and cloud auditing frameworks and utilities, organized under:

- `/opt/aws_tools/`
- `/opt/azure_tools/`
- `/opt/gcp_tools/`
- `/opt/multi_cloud_tools/`
- `/opt/ps_tools/`
- `/opt/code_scanning/`
- `/opt/cracking-tools/`

> See full list → [ReadTheDocs: Tools Reference](https://pwncloudos.readthedocs.io/en/latest/tools_reference.html)

---

## 🔗 Related Projects

| Project | Description |
|---------|-------------|
| [pwncloudos-sync](https://github.com/pwnedlabs/pwncloudos-sync) | Sync tool to keep your PWNCLOUDOS tooling up to date |
| [VMCreate](https://github.com/moerketh/VMCreate) | Hyper-V VM creation utility for importing PWNCLOUDOS on Windows |

---

## 📂 Configuration Files

All shell and system configs used in PWNCLOUDOS are version-controlled and reusable:

| Config Type | Folder |
|-------------|--------|
| ZSH & PowerShell | [`docs/configs/shell/`](docs/configs/shell/) |
| XFCE Layouts & Themes | [`docs/configs/xfce/`](docs/configs/xfce/) |
| Custom Launchers | [`docs/configs/launchers/`](docs/configs/launchers/) |

📚 View documentation: [ReadTheDocs Configs](https://pwncloudos.readthedocs.io/en/latest/configs.html)

---

## 📖 Documentation

Full documentation hosted on ReadTheDocs:

📘 [https://pwncloudos.readthedocs.io/](https://pwncloudos.readthedocs.io/)

---

## 💬 Community & Support

- Join the **☁️-pwncloudos** Discord channel: https://discord.gg/pwnedlabs  
- 📬 Email us at: hi@pwnedlabs.io  
- 📝 Submit feedback or report issues: https://forms.gle/QiDdgix24tX1k7di7

---

## 🙋‍♀️ Contribute

We welcome community contributions! You can:

- Submit pull requests with tools, configs, or scripts
- Open issues for bugs or feature requests
- Improve documentation and launcher files

🔧 Start here: [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 👥 Contributors

Thank you to the community who develop and maintain PWNCLOUDOS. We wouldn't be able to do this without you!

**Development Lead:** [Ritesh Gohil](https://www.linkedin.com/in/riteshgohil25)

### Community Contributors

| Name | Contribution |
|------|-------------|
| [Mohd Kashif](https://linkedin.com/in/inventashif) | Provided exceptional help in building the ISO image for PWNCLOUDOS |

---

## 🧠 Credits

Built with ❤️ by the [Pwned Labs](https://pwnedlabs.io) team and open-source contributors.

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).
