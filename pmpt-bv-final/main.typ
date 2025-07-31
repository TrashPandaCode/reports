#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": gls, glspl, make-glossary, print-glossary, register-glossary

#show: island.with(
  lang: "en",
  title: "ertsi",
  authors: (
    (name: "Markus Heming", matnr: "11160720"),
    (name: "David Klein", matnr: "11150408"),
    (name: "Jonathan Kron", matnr: "11158145"),
    (name: "Milan Jezovsek", matnr: "11152836"),
    (name: "Philipp Wendt", matnr: "11158135"),
    (name: "Leo Kling", matnr: "11158198"),
  ),
  subheading: "Final Report",
  primary: rgb("#ffa808"),
  semester: "SoSe 2025",
  show-title-page: true,
  img: none,
  show-outline: true,
  outline-depth: 2,
  bibliography: bibliography("reverbaration_estimation.bib"),
)

#show figure.where(kind: table): set figure.caption(position: top)

#set heading(numbering: "1.")

// Abstact & Introduction
#include "chapters/abstract-introduction.typ"
// Related Works
#include "chapters/related-works.typ"
// Fundamental Concepts
#include "chapters/fundamental-concepts.typ"
// Project Planning
#include "chapters/project-planning.typ"
// Dataset
#include "chapters/dataset.typ"
// Experiments
#include "chapters/experiments.typ"
// Discussion & Conclusion
#include "chapters/discussion-conclusion.typ"
#include "chapters/contributions.typ"

#pagebreak()
#import "@preview/muchpdf:0.1.0": muchpdf
#set page(flipped: true)

= Appendix

== Experiments<appendix_experiments>


#place(center + horizon, dy: 3cm, muchpdf(read("docs/experiments.pdf", encoding: none), width: 110%))
#pagebreak()

== Time Tracking<time_tracking>
#place(center + horizon, dy: 1cm, muchpdf(read("./docs/Stundentracking1.pdf", encoding: none), width: 90%))
#pagebreak()
#place(center + horizon, dy: 1cm, muchpdf(read("./docs/Stundentracking2.pdf", encoding: none), width: 90%))

