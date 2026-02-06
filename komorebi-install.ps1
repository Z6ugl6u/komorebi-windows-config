
---

## `komorebi.ps1` (installation + setup)

Script **idempotent**, clair, sans magie.

```powershell
Write-Host "[+] Installing komorebi configuration..."

$CONFIG_DIR = "$env:USERPROFILE\.config"
$KOMOREBI_DIR = "$CONFIG_DIR\komorebi"
$WHKD_DIR = "$CONFIG_DIR"

# Create directories
New-Item -ItemType Directory -Force -Path $KOMOREBI_DIR | Out-Null
New-Item -ItemType Directory -Force -Path "$CONFIG_DIR" | Out-Null

# Copy files
Copy-Item ".\komorebi.json" "$KOMOREBI_DIR\komorebi.json" -Force
Copy-Item ".\komorebi-bar.json" "$KOMOREBI_DIR\komorebi-bar.json" -Force
Copy-Item ".\.config\whkdrc" "$WHKD_DIR\whkdrc" -Force

Write-Host "[+] Files installed"

# Restart services
Write-Host "[+] Restarting komorebi & whkd"

Get-Process komorebi -ErrorAction SilentlyContinue | Stop-Process -Force
Get-Process whkd -ErrorAction SilentlyContinue | Stop-Process -Force

Start-Process komorebi
Start-Process whkd -WindowStyle Hidden

Write-Host "[✓] Done"
