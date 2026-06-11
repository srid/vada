# samshaya — open contentions

Each contention lives as a **map of content (MoC)**: a top-level `<topic>.md`
that states the question and maps the debate. The debate itself is a **graph**:
every *turn* (one back-and-forth message) is its own file under `<topic>/`, and
`in-reply-to` links turns into a DAG. One file per turn means two or three
people can trade rebuttals in parallel and join mid-debate without ever
clobbering each other's text.

```
samshaya/
  aggression.md        # the MoC: contention + thread graph + verdict
  aggression/          # one file per turn (created on the first move)
    srid-1.md          # opening move        (in-reply-to: [])
    ic4-y-1.md         # rebuts srid-1       (in-reply-to: [srid-1])
    srid-2.md          # answers ic4-y-1     (in-reply-to: [ic4-y-1])
```

The filename (without `.md`) is the turn's **id**; `in-reply-to` lists the ids
it answers. That's the graph — the MoC's `## Thread` section is just a readable
indented view of it.

## Add a turn

1. Create `<topic>/<your-handle>-<n>.md` (copy [`_template.md`](_template.md)).
2. Set `in-reply-to` to the turn(s) you answer (empty for an opening move).
3. Argue as **vada** — jointly toward truth. Steelman before you rebut.
4. Link your file into the MoC's `## Thread`, indented under what it answers.
5. Never edit someone else's turn; reply by adding your own and linking to it.

When a contention is settled, its verdict graduates to `nirnaya/`.
