.PHONY: samenvatting examenvragen oefenzittingen tutorials extra

all: samenvatting examenvragen oefenzittingen tutorials extra oud
	pdfunite examenvragen/examenvragen.pdf samenvatting/samenvatting.pdf tutorials/foutenanalyse.pdf tutorials/conditie_en_stabiliteit.pdf  oefenzittingen/oefenzittingen.pdf extra/extra.pdf oud/oud.pdf all-you-can-carry.pdf

samenvatting:
	$(MAKE) -C samenvatting

examenvragen:
	$(MAKE) -C examenvragen
    
oefenzittingen:
	$(MAKE) -C oefenzittingen

tutorials:
	$(MAKE) -C tutorials

extra:
	$(MAKE) -C extra

oud:
	$(MAKE) -C oud
