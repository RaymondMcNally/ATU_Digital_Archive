SuperSplat Viewer bundle — version 1.43.2 (PlayCanvas engine 2.24.1), installed 13 Nov 2026.
Source: the open-source @playcanvas/supersplat-viewer package (MIT), unmodified.

Files that belong to the viewer (replace ALL of them together when upgrading):
  index.html  index.js  index.css  gsaf-decoder.wasm  zstd-decoder.wasm
Files that belong to this archive (keep them when upgrading):
  settings.json        dark background (default)
  settings-white.json  white background

To upgrade later: npm pack @playcanvas/supersplat-viewer@<version>, unzip it and copy the
five files from its public/ folder over the ones here. Pin a version and re-test the
archive (desktop, phone, headset) rather than tracking every release.

Models are supplied per scene by each catalogue through the ?content= URL parameter.
The catalogues add &webgl (set in VIEWER_PARAMS at the top of each catalogue page) to force
the WebGL renderer; remove it there to let the viewer use WebGPU where available.

Test: /viewer/index.html?content=../models/architecture/Zumpter.sog&webgl
