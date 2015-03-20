(TeX-add-style-hook "rapport.3"
 (lambda ()
    (LaTeX-add-labels
     "fig-label")
    (TeX-run-style-hooks
     "hyperref"
     "graphicx"
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

