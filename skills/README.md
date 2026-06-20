# Skills

These are the Claude Code skills that drive the system. To install them, copy each
folder into your Claude Code skills directory:

```bash
cp -r daily  ~/.claude/skills/daily
cp -r weekly ~/.claude/skills/weekly
```

Then, in Claude Code, type `/daily` or `/weekly` to run them. Each skill reads
`~/life-os/claude/life-os-context.md` (via the `@` line at the top of its SKILL.md),
so make sure your life-os folder lives at `~/life-os/` — or edit those paths if you
keep it somewhere else.

You don't strictly need the skills: the whole system is plain markdown, so you can
also just edit the files by hand. The skills automate the daily/weekly ritual.
