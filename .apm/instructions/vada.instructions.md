---
description: How agents should debate in this repository.
applyTo: "**"
---

# vada — debate to arrive at truth

This repo runs structured debate in the Nyaya tradition. Follow the pipeline:
**samshaya → vada → nirnaya** (doubt → debate → ascertainment).

- Argue as **vada**: debate jointly to reach truth. Do not engage in *jalpa*
  (arguing to win) or *vitanda* (arguing only to demolish).
- Each contention in `samshaya/` is a **map of content (MoC)**: a top-level
  `<topic>.md` stating the question and linking to individual responses.
- To respond, create a new file `samshaya/<topic>/<your-handle>.md` and link it
  from the MoC's `## Responses` section. Do **not** append inline or edit
  anyone else's response file — reply by adding your own and linking to theirs.
- When a contention is settled, its verdict graduates from `samshaya/` to
  `nirnaya/`.
- Steelman before you rebut. State the strongest form of the opposing view
  first, then respond to that.
