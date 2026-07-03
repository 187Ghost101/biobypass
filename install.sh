#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════════════
# BioBypass Pro v11.0 — Nocturne Cipher
# Universal installer · Kali / Termux / Debian / Ubuntu / macOS
# Author: ghost1o1
# ════════════════════════════════════════════════════════════════════
set -e
APP="biobypass"
APP_NAME="BioBypass Pro v11.0"
INSTALL_DIR="${BIOBYPASS_DIR:-$HOME/$APP}"
BOLD="\033[1m"; RED="\033[0;31m"; CYAN="\033[0;36m"; VIOLET="\033[0;35m"; GREEN="\033[0;32m"; NC="\033[0m"

logo() {
cat << 'EOF'

   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
   █  ╔═╗╦ ╦╔═╗╔╦╗╦ ╦╔═╗╔═╗╔═╗╔═╗╔═╗  █
   █  ╠╣ ║ ║║   ║ ╠═╣║╣ ╠═╣╠═╝║ ║╚═╗  █
   █  ╚  ╚═╝╚═╝ ╩ ╩ ╩╚═╝╩ ╩╩  ╚═╝╚═╝  █
   █  ███████╗██╗  ██╗ ██████╗ ███████╗████████╗  █
   █  ██╔════╝██║  ██║██╔═══██╗██╔════╝╚══██╔══╝  █
   █  ██║     ███████║██║   ██║███████╗   ██║     █
   █  ██║     ██╔══██║██║   ██║╚════██║   ██║     █
   █  ███████╗██║  ██║╚██████╔╝███████║   ██║     █
   █  ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝     █
   █                  v11.0 — NOCTURNE CIPHER              █
   █              "There is no lock." — ghost1o1          █
   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀

EOF
}

detect_os() {
  case "$(uname -s 2>/dev/null)" in
    Linux)
      if [ -f /etc/os-release ]; then . /etc/os-release; echo "$ID"
      elif [ -d /system ]; then echo "termux"
      else echo "linux"; fi ;;
    Darwin) echo "macos" ;;
    *) echo "unknown" ;;
  esac
}

OS=$(detect_os)
echo -e "${VIOLET}${BOLD}→ Detected OS: ${CYAN}$OS${NC}"

mkdir -p "$INSTALL_DIR"
echo -e "${VIOLET}${BOLD}→ Install dir: ${CYAN}$INSTALL_DIR${NC}"

# If we are running from inside the repo, copy the HTML directly
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo .)"

if [ -f "$SCRIPT_DIR/BioBypass-Pro.html" ]; then
  cp "$SCRIPT_DIR/BioBypass-Pro.html" "$INSTALL_DIR/"
  echo -e "${GREEN}✓${NC} Copied BioBypass-Pro.html from repo"
elif [ -f "./BioBypass-Pro.html" ]; then
  cp "./BioBypass-Pro.html" "$INSTALL_DIR/"
  echo -e "${GREEN}✓${NC} Copied BioBypass-Pro.html from current dir"
else
  echo -e "${RED}✗ BioBypass-Pro.html not found in $SCRIPT_DIR or current dir.${NC}"
  echo -e "${VIOLET}→ Run from a directory containing BioBypass-Pro.html${NC}"
  exit 1
fi

# Copy README if present
[ -f "$SCRIPT_DIR/README.md" ] && cp "$SCRIPT_DIR/README.md" "$INSTALL_DIR/"

# Build launcher
cat > "$INSTALL_DIR/launch.sh" << 'LAUNCH'
#!/usr/bin/env bash
# BioBypass Pro launcher
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML="$DIR/BioBypass-Pro.html"

if [ ! -f "$HTML" ]; then
  echo "[-] BioBypass-Pro.html not found in $DIR"
  exit 1
fi

URL="file://$HTML"
echo "[+] Launching BioBypass Pro v11.0 — Nocturne Cipher"
echo "[+] URL: $URL"

# Open with available browser
if command -v xdg-open >/dev/null 2>&1; then xdg-open "$URL" 2>/dev/null &
elif command -v open >/dev/null 2>&1; then open "$URL" 2>/dev/null &
elif command -v termux-open-url >/dev/null 2>&1; then termux-open-url "$URL" 2>/dev/null
elif command -v firefox >/dev/null 2>&1; then firefox "$URL" 2>/dev/null &
elif command -v chromium >/dev/null 2>&1; then chromium "$URL" 2>/dev/null &
elif command -v google-chrome >/dev/null 2>&1; then google-chrome "$URL" 2>/dev/null &
else
  echo "[!] No browser command found. Open this URL manually:"
  echo "    $URL"
fi
LAUNCH
chmod +x "$INSTALL_DIR/launch.sh"
echo -e "${GREEN}✓${NC} Created launcher"

# Optional desktop entry (Linux only, with $HOME in expected location)
if [ "$OS" = "kali" ] || [ "$OS" = "debian" ] || [ "$OS" = "ubuntu" ] || [ "$OS" = "parrot" ] || [ "$OS" = "linux" ]; then
  if [ -d "$HOME/.local/share/applications" ] || mkdir -p "$HOME/.local/share/applications"; then
    cat > "$HOME/.local/share/applications/biobypass.desktop" << EOF
[Desktop Entry]
Type=Application
Name=BioBypass Pro v11.0
Comment=Nocturne Cipher — Biometric & IoT Pentest Reference
Exec=bash $INSTALL_DIR/launch.sh
Icon=utilities-system-monitor
Categories=Security;Education;Development;
Terminal=false
StartupNotify=true
EOF
    [ -x /usr/bin/update-desktop-database ] && update-desktop-database "$HOME/.local/share/applications" 2>/dev/null || true
    echo -e "${GREEN}✓${NC} Desktop entry created"
  fi
fi

# Termux convenience (add to $PREFIX/bin if available)
if [ "$OS" = "termux" ] && [ -n "$PREFIX" ] && [ -d "$PREFIX/bin" ]; then
  ln -sf "$INSTALL_DIR/launch.sh" "$PREFIX/bin/biobypass" 2>/dev/null && \
    echo -e "${GREEN}✓${NC} Added 'biobypass' command (Termux)"
fi

# Summary
echo
echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════════${NC}"
echo -e "${VIOLET}${BOLD}  ✓ $APP_NAME — Installed successfully${NC}"
echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════════${NC}"
echo
echo -e "  ${BOLD}Path:${NC}    $INSTALL_DIR"
echo -e "  ${BOLD}Launch:${NC}  bash $INSTALL_DIR/launch.sh"
echo
if [ "$OS" = "termux" ]; then
  echo -e "  ${BOLD}Command:${NC}  biobypass"
fi
echo -e "  ${BOLD}Quote:${NC}    ${RED}\"There is no lock.\"${NC} ${VIOLET}— ghost1o1${NC}"
echo
