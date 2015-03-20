(TeX-add-style-hook "grap"
 (lambda ()
    (LaTeX-add-labels
     "1ABO"
     "1CKA"
     "1M61"
     "1R6J")
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

