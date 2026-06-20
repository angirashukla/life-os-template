# life-os (template)

A personal management system for tracking work projects, personal projects, and
personal life. Everything is plain markdown — read or edit any file by hand, or
let the Claude Code skills (`/daily`, `/weekly`) do the updating.

> **New to GitHub or the command line?** Start with
> **[GETTING-STARTED.md](GETTING-STARTED.md)** — a plain-language, no-code walkthrough.
>
> This is a starter template. Search for `<...>` placeholders and fill them in.
> Delete the example project files once you've added your own.

## Daily use
1. Each morning, run `/daily` in Claude Code. It reviews everything, surfaces
   what matters given your deadlines, and talks through the day with you.
2. Run `/weekly` once a week (or schedule it — see `bin/run-weekly.sh`) for a
   step-back review that refreshes the dashboard and writes a dated snapshot.
3. Open `DASHBOARD.md` whenever you want a single-glance overview. Its top
   `## Today` section is your 1–3 items for the day — set with you in `/daily`,
   carried forward until done or dropped.

## Structure
- `DASHBOARD.md` — single-glance overview; refreshed by the skills
- `projects/work/` — work projects (one markdown file each)
- `projects/personal/` — personal projects (one markdown file each)
- `life/admin.md` — errands, appointments, recurring tasks
- `life/goals.md` — short- and long-term goals
- `life/habits.md` — simple weekly habit tracker
- `reviews/` — dated weekly review snapshots
- `learning_catalog.md` — tips, patterns, and decisions worth keeping
- `templates/project.md` — copy this to start a new project
- `claude/life-os-context.md` — shared context the skills read (edit this first)

## Adding a project
Copy `templates/project.md` into `projects/work/` or `projects/personal/`,
rename it, fill it in, then add a row to the DASHBOARD's project table.

## How updates happen
The `/daily` and `/weekly` skills read these files, discuss with you, and write
back: progress logs, checked-off next actions, a refreshed dashboard. You can
also just edit any file directly — it's only markdown.

## What you'll want to customize first
1. `claude/life-os-context.md` — your key dates, calendar, and style rules.
2. `DASHBOARD.md` — your countdown (if any) and project table.
3. Replace the example files in `projects/` with your real projects.
