.PHONY: samenvatting examenvragen oefenzittingen tutorials extra

all:
	make samenvatting
	make examenvragen
	make oefenzittingen
	make tutorials
	make extra
	make oud
	pdfunite samenvatting/samenvatting.pdf examenvragen/examenvragen.pdf tutorials/foutenanalyse.pdf tutorials/conditie_en_stabiliteit.pdf  oefenzittingen/oefenzittingen.pdf extra/extra.pdf oud/oud.pdf all-you-can-carry.pdf

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
