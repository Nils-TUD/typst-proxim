// Test: outer placement relative to explicit reference anchors.
#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, node

#set page(width: 12cm, height: 7cm, margin: 5pt)

#canvas({
  node((0, 0), [Ref], name: "ref", width: 3cm, height: 3cm, stroke: black)

  node((west-of: "ref.north-west"), [W.NW], width: 1cm, height: .5cm, fill: silver)
  node((west-of: "ref.south-west"), [W.SW], width: 1cm, height: .5cm, fill: luma(220))

  node((east-of: "ref.north-east"), [E.NE], width: 1cm, height: .5cm, fill: aqua.lighten(60%))
  node((east-of: "ref.south-east"), [E.SE], width: 1cm, height: .5cm, fill: aqua.lighten(40%))

  node((north-of: "ref.west"), [N.W], width: 1cm, height: .5cm, fill: orange.lighten(50%))
  node((north-of: "ref.east"), [N.E], width: 1cm, height: .5cm, fill: orange.lighten(30%))
  node((south-of: "ref.west"), [S.W], width: 1cm, height: .5cm, fill: green.lighten(55%))
  node((south-of: "ref.east"), [S.E], width: 1cm, height: .5cm, fill: green.lighten(35%))

  node((west-of: "ref.north"), [W.N], width: 1cm, height: .5cm, fill: red.lighten(50%))
  node((east-of: "ref.north"), [E.N], width: 1cm, height: .5cm, fill: blue.lighten(30%))
  node((west-of: "ref.south"), [W.S], width: 1cm, height: .5cm, fill: yellow.lighten(55%))
  node((east-of: "ref.south"), [E.S], width: 1cm, height: .5cm, fill: black.lighten(55%))

  node((east-of: ("ref", 3)), [Ref2], name: "ref2", width: 3cm, height: 3cm, stroke: black)

  node((north-west-of: "ref2.north-west"), [NW], width: .8cm, height: .45cm, fill: purple.lighten(65%))
  node((north-east-of: "ref2.north-east"), [NE], width: .8cm, height: .45cm, fill: purple.lighten(45%))
  node((south-west-of: "ref2.south-west"), [SW], width: .8cm, height: .45cm, fill: purple.lighten(25%))
  node((south-east-of: "ref2.south-east"), [SE], width: .8cm, height: .45cm, fill: purple)

  node((west-of: "ref2.west"), [W.W], width: 1cm, height: .5cm, fill: orange.lighten(50%))
  node((east-of: "ref2.west"), [E.W], width: 1cm, height: .5cm, fill: orange.lighten(30%))
  node((west-of: "ref2.east"), [W.E], width: 1cm, height: .5cm, fill: green.lighten(55%))
  node((east-of: "ref2.east"), [E.E], width: 1cm, height: .5cm, fill: green.lighten(35%))

  node((north-of: "ref2.north"), [N.N], width: 1cm, height: .5cm, fill: red.lighten(50%))
  node((south-of: "ref2.north"), [S.N], width: 1cm, height: .5cm, fill: blue.lighten(30%))
  node((north-of: "ref2.south"), [N.S], width: 1cm, height: .5cm, fill: yellow.lighten(55%))
  node((south-of: "ref2.south"), [S.S], width: 1cm, height: .5cm, fill: black.lighten(55%))
})
