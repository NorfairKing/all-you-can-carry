.PHONY: opgaven

all:
	make opgaven
	make oplossingen
    
opgaven:
	$(MAKE) -C opgaven

oplossingen:
	number=1 ; while [[ $$number -le 17 ]] ; do \
		bash makeOplossing.sh $$number; \
        ((number = number + 1)) ; \
    done
	pdfunite opgaven/opgaven_oefenzittingen.pdf oplossing_*.pdf oefenzittingen.pdf
