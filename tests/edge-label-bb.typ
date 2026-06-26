// Test: effect of edges with labels on the canvas bounding box
#import "@preview/cetz:0.5.2"
#import "/src/lib.typ": canvas, edge

#set page(width: 12cm, height: 8cm, margin: 5pt)

#box(stroke: green, canvas({
  // Make sure that the rotated label correctly affects the canvas bounding box (green).
  edge((0, 0), (0, 1), label: [This is a very long label!], label-angle: auto, stroke: (dash: "dashed"))
}))
