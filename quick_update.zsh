#!/usr/bin/zsh -f
# build website
jekyll build && \
    git add . && \
    git commit -m "auto-commit by quick_update.zsh" && \
    git push;

# sync site to server
cd /home/charlie/Documents/Web/godfrey-cw.github.io &&\
git checkout gh-pages;

rsync -a -v --delete --info=progress2 \
      --partial --exclude "/.ssh" \
      /home/charlie/Documents/Web/WebDev/_site/ \
      /home/charlie/Documents/Web/godfrey-cw.github.io/;

git add . && git commit -m "auto-commit by jekyll process";
git push;

cd /home/charlie/Documents/Web/WebDev;