#let table-header(..headers) = {
  table.header(..headers.pos().map(it => text(black, font: "Satoshi", weight: 700, it)))
}

#let entry_counter = counter("entry_counter")

#let entry(title, beginn_date, end_date, resp, results, activities, dependencies) = {
  entry_counter.step()
  table(
    align: left,
    columns: (1fr, 1fr, 1fr),
    table-header([Dumpster Diving], [WP-Nr. #context entry_counter.display()], [#title]),
    [#text(weight: "bold", font: "Satoshi", "Start"): #beginn_date.display("[day] [month repr:long], [year]")],
    [#text(weight: "bold", font: "Satoshi", "End"): #end_date.display("[day] [month repr:long], [year]")],
    [#text(weight: "bold", font: "Satoshi", "Resp."): #resp],
    table.cell(colspan: 3, [
      #text(weight: "bold", font: "Satoshi", "Results") \
      #results
    ]),
    table.cell(colspan: 3, [
      #text(weight: "bold", font: "Satoshi", "Activities") \
      #activities
    ]),
    table.cell(colspan: 3, [
      #text(weight: "bold", font: "Satoshi", "Dependencies") \
      #dependencies
    ]),
    [
      #text(weight: "bold", font: "Satoshi", "Signature Project Lead") \
      #image("signature/milan.png", width: 80%)
    ],
    [],
    [
      #text(weight: "bold", font: "Satoshi", "Signature Responsible") \
      #{
        if resp == [David Klein] {
          image("signature/david.png")
        } else if resp == [Jonathan David Kron] {
          image("signature/jonathan.png", width: 60%)
        } else if resp == [Leo Kling] {
          image("signature/leo.png", width: 80%)
        } else if resp == [Milan Jezovsek] {
          image("signature/milan.png", width: 80%)
        } else if resp == [Markus Heming] {
          image("signature/markus.png", width: 80%)
        } else if resp == [Philipp Leon Wendt] {
          image("signature/philipp.png", width: 80%)
        }
      }
    ],
  )
  pagebreak()
}

#import "@preview/cetz:0.4.0": canvas, draw, palette
#import "@preview/cetz-plot:0.1.2": chart

#let commit_graph = (csv_path, name) => {
  let commit_data = csv(csv_path).slice(1).map(e => (e.at(0), int(e.at(1))))

  figure(
    caption: [Commits during development \ per week by #name totaling #{ commit_data.map(e => e.at(1)).sum() } commits],
    canvas({
      draw.set-style(
        legend: (fill: white),
        axes: (
          bottom: (
            tick: (label: (angle: 90deg, anchor: "east")),
          ),
        ),
      )
      chart.columnchart(commit_data, mode: "basic", y-max: 50, size: (8, 3), y-tick-step: 20, bar-style: (fill: blue))
    }),
  )
}
