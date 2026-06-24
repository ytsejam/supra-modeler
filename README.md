# Supra Modeler

NURBS/BRep direct modeling inside Autodesk Maya.

Built on [OpenCASCADE Technology](https://dev.opencascade.org/) — the same kernel used by FreeCAD, Salome, and most serious open-source CAD tools. Runs as a native Maya plugin (.mll), no separate process, no bridge.

The goal is simple: Plasticity-style direct modeling workflows for people who live inside Maya. Hard surface, automotive, visualization. Designed at Dallara Automobili.

---

## Status

**Public Beta** — free to download, bugs expected.

→ Get the beta: https://msd-suite.com/supra-beta

---

## What it does

- BRep solid and shell modeling
- Boolean operations (union, cut, intersect)
- Fillet, chamfer, bevel
- Face extrude, profile extrude, revolve
- Loft, patch from curves, bridge
- Fill hole G0/G1
- 2D curve toolset — circle, arc, ellipse, rect, spline CV/EP, fillet, offset, join, extend
- Imprint and trim on shells
- Shift+click multi-select edge/face
- DWG/DXF import
- 50-level undo

## Requirements

- Autodesk Maya 2025
- Windows 10/11 x64

---

## Download

https://msd-suite.com/supra-beta

Register with your email, get the download link immediately.

---

## Bug reports & feature requests

Use GitHub Issues: https://github.com/ytsejam/supra-modeler/issues

No Jira, no forms, just open an issue. Be specific — what you did, what happened, what you expected. Script Editor output is always helpful.

---

## LGPL Compliance

Supra Modeler uses OCCT statically linked under LGPL 2.1.
Object files for relinking are in lgpl_compliance/

---

## License

Supra Modeler is proprietary software. Free during beta.
See LICENSE.md.

---

Made by Dario Ortisi — https://msd-suite.com