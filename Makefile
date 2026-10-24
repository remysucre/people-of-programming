PANDOC_OPTIONS := -V maxwidth=680px \
                  -V mainfont=palatino,serif \
                  -V linestretch=1.6 \
                  -M pagetitle="Declaration by the People of Programming"

# Signatures collected on the mirrors (git submodules under mirrors/)
SIGNATURES := $(wildcard mirrors/*/signature.md)

index.html: index.md $(SIGNATURES)
	pandoc -s -o $@ $(PANDOC_OPTIONS) $^
