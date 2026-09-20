Place the SuperSplat viewer bundle here.

Option A (npm): npm install @playcanvas/supersplat-viewer, then serve its built
index.html, index.js, index.css and settings.json from this /viewer/ folder.

Option B (no npm): In the SuperSplat Editor choose File > Export > Viewer App,
unzip it here, and delete the bundled splat file — models are supplied per-scene
via the ?content= URL parameter by each catalogue.

Test: /viewer/?content=../models/architecture/example.sog
