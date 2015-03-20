
<<Graphics`MultipleListPlot`
<<Graphics`Colors`

pwd=Directory[] 
prot=$CommandLine[[2]]
file=$CommandLine[[3]]

pathp3= pwd <> "/p3/" <> file 
Import[pathp3, "table"]
p3 = Drop[%, 1][[All, {1, 3}]]

pathp4= pwd <> "/p4/" <> file 
Import[pathp4, "table"]
p4 = Drop[%, 1][[All, {1, 3}]]

pathph= pwd <> "/ph/" <> file 
Import[pathph, "table"]
ph = Drop[%, 1][[All, {1, 3}]]



graph=MultipleListPlot[p3, p4, ph, PlotLabel -> prot, AxesOrigin -> {68, -3.5}, 
  SymbolShape -> None, PlotJoined -> {True, True, True}, 
  PlotStyle -> {{Thickness[0.01], Blue}, {Thickness[0.01], 
        Green}, {Thickness[0.01], Red}}, PlotLegend -> {"p3", "p4", "ph"}, 
  LegendPosition -> {.6, .3}, LegendSize -> .3]

Export["graph.svg", graph, "SVG"]
