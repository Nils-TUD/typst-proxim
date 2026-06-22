// Test: bezier control dictionaries accept explicit bend distances.
#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, edge, node

#set page(width: 7cm, height: 5cm, margin: 5pt)

#canvas({
  node((-3, 1.5), [A], name: "a", stroke: black)
  node((0, 1.5), [B], name: "b", stroke: black)
  node((3, 1.5), [C], name: "c", stroke: black)
  node((-3, -1.5), [D], name: "d", stroke: black)
  node((0, -1.5), [E], name: "e", stroke: black)
  node((3, -1.5), [F], name: "f", stroke: black)

  cetz.draw.set-style(mark: (end: ">"))

  edge("a.east", "b.west", routing: "bezier", control: (dir: "north", dist: .5cm))
  edge("b.east", "c.west", routing: "bezier", control: (dir: "north", dist: 1cm), stroke: blue)

  edge("d.east", "e.west", routing: "bezier", control: (dir: "south", dist: .5cm), stroke: red)
  edge("e.east", "f.west", routing: "bezier", control: (dir: "south", dist: 1cm), stroke: green)

  edge("b.south", "e.north", routing: "bezier", control: (dir: "east", dist: -3cm), stroke: orange)
  edge("c.south", "f.north", routing: "bezier", control: (dir: "west", dist: 2cm), stroke: purple)
  edge("a.south", "d.north", routing: "bezier", control: (dir: "east", dist: 1cm), stroke: yellow)
})
