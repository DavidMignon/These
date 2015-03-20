(TeX-add-style-hook "rapport.3"
 (lambda ()
    (LaTeX-add-labels
     "tab_proto"
     "tab_temp"
     "tab_ident"
     "tab_ener"
     "tab_iter"
     "tab_mut"
     "tab_MCvsHeur")
    (TeX-run-style-hooks
     "multirow"
     "hyperref"
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

