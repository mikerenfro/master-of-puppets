SLIDES := $(patsubst %.markdown,%-slides.pdf,$(wildcard *.markdown))
HANDOUTS := $(patsubst %.markdown,%-handouts.pdf,$(wildcard *.markdown))
NOTES := $(patsubst %.markdown,%-notes.pdf,$(wildcard *.markdown))
export PATH := /Library/TeX/texbin:$(PATH)
PANDOC := /usr/local/bin/pandoc

COMMON_OPTS := --defaults=defaults.yaml
SLIDES_OPTS := $(COMMON_OPTS)
HANDOUT_OPTS := -V handout $(COMMON_OPTS)
NOTES_OPTS := $(COMMON_OPTS) --metadata=beameroption="show only notes"

# all: $(SLIDES) $(HANDOUTS)
all: $(HANDOUTS) $(NOTES)

%-slides.pdf: %.markdown
	$(PANDOC) $(SLIDES_OPTS) $^ -o $@
%-handouts.pdf: %.markdown
	$(PANDOC) $(HANDOUT_OPTS) $^ -o $@
%-notes.pdf: %.markdown
	$(PANDOC) $(NOTES_OPTS) $^ -o $@

clean: 
	rm -f $(SLIDES) $(HANDOUTS) $(NOTES)
