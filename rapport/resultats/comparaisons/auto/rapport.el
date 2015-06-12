(TeX-add-style-hook "rapport"
 (lambda ()
    (LaTeX-add-labels
     "tab_protoMC"
     "tab_protoRE"
     "tab_protoH"
     "temps_CPU"
     "tab_best_ener_all"
     "Distrib_E_RE3"
     "TRAJ_T"
     "tab_best_ener_no_active"
     "tab_echec_1CKA_1"
     "tab_echec1M61__1"
     "tab_echec1O4C__1"
     "tab_echec1R6J__1"
     "tab_echec2BYG__1"
     "tab_echec_20"
     "tab_echec_30"
     "tab_1"
     "tab_2")
    (TeX-run-style-hooks
     "hyperref"
     "graphicx"
     "multirow"
     "microtype"
     "lmodern"
     ""
     "fontenc"
     "T1"
     "babel"
     "francais"
     "inputenc"
     "utf8"
     "geometry"
     "vmargin=2.5cm"
     "hmargin=2.5cm"
     "latex2e"
     "art12"
     "article"
     "12pt"
     "a4paper")))

