---
paths:
  - "apm.yml"
  - ".apm/**"
---

# Regenerate after changing APM config

Whenever you modify `apm.yml` or anything under `.apm/`, run:

```sh
just setup
```

This runs `apm install` (resolve dependencies + lockfile) and `apm compile`
(regenerate `AGENTS.md` / `CLAUDE.md`). Commit the regenerated files alongside
your change. Do not edit `AGENTS.md`, `CLAUDE.md`, or anything under
`apm_modules/` by hand — edit the source in `.apm/` and recompile.

Always drive APM through the justfile (`just install`, `just compile`,
`just setup`), never by calling `apm` directly.
