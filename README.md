<div align="center">

```
   ▄█████ █  ██  ▄█████ ▄█████▄  ██   ██ ▄█████ █    ██  ██ ██    ██
  ██      ██▄██  ██     ██   ██  ██▄▄▄██ ██     ██    ██  ██ ██    ██
  ██  ███ ██▀██  █████  ██████   ██   ██ █████  ██    ██  ██ ██    ██
  ██   ██ ██  ██ ██     ██   ██  ██   ██ ██      ██  ▄██  ██  ██  ██
   ▀████▀ ██  ██ ▀█████ ██   ██  ██   ██ ▀█████   ▀███▀██▄██  ▀███▀
```

![GHOST1O1](https://img.shields.io/badge/GHOST1O1-L'EVEIL_NOCTURNE-e63946?style=for-the-badge&logo=ghost&logoColor=white)
![Version](https://img.shields.io/badge/VERSION-11.0-00d4ff?style=for-the-badge)
![Status](https://img.shields.io/badge/STATUS-OPERATIONAL-2ecc71?style=for-the-badge)
![Vectors](https://img.shields.io/badge/VECTORS-15-9b59b6?style=for-the-badge)

# 🧬 BIOBYPASS
## *Anti-Biometric Vector Framework*

**15 vecteurs de contournement biométrique. Laboratoire pédagogique Red Team / Blue Team.**

[Hub](https://github.com/187Ghost101/ghost1o1) · [Tutorial](https://github.com/187Ghost101/ghost1o1/blob/main/tutorials/TUTORIAL_03_INSTRUMENTER.md) · [SECURITY](SECURITY.md)

> *There is no lock.*

</div>

---

## 🔥 C'est quoi ?

BIOBYPASS est un **framework de simulation de vecteurs anti-biométriques**. Il documente, démontre et explique 15 vecteurs de contournement des systèmes d'authentification biométrique (visage, empreinte, voix, iris, comportement).

**Objectif :** former les Blue Teams à **détecter** ces vecteurs, et les Red Teams à les **tester éthiquement** sur des systèmes autorisés.

**Pas d'exploitation réelle sur des cibles tierces.** C'est un **laboratoire pédagogique**.

---

## ✨ Features

- **15 vecteurs documentés** : photo, vidéo, masque 3D, deepfake, synthétique, replay, brume, etc.
- **Scripts Python de génération** pour chaque vecteur
- **Métriques de succès** sur des datasets de test
- **Contre-mesures Blue Team** pour chaque vecteur
- **Mode lab isolé** — jamais d'attaque sur système de prod

---

## 🚀 Démarrage 60 secondes

```bash
git clone https://github.com/187Ghost101/biobypass.git
cd biobypass
bash install.sh
python3 biobypass.py --list-vectors
```

### Sans installation (consultation)

```bash
git clone https://github.com/187Ghost101/biobypass.git
ls biobypass/vectors/
cat biobypass/vectors/v01_photo.md
```

---

## 🎯 Les 15 vecteurs

| # | Vecteur | Cible | Difficulté | Détection Blue |
|---|---------|-------|-----------|----------------|
| 01 | Photo imprimée | FaceID-like | ⭐ | Texture analysis |
| 02 | Vidéo playback | Liveness faible | ⭐ | Motion coherence |
| 03 | Masque 3D | FaceID | ⭐⭐⭐ | Depth IR |
| 04 | Deepfake live | KYC vidéo | ⭐⭐⭐⭐ | Micro-expression |
| 05 | Empreinte latex | Capteur optique | ⭐⭐ | Conductance |
| 06 | Empreinte capacitive simulée | Capteur capacitif | ⭐⭐⭐ | Field variation |
| 07 | Voix synthétique | Vocal ID | ⭐⭐ | Spectral artifact |
| 08 | Voice replay | Vocal ID faible | ⭐ | Challenge-response |
| 09 | Iris photo haute-rés | Iris scanner | ⭐⭐ | Pupil response |
| 10 | Contact lens truquée | Iris scanner | ⭐⭐⭐ | Multi-spectral |
| 11 | Behavioral replay | Behavioral bio | ⭐⭐ | Velocity profile |
| 12 | Gant biométrique | Capteur empreinte | ⭐⭐⭐ | Pressure map |
| 13 | Synthetic DNA | ADN matcher | ⭐⭐⭐⭐ | Wet lab only |
| 14 | Gummy finger | Optical | ⭐ | Perspiration |
| 15 | Master face | Face recognition | ⭐⭐⭐⭐ | Diversity dataset |

---

## 📚 Usage pédagogique

```bash
# 1. Lister les vecteurs
python3 biobypass.py --list-vectors

# 2. Générer un sample de test
python3 biobypass.py --vector 01 --output samples/photo_attack.png

# 3. Tester sur un système (lab perso UNIQUEMENT)
python3 biobypass.py --vector 01 --target http://localhost:8080/auth --dry-run

# 4. Rapport Blue Team
python3 biobypass.py --blue-report --output bluemindset.md
```

---

## 🛡️ Contre-mesures Blue Team

Pour chaque vecteur, le repo documente :
- **Indicateurs de compromission** (IoC)
- **Capteurs recommandés** (IR, depth, multi-spectral, etc.)
- **Algorithmes de détection** (liveness, texture, micro-expression)
- **Hardening** côté serveur (challenge-response, multi-factor)

---

## 🔐 Légalité & Éthique

**OBLIGATOIRE :**
- Tests uniquement sur **tes propres systèmes** ou avec **autorisation écrite**
- Datasets de test **anonymisés** ou **synthétiques** uniquement
- Pas d'utilisation pour fraude d'identité réelle
- Pas d'utilisation sur des KYC de services financiers

**Le framework est pédagogique. L'usage malveillant est illégal et te fait ban du mouvement.**

📜 **[SECURITY.md](SECURITY.md)** complet

---

## 🤝 Contribution

Tu as un nouveau vecteur à documenter ? Format :
1. Nom + classification
2. Cible (type de système)
3. Méthode de reproduction
4. Contre-mesures
5. Références académiques

📜 **[CONTRIBUTING.md](CONTRIBUTING.md)**

---

## 📜 Licence

**MIT License** — avec clause d'usage éthique non-négociable.

---

<div align="center">

**L'ÉVEIL NOCTURNE** · [ghost1o1](https://github.com/187Ghost101) — 2026

*There is no lock. Du silence naît la lumière.*

</div>
