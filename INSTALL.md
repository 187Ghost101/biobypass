# 🔧 BioBypass Pro — Guide d'installation

---

## 🐧 Kali / Debian / Ubuntu

```bash
sudo apt update && sudo apt install -y python3 python3-pip git ffmpeg
cd ~
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
pip3 install -r requirements.txt
python3 main.py --list-vectors
```

## 🏔️ Arch / Manjaro

```bash
sudo pacman -S python python-pip git ffmpeg
cd ~
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
pip3 install -r requirements.txt
```

## 🍎 macOS

```bash
brew install python3 git ffmpeg
cd ~
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
pip3 install -r requirements.txt
```

## 🪟 Windows (WSL2)

```powershell
wsl --install -d Ubuntu
```
```bash
sudo apt update && sudo apt install -y python3 python3-pip git ffmpeg
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
pip3 install -r requirements.txt
```

## 📱 Termux (Android)

```bash
pkg update && pkg install python git ffmpeg
cd ~
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
pip3 install -r requirements.txt
```

## 🐳 Docker

```bash
docker run -it --rm -v $(pwd):/data 187ghost101/biobypass
```

## ✅ Vérification

```bash
python3 main.py --list-vectors
# → [+] 15 vectors available:
#     1. photo_print
#     2. video_replay
#     ...
```

---

*"There is no lock." — ghost1o1*
