all: ict0026-draaiboek.tex 
	sed -i 's#_#\\_#g' *.txt
	sed -i 's#@#\\@#g' *.txt
	sed 's/\(\w*\)\ \(.*\)/\\newcommand{\\\1}{{\2}}/' ids-parameters.txt > ids-parameters.tex
	pdflatex ict0026-draaiboek.tex
	pdflatex ict0026-draaiboek.tex
uitvoering.txt: uitvoering_raw.txt
	sed 's#_#\\_#g' uitvoering_raw.txt > uitvoering.txt
vos-p:	vos-p/ids-parameters.txt 
	cp vos-p/* .
vos-b: 	vos-b/ids-parameters.txt
	cp vos-b/* .
vos-a: 	vos-a/ids-parameters.txt
	cp defaults/* .
	cp vos-a/* .
	./splitfiles.sh ./TECH-DBK-COMMANDO-REFERENTIE.txt
vmb-a: vmb-a/ids-parameters.txt
	cp defaults/* .
	cp vmb-a/* .
b2b-b: b2b-bepr.txt
	cp defaults/* .
	cp b2b-b/* .
osiris-b: osiris-b/ids-parameters.txt
	cp defaults/* .
	cp osiris-b/* .
osiris-p: osiris-p/ids-parameters.txt
	cp defaults/* .
	cp osiris-p/* .
clean: 
	rm -f *.cmd
	rm -f *.txt
	rm -f *.pdf
	rm -f *.out
	touch */ids-parameters.txt
