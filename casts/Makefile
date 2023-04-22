PAGES := $(patsubst %.cast,%-cast.html,$(wildcard *.cast))

all: $(PAGES) index.html

%-cast.html: %.cast
	sed "s/__CAST__/$^/g" template-cast.html > $@

index.html: $(PAGES)
	
clean:
	rm -f $(PAGES)
