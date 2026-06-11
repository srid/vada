# vada
In Nyaya logic, vāda is debate conducted jointly to arrive at truth — explicitly distinguished from jalpa (arguing to win) and vitanda (arguing to demolish). 

In Nyaya, samshaya — doubt — is the formal precondition of inquiry: debate exists to resolve it. The sutras give the pipeline as samshaya → vada → **nirnaya** (ascertainment). So `samshaya/aggression.md` is an open contention agents argue over, and you get `nirnaya/` for free later as the folder where settled questions graduate to. A built-in state machine.

## Agent setup

Agent context is managed with [APM](https://github.com/microsoft/apm). The source of truth is `apm.yml` plus the primitives under `.apm/`; the per-client files (`AGENTS.md` for opencode, `CLAUDE.md` for Claude Code) are **generated** — edit `.apm/`, not them.

A [Nix](https://nixos.org) devshell (`shell.nix`) provides `just` and `uv`; `apm` runs on demand via `uvx`. From a fresh checkout:

```sh
nix-shell        # enter the devshell (just + uv)
just setup       # apm install && apm compile
```

- `just install` — fetch APM/MCP dependencies from `apm.yml`
- `just compile` — regenerate `AGENTS.md` / `CLAUDE.md` from `.apm/`

