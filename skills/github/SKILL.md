---
name: github
version: 1.0.0
description: "Interact with GitHub using the `gh` CLI. Use `gh issue`, `gh pr`, `gh run`, and `gh api` for issues, PRs, CI runs, and advanced queries."
author: steipete
---

# GitHub Skill

## Overview
This skill provides access to GitHub functionality via the official `gh` CLI.

## Prerequisites
- `gh` CLI installed and authenticated

## Usage
All GitHub operations are executed via the `gh` command:

### Issues
- List issues: `gh issue list`
- Create issue: `gh issue create --title "Title" --body "Description"`
- View issue: `gh issue view <number>`

### Pull Requests
- List PRs: `gh pr list`
- Create PR: `gh pr create --title "Title" --body "Description"`
- Merge PR: `gh pr merge <number>`

### CI Runs
- List runs: `gh run list`
- View run details: `gh run view <run-id>`
- Rerun run: `gh run rerun <run-id>`

### Advanced Queries
Use `gh api` for full GitHub API access:
```bash
gh api /repos/{owner}/{repo}/issues
```

## Authentication
Run `gh auth login` to authenticate with your GitHub account.
