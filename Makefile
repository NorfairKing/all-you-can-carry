.PHONY: samenvatting examenvragen oefenzittingen tutorials

all:
	make samenvatting
	make examenvragen
	make oefenzittingen
	make tutorials
	pdfunite samenvatting/samenvatting.pdf examenvragen/examenvragen.pdf tutorials/foutenanalyse.pdf tutorials/conditie_en_stabiliteit.pdf  oefenzittingen/oefenzittingen.pdf all-you-can-carry.pdf

samenvatting:
	$(MAKE) -C samenvatting

examenvragen:
	$(MAKE) -C examenvragen
    
oefenzittingen:
	$(MAKE) -C oefenzittingen

tutorials:
	$(MAKE) -C tutorials
