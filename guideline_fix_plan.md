# ICRA 2026 Compliance Checklist and Page-Reduction Plan

## A) Mandatory compliance fixes (ICRA 2026 + IEEEtran)

1) Page limit (total ≤ 8 pages: 6 main + up to 2 for refs)
- Current: 9 pages. Must reduce to 8.
- How: tighten floats, shorten captions, compress repeated text (see plan below), and balance the last page columns.

2) Double‑anonymous submission
- For submission (not camera‑ready):
  - Replace author names/affiliation with “Anonymous Authors”.
  - Remove funding/thanks footnotes.
  - Ensure no self‑identifying references (URLs, acknowledgments) in the PDF.
  - Keep actual author list in PaperPlaza metadata only.

3) US Letter + IEEE two‑column format
- Using `ieeeconf` 10pt, letterpaper. OK.
- No page numbers. OK.
- Fonts are Type 1 per log. OK.

4) Figures/tables within margins
- All floats fit; some underfull warnings are acceptable.
- Keep captions concise (≤1–2 lines); avoid paragraph‑length captions.

5) References
- Numeric citations via `cite`. OK.
- Ensure DOIs/URLs where available (consistency pass recommended).
- References can occupy up to 2 additional pages (counted within 8 total).

6) Last page column balancing
- ICRA reminder requires manual balance.
- Action: add small `\addtolength{\textheight}{-<x>}` or minor text trimming on last page to equalize columns.

7) Optional video
- If provided: ≤20 MB, ≤180 s, progressive MP4, height ≥480 px, ≥20 fps.

8) AI tools disclosure (camera‑ready only)
- Add a single‑line acknowledgment of AI editing/formatting tools (omit in blind submission).

---

## B) Page‑reduction plan to reach 8 pages (do not apply yet)

Target: remove ~0.75–1.0 page total without losing technical content.

1) Results: remove repeated experimental design text (≈ 5–8 lines)
- Location: Results → “Newsworthiness‑Driven Navigation” and “Effect of Background‑Context Variation”.
- Action: Keep only the table references and one‑line procedure pointer (we already trimmed part of this); remove any repeated definitions of “decision” and procedure already covered in Section IV.
- Expected save: 5–8 lines.

2) Results: shorten pre‑Table IV paragraph (≈ 3–5 lines)
- Location: Results → “Effect of Background‑Context Variation”.
- Action: Keep the divergence definition in one sentence and point to Table IV + Fig. 3.
- Expected save: 3–5 lines.

3) Methodology: compress “Rationale and sensitivity” to 1–2 sentences (≈ 4–6 lines)
- Location: Methodology → “Newsworthiness and control”.
- Action: Keep the validation ranges and the key trade‑off in a single compact line.
- Expected save: 4–6 lines.

4) Evaluation section: compress the “Operationally …” details (≈ 5–7 lines)
- Location: Evaluation and Acceptance (metrics implementation paragraph).
- Action: Replace the long enumerations (Sentence‑BERT/CLIP/MNLI wiring) with one sentence referencing the Evaluation Dimensions table.
- Expected save: 5–7 lines.

5) Hardware setup: trim enclosure/mast prose (≈ 3–5 lines)
- Location: Experimental & Evaluation Setup → Hardware Setup.
- Action: Keep the front/rear cameras, mic array, AGX + Limo Pro, and compute split; compress enclosure/mast description by half.
- Expected save: 3–5 lines.

6) Figure/table captions: ensure single concise sentence (≈ 2–4 lines)
- Location: Fig. 1, Fig. 3, Tables III–VI.
- Action: Remove non‑essential clauses (e.g., restating metrics defined in text); keep exactly what the figure/table shows.
- Expected save: 2–4 lines.

7) Prompt box: micro‑shrink (≈ 2–3 lines)
- Location: Methodology → after VideoLLaMA3 decision paragraph.
- Action: Slightly tighten wording (keep fields; remove redundancies like restating “prefer rotation when uninformative”).
- Expected save: 2–3 lines.

8) Spacing tweaks (≈ 2–4 lines)
- Action: Reduce image widths slightly (1–2%), set all wide tables to `\scriptsize` (already done), avoid extra `\vspace`.
- Balance last page columns.
- Expected save: 2–4 lines.

Aggregate expected savings: ~21–36 lines (≈ 0.8–1.4 pages), sufficient to reach 8 pages.

---

## C) Suggested blind/camera‑ready toggles (to add later)

- `\newif\ifblind` flag in preamble to switch between anonymous and camera‑ready author blocks.
- Conditional Acknowledgments/AI disclosure enabled only when `\ifblind` is false.

---

## D) Pre‑submission checklist (quick)

- [ ] Total length 8 pages
- [ ] Double‑anonymous (no names/affiliations/thanks)
- [ ] Figures/tables in margins; concise captions
- [ ] Last page columns balanced
- [ ] PDF verified in IEEE PDF eXpress
- [ ] (Optional) Supplementary video meets spec
- [ ] References complete with DOIs where available
