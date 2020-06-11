# lukasjoc
> my ~ on the internet

Setup, Rendering (with Pandoc)
```bash
Usage: render [build, serve, --help]

Synopsys:
        render markdown files --> html and or serve website locally with Docker

Commands:
        build   Render all markdown files located in /Users/jochamlu/fun/lukasjoc/build
        serve serve site locally with docker

Flags:
        --help  Print help for the script
```

Layout:
```bash
├── LICENSE
├── README.md
├── css
│   └── sakura-theme.min.css
├── default.html
├── docker
│   ├── Dockerfile
│   └── default.conf
├── docker-compose.yml
├── pages
│   ├── 40x.md
│   ├── 50x.md
│   ├── cv.md
│   └── index.md
└── render

3 directories, 12 files

```


### Why markdown + pandoc and not Hugo or Vue..
- Simple
- No overhead
- Fast
- Lightweight
- Portable
- Sourceable
- fast development speed with propper tmux/vim setup
- I prefer documents over javascript's "template"
- Haskel over Go is the better tool for this usecase

[lukasjoc](https://lukasjoc.com), 2020
