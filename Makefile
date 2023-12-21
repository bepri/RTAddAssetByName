builds = firefox chromium

.PHONY: all
all: $(patsubst %,%.zip,$(builds))

.SECONDEXPANSION:
%.zip: $$(shell find %/*)
	cd $*; zip -r ../$@ $(patsubst $*/%,%,$^)

.PHONY: clean
clean:
	-rm *.zip