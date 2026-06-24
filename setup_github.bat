@echo off
REM ============================================================
REM  Supra Modeler — GitHub repo setup
REM  Esegui questo script nella cartella dove hai clonato/creato
REM  la struttura del repo.
REM  Richiede: GitHub CLI (gh) installato e autenticato
REM  Installa gh da: https://cli.github.com/
REM ============================================================

echo [1/5] Verifica GitHub CLI...
gh --version
if errorlevel 1 (
    echo ERRORE: GitHub CLI non trovato. Installalo da https://cli.github.com/
    pause
    exit /b 1
)

echo [2/5] Login GitHub (se non sei gia autenticato)...
gh auth status
if errorlevel 1 (
    gh auth login
)

echo [3/5] Creazione repo pubblico ytsejam/supra-modeler...
gh repo create ytsejam/supra-modeler ^
    --public ^
    --description "Professional NURBS/BRep direct modeling for Autodesk Maya" ^
    --homepage "https://msd-suite.com" ^
    --confirm

echo [4/5] Init git e primo commit...
git init
git add .
git commit -m "Initial commit — repo structure, LICENSE, LGPL compliance, issue templates"
git branch -M main
git remote add origin https://github.com/ytsejam/supra-modeler.git
git push -u origin main

echo [5/5] Configurazione repo (topics, issues abilitati)...
gh repo edit ytsejam/supra-modeler ^
    --enable-issues ^
    --add-topic "maya" ^
    --add-topic "nurbs" ^
    --add-topic "cad" ^
    --add-topic "opencascade" ^
    --add-topic "3d-modeling"

echo.
echo ============================================================
echo  DONE. Repo online: https://github.com/ytsejam/supra-modeler
echo ============================================================
echo.
echo PROSSIMI PASSI MANUALI:
echo  1. Vai su https://github.com/ytsejam/supra-modeler/settings
echo  2. Disabilita Wiki e Projects se non li usi
echo  3. Aggiungi il testo LGPL 2.1 completo in lgpl_compliance/LICENSE_LGPL.txt
echo     Scarica da: https://www.gnu.org/licenses/lgpl-2.1.txt
echo  4. Per la prima release beta:
echo     gh release create v0.1-beta MSDSupra_b1_Maya2025.zip ^
echo         --title "Supra Modeler v0.1 Beta" ^
echo         --notes-file CHANGELOG.md ^
echo         --prerelease
echo.
pause
