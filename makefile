dbk: ict0026-draaiboek.tex ids-parameters.tex
	pdflatex ict0026-draaiboek.tex
	pdflatex ict0026-draaiboek.tex
ids-parameters.tex: vos-15.1-prod.txt
	./convert_txt.sh vos-15.1-prod.txt ids-parameters.tex
