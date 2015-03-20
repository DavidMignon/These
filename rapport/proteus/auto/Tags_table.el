(TeX-add-style-hook "Tags_table"
 (lambda ()
    (LaTeX-add-labels
     "table1")
    (TeX-run-style-hooks
     "hyperref"
     "graphicx"
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

