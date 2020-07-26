#!/usr/bin/zsh -f
# build website
jekyll build && \
    git add . && \
    git commit -m "auto-commit by quick_update.zsh" && \
    git push;

# rsync site to server
rsync -a -v --delete --info=progress2 \
      --partial --exclude "/.ssh" \
      --dry-run \
      ./_site/ mathweb_uw:

