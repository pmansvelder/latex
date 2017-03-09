all: ict0026-draaiboek.tex ids-parameters.tex
	pdflatex ict0026-draaiboek.tex
	pdflatex ict0026-draaiboek.tex
vos-p: vos-15.1-prod.txt
	./convert_txt.sh vos-15.1-prod.txt ids-parameters.tex
	cp vosnodes_p.txt nodes.txt
vos-b: vos-15.1-bepr.txt
	./convert_txt.sh vos-15.1-bepr.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
b2b-b: b2b-bepr.txt
	./convert_txt.sh b2b-bepr.txt ids-parameters.tex
	cp vosnodes_b.txt nodes.txt
avp: avp-database.txt
	./convert_txt.sh avp-database.txt ids-parameters.tex
