##----------------------------------------------------------------------------
# Created with genmake.pl v1.1 on Fri Feb 22 18:13:51 2013
# genmake.pl home: http://muquit.com/muquit/software/
# Copryright: GNU GPL (http://www.gnu.org/copyleft/gpl.html)
##----------------------------------------------------------------------------
rm=/bin/rm -rf
USERNAME=JonatasPedraza
DATADIR=data
PDFDIR=pdf
BUILDDIR=build
TEXDIR=tex

all:
	mkdir -p $(PDFDIR)
	cp -rf $(DATADIR) $(BUILDDIR)
	cp $(TEXDIR)/*.tex $(BUILDDIR)
	make -C build/ all
	cp $(BUILDDIR)/*.pdf $(PDFDIR)
	mv $(PDFDIR)/cv-ptBR.pdf $(PDFDIR)/$(USERNAME)-ptBR.pdf
	mv $(PDFDIR)/cv-en.pdf $(PDFDIR)/$(USERNAME)-en.pdf

en:
	mkdir -p $(PDFDIR)
	cp -rf $(DATADIR) $(BUILDDIR)
	cp $(TEXDIR)/cv-en.tex $(BUILDDIR)
	make -C build/ en
	cp $(BUILDDIR)/*.pdf $(PDFDIR)
	mv $(PDFDIR)/cv-en.pdf $(PDFDIR)/$(USERNAME)-en.pdf

ptbr:
	mkdir -p $(PDFDIR)
	cp -rf $(DATADIR) $(BUILDDIR)
	cp $(TEXDIR)/*.tex $(BUILDDIR)
	make -C build/ ptbr
	cp $(BUILDDIR)/*.pdf $(PDFDIR)
	mv $(PDFDIR)/cv-ptBR.pdf $(PDFDIR)/$(USERNAME)-ptBR.pdf

clean:
	$(rm) *.aux *.log *.out *.pdf pdf/ build/cv* build/data build/*.log build/tex
