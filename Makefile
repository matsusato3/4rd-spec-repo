#
# Ole Troan, ot@cisco.com
# April 2009

REVISION=02
DRAFT=draft-despres-softwire-4rd.txt \

XML2RFC=./xml2rfc/xml2rfc.tcl

# General rule to "compile" an XML file
%.txt:  %.xml
	$(XML2RFC) $< $*-$(REVISION).txt

draft: $(DRAFT)

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

all:	draft



