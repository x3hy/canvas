#!/bin/sh
mv .git .hide_git
cd dwm_patched
git clone https://git.suckless.org/dwm
mv dwm/.git .
rm -r dwm
git diff > ../canvas.diff
rm -rf .git
cd -
mv .hide_git .git
