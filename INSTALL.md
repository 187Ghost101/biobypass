# 📥 BioBypass Pro v11.0 — Guide d'installation

> Installation en 3 méthodes · multi-plateforme · zéro dépendance.

## 🎯 Prérequis

| Item | Requis |
|------|--------|
| OS | Kali / Debian / Ubuntu / macOS / Windows / Termux |
| Navigateur | Chrome 90+ / Firefox 88+ / Safari 14+ / Edge 90+ |
| RAM | 50 MB libre |
| Disque | 1 MB |
| Réseau | **Aucun** (100% local) |
| Permissions | utilisateur standard |

## ⚡ Méthode 1 — Quick Start (recommandée)

### 1.1 Téléchargement

```bash
# Via Git (recommandé)
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass

# Ou via tarball
wget https://github.com/187Ghost101/biobypass/archive/refs/tags/v11.0.tar.gz
tar xzf v11.0.tar.gz
cd biobypass-11.0
```

### 1.2 Lancement

```bash
# Linux
xdg-open BioBypass-Pro.html

# macOS
open BioBypass-Pro.html

# Windows
start BioBypass-Pro.html

# Termux
termux-open BioBypass-Pro.html
```

✅ **C'est tout.** Le fichier est 100% standalone.

## 🔧 Méthode 2 — Script auto

```bash
chmod +x install.sh
./install.sh
```

Le script :
1. Vérifie Python 3 (pour le serveur optionnel)
2. Copie les fichiers vers `~/biobypass/`
3. Crée un raccourci bureau (Linux/macOS)
4. Démarre un serveur HTTP local optionnel

## 🌐 Méthode 3 — Serveur HTTP local

Si tu veux servir BioBypass sur ton LAN (pour accès cell/remote) :

```bash
# Python 3
python3 -m http.server 8080 --directory .

# Node.js
npx http-server -p 8080

# PHP
php -S 0.0.0.0:8080
```

Puis ouvre : `http://localhost:8080/BioBypass-Pro.html`

## 🐧 Kali Linux spécifique

```bash
# 1. Installer git si besoin
sudo apt update && sudo apt install -y git

# 2. Clone
cd ~
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass

# 3. Ouvrir dans Firefox
firefox BioBypass-Pro.html &

# 4. (Optionnel) Tunnel pour accès externe
ngrok http 8080
# OU
bore local 8080 --to bore.pub
```

## 📱 Termux (Android)

```bash
# 1. Installer Termux depuis F-Droid (pas Play Store)
# 2. Setup
pkg update && pkg upgrade
pkg install git python

# 3. Clone
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass

# 4. Lancer
termux-open BioBypass-Pro.html
```

## 🪟 Windows

```powershell
# PowerShell
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
start BioBypass-Pro.html
```

Ou double-clique simplement sur `BioBypass-Pro.html` depuis l'Explorateur.

## 🍎 macOS

```bash
# Via Homebrew
brew install git
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
open BioBypass-Pro.html
```

## ✅ Vérification installation

Après installation, vérifie :

```bash
ls -la BioBypass-Pro.html
# Taille attendue : ~88 000 bytes
file BioBypass-Pro.html
# Type attendu : HTML document, UTF-8 Unicode text
```

Dans le navigateur :
1. Tu dois voir le **watermark GHOST1O1** en arrière-plan
2. Le **topbar** affiche `BIOBYPASS PRO · v11.0 · NOCTURNE`
3. La palette est **violet/cyan/magenta** sur fond noir

## 🆘 Troubleshooting

### Le fichier ne s'ouvre pas
```bash
# Vérifier le hash MD5
md5sum BioBypass-Pro.html
# Ou SHA256
sha256sum BioBypass-Pro.html
```

### Le navigateur affiche page blanche
- Vérifie console (F12) — cherche erreurs rouges
- Teste un autre navigateur (Chrome de préférence)
- Désactive extensions (adblock peut bloquer)

### Police floue ou mal rendue
- Le fichier n'a **aucune police externe** — utilise celle du système
- Si le terminal est exotique, force : `font-family: monospace`

## 🔄 Mise à jour

```bash
cd biobypass
git pull origin main
```

Ou re-télécharge le tarball v11.0 depuis la page releases.

---

**Prêt ?** → [USAGE.md](USAGE.md) pour le guide d'utilisation.

🏴‍☠️ **ghost1o1** — *"There is no lock."*
