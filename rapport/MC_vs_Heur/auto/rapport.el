(TeX-add-style-hook "rapport"
 (lambda ()
    (LaTeX-add-labels
     "tab_proto"
     "tab_temp"
     "tab_ident"
     "tab_ener"
     "tab_iter"
     "tab_mut"
     "tab_MCvsHeur"
     "fig-seqlogo-T=03"
     "Sim_pos_byp3"
     "Sim_pos_byp4"
     "Sim_pos_byph")
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

