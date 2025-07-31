#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": gls, glspl, make-glossary, print-glossary, register-glossary

#show: island.with(
  lang: "en",
  title: "Final Report",
  authors: (
    (name: "Markus Heming", matnr: "11160720"),
    (name: "David Klein", matnr: "11150408"),
    (name: "Jonathan Kron", matnr: "11158145"),
    (name: "Milan Jezovsek", matnr: "11152836"),
    (name: "Philipp Wendt", matnr: "11158135"),
    (name: "Leo Kling", matnr: "11158198"),
  ),
  subheading: "WEB - Dumpster-Diving",
  primary: rgb("#4f81bd"),
  semester: "SoSe 2025",
  show-title-page: true,
  img: none,
  show-outline: false,
  bibliography: bibliography("web.bib"),
)

#outline(depth: 3)
#outline(title: [List of Figures], target: figure.where(kind: image))
#outline(title: [List of Tables], target: figure.where(kind: table))
// #todo_outline
#pagebreak()

#set heading(numbering: "I.1.a") // idk können wir auch noch ändern

#set table(stroke: 0.5pt, inset: 8pt)

#include "chapters/project-description.typ"
#pagebreak()
#include "chapters/requirements.typ"
#pagebreak()
#include "chapters/design.typ"
#pagebreak()
#include "chapters/test-plans.typ"
// #pagebreak()
// #include "chapters/project-issues.typ"
// #pagebreak()

// = Glossary
// #todo("fill glossary (if needed)")

#pagebreak()
#include "chapters/appendix.typ"
