// Test: bezier routing with endpoints inside named groups
#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, edge, node

#set page(width: 10cm, height: 4cm, margin: 5pt)

#canvas({
  cetz.draw.group(name: "src", {
    node((0, 0), [Src], name: "n", width: 1.2cm, height: .8cm, stroke: black)
  })

  cetz.draw.group(name: "mid", {
    node((4, 1.5), [Mid], name: "n", width: 1.2cm, height: .8cm, stroke: black)
  })

  cetz.draw.group(name: "dst", {
    node((8, 0), [Dst], name: "n", width: 1.2cm, height: .8cm, stroke: black)
  })

  edge("src.n", "dst.n", routing: "bezier", stroke: blue)
  edge("src.n.south", "dst.n.south", routing: "bezier", control: (2, -1.5), stroke: red)

  edge("src.n", "dst.n", routing: "horizontal", shift: -.2, stroke: blue)
  edge("mid.n", "dst.n", routing: "2w-south", stroke: red)
  edge("src.n", "dst.n", routing: "3w-north", bend: 2, stroke: green)
})
