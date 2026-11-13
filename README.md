# Design Archive — ATU Sligo

Self-hosted archive of 3D-scanned (Gaussian splat, SOG) exhibitions and models,
organised into catalogues. Static site — no backend required.

## Structure
    index.html                 Hub landing page
    viewer/                    Shared SuperSplat viewer bundle (see viewer/README.txt)
    architecture/  interior-architecture/  creative-design/  fine-art/
                               Catalogue portals: index.html + projects.json
    models/<catalogue>/        .sog scan files
    posters/<catalogue>/       thumbnails (optional)
    logo.png                   your logo (optional; a monogram shows if absent)

## Deploy
1. Upload the Digital Archive Website/ folder to the library server (root or a sub-path — links are relative).
2. Put the viewer bundle in viewer/ (see viewer/README.txt).
3. Add logo.png at the top level to replace the "ATU" monogram.

## Adding work (per catalogue)
1. Copy the .sog into models/<catalogue>/.
2. Open the catalogue, click Manage archive (or add #admin to the URL).
3. Fill in the student/artist, title, type, year; type just the .sog filename in the
   Model field; drop in a screenshot for the thumbnail. Tick "show full name" only
   with the student's consent — otherwise only first name + initial is published (the full
   name is not written to projects.json, so keep your own consent record).
4. Publish: either use Publish live (commit to a GitHub repo — set it up once under
   "Publish setup") or Export projects.json and upload it into that catalogue's folder.

## Publish live (GitHub) notes
- Works when the site is a GitHub repo (e.g. GitHub Pages). Create a fine-grained
  personal access token scoped to that one repo, with Contents: Read and write.
- The token is stored only in the editor's browser, never in the site files. Use it
  on a trusted machine.
- "File path in repo" is where projects.json sits in the repo, e.g.
  architecture/projects.json (add a leading folder if the archive is in a sub-path).

## Notes
- Serve .sog with a sensible MIME type and HTTP range requests for smooth streaming.
- The light/dark theme choice is shared across the hub and all catalogues.
- Edit the config block at the top of each file to change titles, collection types
  and intro text; edit the hub's CATALOGUES to change the tiles.
- The viewer is SuperSplat Viewer 1.43.2; see viewer/README.txt for how to upgrade it.
- Model types are short names ("Concept", "Site Context"); the pages add the word "model".
- Catalogue pages show one continuous grid; set GROUP_BY_TYPE = true at the top of a
  catalogue's index.html for a headed section per type.
- Large scans can be streamed: a folder in models/<catalogue>/ holding lod-meta.json and its
  chunk folders (made with PlayCanvas splat-transform). Put "<folder>/lod-meta.json" in the
  Model field, e.g. the-mall/lod-meta.json.
