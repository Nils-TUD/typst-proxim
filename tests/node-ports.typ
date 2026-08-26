#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, node, edge

#set page(width: 9cm, height: 6cm, margin: 5pt)

#canvas({
  node((0, 0), [A], width: 2, height: 2, ports: (left: 0, top: 2, right: ("in", "out", "enable"), bottom: 1), name: "a")
  node((east-of: ("a", 1)), [B], width: 2, height: 2, ports: 2, name: "b")
  //node((north-of: ("a.n.1")), [C], width: 1, height: 1, name: "c")
  edge("a.n.1", "b")
  edge("a.n.2", "b.e.1", stroke: blue)
  edge("a.e.in", "b.s.2", stroke: red)
  edge("a.e.out", "b.s.1", stroke: green)
  edge("a.e.enable", "b.n.1", stroke: purple)
  edge("a.s.1", "b.e.2", stroke: orange)
})

