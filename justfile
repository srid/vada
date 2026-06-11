# Run a command inside the devshell when not already in one.
nix_shell := if env('IN_NIX_SHELL', '') != '' { 'sh -c' } else { 'nix-shell --run' }

# apm is not installed system-wide; run it from PyPI via uvx.
apm := "uvx --from apm-cli apm"

# Agent harnesses we deploy to (keep in sync with apm.yml `targets`).
targets := "claude,opencode"

# List available recipes.
default:
    @just --list

# Install APM and MCP dependencies declared in apm.yml.
install:
    {{nix_shell}} "{{apm}} install -t {{targets}}"

# Compile APM context into distributed per-client files.
compile:
    {{nix_shell}} "{{apm}} compile -t {{targets}}"

# Install then compile — full setup from a fresh checkout.
setup: install compile
