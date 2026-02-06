# komorebi-windows-config

Personal **komorebi** configuration for Windows with a clean tiling workflow, Dracula theme, and keyboard-driven navigation via **whkd**.

Opinionated setup. Designed for daily use on a single monitor.

---

## 🎨 Theme & UI

- **Bar theme**: Dracula (Base16)
- **Font**: JetBrains Mono
- **Accent**: Base08
- **Borders**: Enabled
  - Width: `8`
  - Color: Red (focused), Dark red (unfocused)
- **Window hiding**: Cloak

---

## 🖥 Monitor & Workspaces

### Monitor 0

| Workspace | Name | Layout |
|---------|------|--------|
| 1 | I | BSP |
| 2 | II | VerticalStack |
| 3 | III | HorizontalStack |
| 4 | IV | UltrawideVerticalStack |
| 5 | V | Rows |
| 6 | VI | Grid |
| 7 | VII | RightMainVerticalStack |

- Default workspace padding: `20`
- Default container padding: `20`

---

## ⌨ Keybindings (whkd)

- **Focus**: `Alt + Arrow keys`
- **Move windows**: `Alt + Shift + Arrow keys`
- **Resize**: `Alt + +/-`
- **Float toggle**: `Alt + T`
- **Monocle**: `Alt + Shift + F`
- **Workspaces**: `Alt + 1..7`
- **Move to workspace**: `Alt + Shift + 1..7`
- **Reload config**: `Alt + Shift + O`

Shell required: **PowerShell**

---

## 📦 Requirements

- Windows 10 / 11
- [komorebi](https://github.com/LGUG2Z/komorebi)
- [whkd](https://github.com/LGUG2Z/whkd)
- PowerShell
- JetBrains Mono font installed

---

## 🚀 Installation

```powershell
git clone https://github.com/<your-username>/komorebi-windows-config.git
cd komorebi-windows-config
.\komorebi.ps1
