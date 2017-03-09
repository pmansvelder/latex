all: ict0026-draaiboek.tex ids-parameters.tex
	pdflatex ict0026-draaiboek.tex
	pdflatex ict0026-draaiboek.tex
vos: vos-15.1-prod.txt
	./convert_txt.sh vos-15.1-prod.txt ids-parameters.tex
avp: avp-database.txt
	./convert_txt.sh avp-database.txt ids-parameters.tex
