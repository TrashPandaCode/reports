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
  bibliography: bibliography("reverbaration_estimation.bib"),
)

#set heading(numbering: "1.")

// Abstact & Introduction
#include "chapters/abstract-introduction.typ"
// Fundamental Concepts
#include "chapters/fundamental-concepts.typ"
// Project Planning
#include "chapters/project-planning.typ"
// Dataset
#include "chapters/dataset.typ"
// Experiments
#include "chapters/experiments.typ"

= Discussion

// Insights
//     How well can images predict RT60?
//     Strengths and limitations of the approach.
// Challenges Faced
//     Domain gap from synthetic to real.
//     Variability in real image quality.
// Potential Improvements

#pagebreak()

= Conclusion
// Summary of the work.
// Key findings.
// Relevance and potential applications.
// Recommendations for future work.

#pagebreak()

