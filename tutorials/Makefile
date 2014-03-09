INTERACTION=nonstopmode
all:
	make conditie_en_stabiliteit.pdf >/dev/null #2>&1
	make foutenanalyse.pdf >/dev/null #2>&1
	make singuliere_waarden_ontbinding.pdf >/dev/null #2>&1
	make clean >/dev/null 2>/dev/null
%.pdf: %.tex
	bash makepdf.sh $(INTERACTION) $<
clean:
	rm -f *.aux *.log *.bbl *.bak *.blg *.toc *.out *.glg *.glo *.gls *.ist *~ *.*~* *.backup *.synctex.gz *.dvi
