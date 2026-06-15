// Test: explicit-anchor outer placement with non-zero distance and grouped names.
#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, node

#set page(width: 7cm, height: 5cm, margin: 5pt)

#canvas({
  cetz.draw.group(name: "g", {
    node((0, 0), [Inner], name: "inner", width: 1.8cm, height: .9cm, stroke: black)
  })

  node((west-of: ("g.inner.north-west", .4cm)), [W], width: .8cm, height: .45cm, fill: silver)
  node((east-of: ("g.inner.south-east", .4cm)), [E], width: .8cm, height: .45cm, fill: silver)
  node((north-of: ("g.inner.north", .5cm)), [N], width: .8cm, height: .45cm, fill: silver)
  node((south-of: ("g.inner.south", .5cm)), [S], width: .8cm, height: .45cm, fill: silver)
})
