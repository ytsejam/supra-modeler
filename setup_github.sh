#!/bin/bash
# ============================================================
#  Supra Modeler — GitHub repo setup (Mac/Linux)
#  Richiede: GitHub CLI (gh) — brew install gh
# ============================================================

set -e

echo "[1/5] Verifica GitHub CLI..."
gh --version || { echo "ERRORE: installa gh con: brew install gh"; exit 1; }

echo "[2/5] Verifica autenticazione..."
gh auth status || gh auth login

echo "[3/5] Creazione repo pubblico ytsejam/supra-modeler..."
gh repo create ytsejam/supra-modeler \
    --public \
    --description "Professional NURBS/BRep direct modeling for Autodesk Maya" \
    --homepage "https://msd-suite.com" \
    --confirm

echo "[4/5] Init git e primo commit..."
git init
git add .
git commit -m "Initial commit — repo structure, LICENSE, LGPL compliance, issue templates"
git branch -M main
git remote add origin https://github.com/ytsejam/supra-modeler.git
git push -u origin main

echo "[5/5] Configurazione repo..."
gh repo edit ytsejam/supra-modeler \
    --enable-issues \
    --add-topic "maya" \
    --add-topic "nurbs" \
    --add-topic "cad" \
    --add-topic "opencascade" \
    --add-topic "3d-modeling"

echo ""
echo "============================================================"
echo " DONE: https://github.com/ytsejam/supra-modeler"
echo "============================================================"
echo ""
echo "Prima release beta:"
echo "  gh release create v0.1-beta MSDSupra_b1_Maya2025.zip \\"
echo "      --title 'Supra Modeler v0.1 Beta' \\"
echo "      --notes-file CHANGELOG.md \\"
echo "      --prerelease"
