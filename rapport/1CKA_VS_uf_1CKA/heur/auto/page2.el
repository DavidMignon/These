(TeX-add-style-hook "page2"
 (lambda ()
    (LaTeX-add-labels
     "tab_MCvsHeur")
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

