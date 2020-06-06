MARKDOWN=$(shell find . -name ".md")
HTML=$(MARKDOWN:.md=.html)

.PHONY=all tar clean

all: $(HTML)

%.html: %.md
	pandoc --from markdown --to html $< -o $@

clean:
	rm $(HTML)
