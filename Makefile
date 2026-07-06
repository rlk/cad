UNZIP    ?= unzip
PNGCRUSH ?= pngcrush

FCS  := $(wildcard *.FCStd)
PNGS := $(FCS:.FCStd=.png)

# Extract and optimize thumbnails from all FreeCAD files

all : $(PNGS)

%.png : %.FCStd
	$(UNZIP) -p $< thumbnails/Thumbnail.png > $@ && $(PNGCRUSH) -ow $@
