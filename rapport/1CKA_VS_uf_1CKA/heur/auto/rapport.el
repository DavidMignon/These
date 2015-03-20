(TeX-add-style-hook "rapport"
 (lambda ()
    (LaTeX-add-labels
     "heur_somme_et_diff_tri_somme"
     "heur_som_et_diff_tri_diff"
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

