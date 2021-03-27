---
title: Scratchpad | Lukas Jocham | Software Developer from Munich, Germany
---

## Scratchpad:

```bash
# remove spaces in file names to underscores

for f in *\ *; do mv "$f" "${f// /_}"; done
```

```bash
# search and replace in vim 

:%s\\g
```

```bash
# run retab on all files in current dir

for $f in $PWD/*; do nvim $f -c "retab" -c "wq!"; done
```



