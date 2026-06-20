---
name: weekly
description: Weekly review for the life-os personal management system. Reads all of ~/life-os/, writes a dated review snapshot, refreshes the dashboard, flags stale and overdue items, and plans the week ahead. Trigger when the user runs /weekly, asks for a weekly review, or when a scheduled weekly routine fires.
---

@~/life-os/claude/life-os-context.md

# Weekly Review

A structured weekly review and planning session.

## Steps

1. **Read everything** under `~/life-os/`: `DASHBOARD.md`, all project files, all
   files in `life/`, and the most recent file in `reviews/`. (Optional) read the
   coming week's calendar if integration is set up — see `life-os-context.md`. If
   calendar tools are unavailable (e.g. an unattended run), skip and continue.

2. **Compute any countdown.** If `life-os-context.md` names a key date, report the
   weeks/days remaining.

3. **Planned vs. happened.** Take last week's 3 focus items (from the previous
   review file / dashboard) and check each against the evidence — progress logs,
   checked-off Today items. For each: done / moved / didn't move, with one honest
   line. No scores, no judgment language. If something didn't move, the question is
   "carry, shrink, or drop?" — not "why not".

4. **Assess each project:**
   - What moved this week (check the progress logs)
   - What is stale — no progress in 14+ days
   - Overdue deadlines or milestones
   - Whether anything with a deadline is on track

5. **Write a review snapshot.** Create `~/life-os/reviews/YYYY-Www-review.md` with:
   planned vs. happened, what moved, what slipped, and focus for next week.

6. **Refresh the DASHBOARD.** Update:
   - Countdown line (if any)
   - `## Today` — reset for the new week: date line, seed with the top focus item,
     drop completed items, carry unfinished ones with their tags
   - Project statuses
   - `## This week's focus` — **max 3 items** (no more). If the user wants more,
     tell them the rest live in the project files where they belong.
   - `## Upcoming deadlines`

7. **Discuss the week ahead.** If the user is present, confirm the 3 priorities and
   adjust together — their choices are final. Offer to add calendar blocks for the
   focus items — create only after they confirm. If running unattended, write
   recommendations into the review file and dashboard instead of asking.

## What NOT to do
- No points, streaks, or rewards (unless the user opted into gamification)
- Don't repeat slippage flags week after week — if an item has slipped twice, force
  the carry/shrink/drop decision instead of re-flagging

## Style
Honest about what slipped. Concise. Keep the week's focus to 3 — fewer visible
commitments = less overwhelm = more follow-through.
