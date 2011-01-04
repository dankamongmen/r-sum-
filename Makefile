.PHONY: view all clean

DOC:=resume
PDF:=$(DOC).pdf
TEX:=$(DOC).tex

view: all
	evince $(PDF)

all: $(PDF)

$(PDF): $(TEX)
	pdflatex $<

clean:
	rm -f $(PDF)
