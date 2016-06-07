#!/bin/bash

BASE=project

DIA-EPS=$(patsubst %.dia,%.eps,$(wildcard figs/*.dia))
DIA-PDF=$(patsubst %.dia,%.pdf,$(wildcard figs/*.dia))
GV-EPS=$(patsubst %.gv,%.eps,$(wildcard figs/*.gv))
GV-PDF=$(patsubst %.gv,%.pdf,$(wildcard figs/*.gv))
JGR-EPS=$(patsubst %.jgr,%.eps,$(wildcard figs/*.jgr))
JGR-PDF=$(patsubst %.jgr,%.pdf,$(wildcard figs/*.jgr))
SVG-PDF=$(patsubst %.svg,%.pdf,$(wildcard figs/*.svg))

%.eps:  %.dia
	dia $< --export=$@
  
%.eps:  %.jgr
	#$(HOME)/exp/jgraph $< > $@
	#$(HOME)/exp/jgraph -P $< | ps2eps -f > $@
	JGRAPH_BORDER=8 jgraph $< > $@
  
%.pdf:  %.eps
	epstopdf $< --outfile=$@
  
%.pdf:  %.gv
	dot $< -Tpdf > $@

%.eps:  %.gv
	dot $< -Teps > $@
	
%.pdf:	%.svg
  inkscape --without-gui --export-pdf=$@ $<
  
  default: $(DIA-EPS) $(DIA-PDF) $(GV-EPS) $(GV-PDF) $(JGR-EPS) $(JGR-PDF) $(SVG-PDF)
