(TeX-add-style-hook "rapport"
 (lambda ()
    (LaTeX-add-labels
     "fig-seqlogo-T=03")
    (TeX-run-style-hooks
     "hyperref"
     "graphicx"
     "multirow"
     "microtype"
     "lmodern"
     "fontenc"
     "T1"
     "babel"
     "francais"
     "inputenc"
     "utf8"
     "geometry"
     "latex2e"
     "art12"
     "article"
     "a4paper"
     "12pt")))

