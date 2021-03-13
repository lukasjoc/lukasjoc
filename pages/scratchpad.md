---
title: Scratchpad | Lukas Jocham | Software Developer from Munich, Germany
---

## Scratchpad:
```
for f in *\ *; do mv "$f" "${f// /_}"; done # remove spaces in file names to underscores

:%s\\g # search and replace

for $f in $PWD/*; do nvim $f -c "retab" -c "wq!"; done # run retab on all files in current dir
```



