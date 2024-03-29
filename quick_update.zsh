#!/usr/bin/zsh -f
# build website
jekyll build && \
    git add . && \
    git commit -m "auto-commit by quick_update.zsh" && \
    git push;

# sync site to server
cd /home/charlie/Documents/godfrey-cw.github.io;

rsync -a -v --delete --info=progress2 \
      --partial --exclude "/.git" --exclude "/.nojekyll" \
      /home/charlie/Documents/WebDev/_site/ \
      /home/charlie/Documents/godfrey-cw.github.io/;

git add . && git commit -m "auto-commit by quick_update.zsh";
git push;

cd /home/charlie/Documents/WebDev;