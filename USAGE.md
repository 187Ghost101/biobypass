# 🎮 BioBypass Pro v11.0 — Guide d'utilisation

> 15 vecteurs offensifs · 3 modes · navigation tactile.

## 🎯 Premier lancement

Ouvre `BioBypass-Pro.html` dans ton navigateur. L'écran de splash apparaît avec :
- **GHOST1O1 sig-glow** au centre
- 15 cartes de vecteurs
- Sidebar navigation (gauche)
- Stat strip (haut)

## 🧭 Navigation

| Action | Effet |
|--------|-------|
| **Clic carte** | Active le vecteur |
| **Clic sidebar** | Switch section |
| **Clic bouton RUN** | Exécute démo |
| **Touche `1-9`** | Switch panel |
| **Touche `?`** | Help |
| **Touche `Esc`** | Quitter mode |

## 🎭 Les 3 modes

### Mode DEMO (défaut)
Visualisation des offensives en sandbox. Aucun impact réel.

```bash
# Toggle depuis la sidebar
Mode → DEMO
```

### Mode AUDIT
Analyse configuration d'une cible (avec autorisation).

```bash
Mode → AUDIT
Target: 192.168.1.100  # caméra/serveur auth
Système: Hikvision/Dahua/Generic
```

⚠️ **Autorisation requise.**

### Mode RED TEAM
Exécution contrôlée en environnement autorisé.

```bash
Mode → RED TEAM
Engagement ID: ENG-2026-XXX
Scope: 10.0.0.0/24
```

⚠️ **Double autorisation + scope écrit requis.**

## 🎯 Les 15 vecteurs

### 1. Fake Fingerprint Synthesis
Génère un faux empreinte en silicone/PVC.

**Input** : image empreinte (PNG, 500 DPI min)
**Output** : spec 3D + instructions moulage
**Demo** : clic "RUN" → animation synthèse

### 2. Face Spoofing 2D/3D
Photo ou masque silicone 3D.

**Input** : photo sujet (frontale, neutre)
**Output** : anti-spoofing bypass prediction
**Demo** : génération masque virtuel

### 3. Voice Synthesis
Clonage voix (TTS + vocoder).

**Input** : sample audio 10s+ (WAV)
**Output** : fichier WAV synthétisé
**Demo** : sample pré-enregistré

### 4. Iris Replay
Image infrarouge imprimée.

**Input** : scan IR iris (PNG)
**Output** : spec imprimante + matériau
**Demo** : simulation IR

### 5. Behavioral Mimicry
ML gestuel/saisie clavier.

**Input** : log frappe 1h+
**Output** : profil comportemental cloné
**Demo** : pattern animation

### 6. GAN Deepfake
Visage temps réel.

**Input** : photo sujet + vidéo cible
**Output** : modèle GAN entraîné
**Demo** : deepfake preview

### 7. ML Adversarial
Patchs antagonistes (FGSM/PGD).

**Input** : image cible + modèle
**Output** : patch PGD
**Demo** : perturbation visuelle

### 8. Sensor Confusion
Confusion capteur IR/UV/proximité.

**Input** : spec capteur cible
**Output** : vecteur lumineux/audio
**Demo** : simulation

### 9. Template Tampering
Injection DB template biométrique.

**Input** : accès DB (SQLi/SSRF)
**Output** : payload injection
**Demo** : visualisation DB

### 10. Replay Attack
Capture/rejeu handshake auth.

**Input** : capture PCAP
**Output** : replay script
**Demo** : timeline

### 11. Man-in-the-Middle
Interception canal auth.

**Input** : position réseau
**Output** : proxy config
**Demo** : schéma MITM

### 12. Brute Force
Dictionnaire + rainbow tables.

**Input** : username + wordlist
**Output** : taux crack estimé
**Demo** : simulation

### 13. Liveness Bypass
Contourne anti-spoofing.

**Input** : système cible
**Output** : vecteur bypass
**Demo** : animation

### 14. Side Channel
Émanations EM/puissance.

**Input** : proximité physique
**Output** : analyse spectre
**Demo** : waveform

### 15. Hybrid Multi-Vector
Combinaison adaptative de 2+ vecteurs.

**Input** : config cible complète
**Output** : plan d'attaque optimisé
**Demo** : orchestration

## 📊 Stats & Reporting

### Stats live (topbar)
- Vecteurs actifs
- Vecteurs successful
- Temps écoulé
- Score global

### Export rapport
```bash
Sidebar → Report → EXPORT JSON
```

Le rapport contient :
- Timestamp
- Cible
- Mode
- Vecteurs utilisés
- Résultats détaillés
- Recommandations

## 🎨 Personnalisation UI

### Changer couleur accent
```javascript
// Dans BioBypass-Pro.html, édite :
:root {
  --g1-blood: #e3063e;   /* → ta couleur */
  --g1-violet: #a855f7;  /* → autre */
}
```

### Toggle particules
```javascript
// Sidebar → Settings → Particles: OFF
```

### Toggle sig-glow
```javascript
// Sidebar → Settings → Signature: MINIMAL
```

## 🛠️ Workflow typique

### Scénario 1 : Audit ponctuel
```
1. Mode = AUDIT
2. Cible = 192.168.1.100
3. Système = Hikvision
4. Run → vecteurs 1, 2, 13 (les plus probables)
5. Export rapport
```

### Scénario 2 : Red Team engagement
```
1. Mode = RED TEAM
2. Engagement ID = ENG-2026-001
3. Scope = 10.0.0.0/24
4. Cible prioritaire = 10.0.0.77 (Hikvision CVE-2021-36260)
5. Vecteurs = 1, 2, 11, 15 (combinés)
6. Persist + Exfil
7. Rapport final
```

### Scénario 3 : Formation
```
1. Mode = DEMO
2. Lance chaque vecteur un par un
3. Observe animation
4. Lis descriptions
5. Comprends mécanismes
```

## 🔒 Sécurité opérationnelle

### OPSEC checklist
- ✅ VPN/Tor avant audit
- ✅ MAC randomisé
- ✅ Logs désactivés sur cible
- ✅ Pas de credentials en clair
- ✅ Scope écrit signé
- ✅ Rapports chiffrés (GPG)

### Anti-forensics
- BioBypass Pro **ne laisse aucune trace** sur la cible
- Toutes les démos sont **locales** (sandbox navigateur)
- Aucun call réseau, aucun beacon

## 🆘 Help

Touche `?` dans l'app → help overlay.

## 📚 Ressources

- [OWASP Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
- [CVE-2021-36260 (Hikvision)](https://nvd.nist.gov/vuln/detail/CVE-2021-36260)
- [Biometric spoofing research](https://www.usenix.org/legacy/events/bio/)

---

🏴‍☠️ **ghost1o1** — *"There is no lock."*
