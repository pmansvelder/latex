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
	cp vos-a/* .
vmb-a: vmb-a/ids-parameters.txt
	cp vmb-a/* .
b2b-b: b2b-bepr.txt
	./convert_txt.sh b2b-bepr.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
	cp b2b_artikelen.txt artikelen_raw.txt
avp: avp-database.txt
	./convert_txt.sh avp-database.txt ids-parameters.tex
	cp avp-artikelen.txt artikelen.txt
osiris-b: osiris-b/ids-parameters.txt
	cp osiris-b/* .
osiris-p: osiris-p/ids-parameters.txt
	cp osiris-p/* .
clean: 
	rm ids-parameters.tex nodes.txt artikelen.txt 

