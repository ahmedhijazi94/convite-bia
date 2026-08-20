#!/usr/bin/env bash
# Publica o projeto no GitHub. Rode uma vez, no Terminal:
#   cd ~/dev/convite-bia && bash push.sh
set -e
cd "$(dirname "$0")"

rm -f .git/*.lock .git/refs/heads/*.lock .git/objects/*/tmp_obj_* 2>/dev/null || true

git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/ahmedhijazi94/convite-bia.git
git push -u origin main

echo
echo "Pronto. Agora em vercel.com > Add New > Project > importe convite-bia."
echo "Framework Preset: Other. Build Command e Output Directory: em branco."
