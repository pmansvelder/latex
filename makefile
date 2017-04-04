all: ict0026-draaiboek.tex ids-parameters.tex artikelen.txt
	pdflatex ict0026-draaiboek.tex
	pdflatex ict0026-draaiboek.tex
artikelen.txt: artikelen_raw.txt
	sed 's#_#\\_#g' artikelen_raw.txt > artikelen.txt
uitvoering.txt: uitvoering_raw.txt
	sed 's#_#\\_#g' uitvoering_raw.txt > uitvoering.txt
vos-p: vos-15.1-prod.txt
	./convert_txt.sh vos-15.1-prod.txt ids-parameters.tex
	cp vosnodes_p.txt nodes.txt
	cp vos_artikelen.txt artikelen_raw.txt
vos-b: vos-15.1-bepr.txt
	./convert_txt.sh vos-15.1-bepr.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
	cp vos_artikelen.txt artikelen_raw.txt
vos-a: vos-15.3-acc.txt
	./convert_txt.sh vos-15.3-acc.txt ids-parameters.tex
	cp vosnodes_a.txt nodes.txt
	cp vos_artikelen.txt artikelen_raw.txt
vmb-a: vmb-3.4-acc.txt
	./convert_txt.sh vmb-3.4-acc.txt ids-parameters.tex
	cp vosnodes_a.txt nodes.txt
	cp vmb_artikelen.txt artikelen_raw.txt
	cp vmb-a-versiebeheer.txt versiebeheer.txt
	cp vmb-systeemoverzicht.txt systeemoverzicht.txt
	cp vmb-randvoorwaarden.txt randvoorwaarden.txt
	cp vmb-voorbereiding.txt voorbereiding.txt
	cp vmb-werkzaamheden.txt werkzaamheden.txt
	cp vmb-aandachtspunten.txt aandachtspunten.txt
	cp vmb-uitvoering.txt uitvoering.txt
b2b-b: b2b-bepr.txt
	./convert_txt.sh b2b-bepr.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
	cp b2b_artikelen.txt artikelen_raw.txt
avp: avp-database.txt
	./convert_txt.sh avp-database.txt ids-parameters.tex
	cp avp-artikelen.txt artikelen.txt
osiris-b: osiris-b.txt vosnodes_b.txt
	./convert_txt.sh osiris-b.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
	cp osiris_artikelen.txt artikelen_raw.txt
osiris-p: osiris-p.txt vosnodes_p.txt
	./convert_txt.sh osiris-p.txt ids-parameters.tex
	cp vosnodes_p.txt nodes.txt
	cp osiris_artikelen.txt artikelen_raw.txt
clean: 
	rm ids-parameters.tex nodes.txt artikelen.txt artikelen_raw.txt

