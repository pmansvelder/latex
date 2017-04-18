# latex
Some latex examples and tryouts.
Purpose: to make a template for instruction manuals.

All is done with a makefile, to compile the different formats the steps are as follows:
* change the .txt files in the subdirectory with the correct parameters or 'touch' the file so its modification date is changed.
* make the appropriate document with:
	make vos-a
* create the latex and pdf file with:
	make

To add more documents, expand the makefile
