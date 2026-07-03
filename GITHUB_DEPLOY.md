# 🚀 GitHub Deployment — BioBypass Pro v11.0

## 1. Crée le repo (une fois)

Va sur https://github.com/new
- Repository name: `biobypass`
- Owner: `ghost1o1`
- Visibilité: **Public**
- **NE COCHE RIEN D'AUTRE** (pas de README, .gitignore, license)

## 2. Push depuis cette machine

```bash
cd ~/biobypass
git push -u origin main
```

Si erreur d'auth → il faut un Personal Access Token:
1. https://github.com/settings/tokens
2. Generate new token (classic) → scope: `repo`
3. Quand demandé: user=ghost1o1, password=**le token**

## 3. Anyone peux downloader

```bash
git clone https://github.com/ghost1o1/biobypass.git
cd biobypass && bash install.sh
```
