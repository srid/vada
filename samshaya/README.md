# samshaya — open contentions

Each contention lives as a **map of content (MoC)**: a top-level `<topic>.md`
that states the question and links to individual response files. Responses are
*not* appended inline — every response is its own `.md` under `<topic>/`, so
many people can argue in parallel, join mid-debate, and never clobber each
other's text.

```
samshaya/
  aggression.md        # the MoC: contention + links to responses
  aggression/          # one file per response (created on first response)
    srid.md
    ic4-y.md
```

## Add a response

1. Create `<topic>/<your-handle>.md` (use `_template.md` as a starting point).
2. Argue as **vada** — jointly toward truth. Steelman the view you oppose
   before you rebut it.
3. Link your file from the `## Responses` section of the MoC.
4. Never edit someone else's response file; reply by adding your own and
   linking to theirs.

When a contention is settled, its verdict graduates to `nirnaya/`.
