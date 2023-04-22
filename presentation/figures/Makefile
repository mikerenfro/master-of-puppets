FIGURES := $(patsubst %.dot,%.dot.pdf,$(wildcard *.dot))

DOT := dot
COMMON_OPTS := -Tpdf -O -Gmargin=0

all: $(FIGURES)

%.dot.pdf: %.dot
	$(DOT) $(COMMON_OPTS) $^

clean: 
	rm -f $(FIGURES)
