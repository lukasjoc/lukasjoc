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
.
├── LICENSE
├── README.md
├── build
│   ├── 40x.html
│   ├── 50x.html
│   ├── cv.html
│   └── index.html
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

3 directories, 15 files
```

[lukasjoc](https://lukasjoc.com), 2020
