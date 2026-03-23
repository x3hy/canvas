#!/bin/sh
rm canvas.diff
mv .git .hide_git
cd dwm_patched
git clone https://git.suckless.org/dwm
mv dwm/.git .
rm -r dwm
git add .
git diff --staged > ../canvas.diff
rm -rf .git
cd -
mv .hide_git .git
