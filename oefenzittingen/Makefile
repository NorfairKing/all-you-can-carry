.PHONY: opgaven
number ?= 1

all:
	make opgaven
	make oplossingen
    
opgaven:
	$(MAKE) -C opgaven

oplossingen:
	number=$(number); \
	while [ $${number} -le 17 ] ; do \
		bash makeOplossing.sh $$number; \
		number=`expr $$number + 1`; \
	done
	true
	pdfunite opgaven/opgaven_oefenzittingen.pdf oplossing_*.pdf oplossingen_door_assistenten.pdf oefenzittingen.pdf
