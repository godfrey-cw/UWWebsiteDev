#!/usr/bin/zsh -f
# build website
jekyll build && \
    git add . && \
    git commit -m "auto-commit by quick_update.zsh" && \
    git push;

# remove old website, copy over new one
rm -rf ~/Documents/Web/UWWebsite/*;
cp -r ./_site/* ~/Documents/Web/UWWebsite/;

# change dir, push website
cd ~/Documents/Web/UWWebsite/;
git add . && \
    git commit -m "auto-commit by quick_update.zsh" && \
    git push origin && \
    git push live;
