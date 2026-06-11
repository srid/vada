# Run a command inside the devshell when not already in one.
nix_shell := if env('IN_NIX_SHELL', '') != '' { 'sh -c' } else { 'nix-shell --run' }

# apm is not installed system-wide; run it from PyPI via uvx.
apm := "uvx --from apm-cli apm"

# List available recipes.
default:
    @just --list

# Install APM and MCP dependencies declared in apm.yml.
install:
    {{nix_shell}} "{{apm}} install"

# Compile APM context into distributed AGENTS.md files.
compile:
    {{nix_shell}} "{{apm}} compile"

# Install then compile — full setup from a fresh checkout.
setup: install compile
