SOURCES=$(wildcard *.gri)
OBJECTS=$(SOURCES:.gri=.out)
all: $(OBJECTS)
%.out: %.gri
	gri $< > $@
clean:
	-rm *.out *.pdf *~ *swp

