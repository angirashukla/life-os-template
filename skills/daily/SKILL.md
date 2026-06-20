---
name: daily
description: Interactive morning check-in for the life-os personal management system. Reviews ~/life-os/ project and life files, reconciles yesterday's Today list, surfaces priorities given upcoming deadlines, and sets today's 1-3 items with the user. Trigger when the user runs /daily or asks for a morning check-in or start-of-day review.
---

@~/life-os/claude/life-os-context.md

# Daily Check-In

A lightweight morning ritual. Goal: know what's urgent, update what got done, and
leave a concrete, glanceable "Today" list in DASHBOARD.md so you always know what
you're on when you look.

## Steps

1. **Read the system.** In parallel, read:
   - `~/life-os/DASHBOARD.md`
   - All files in `~/life-os/projects/work/` and `~/life-os/projects/personal/`
   - (Optional) today's calendar events, if calendar integration is set up — see
     `claude/life-os-context.md` for the calendar IDs and timezone.

2. **Reconcile yesterday's Today list — before asking anything.** Compare the
   `## Today` items in DASHBOARD.md against the progress logs in the project files.
   Check off anything the evidence already shows moved. Don't ask the user to
   confirm what's already visible.

3. **Ask one question.**
   > "What did you work on yesterday, and what are you on today?"

   Keep it to this. No task counts, no scoring.

4. **Update project files silently.** From the answer, infer which projects were
   touched and append a dated progress entry to each relevant file in
   `~/life-os/projects/`. Do this without asking for explicit instructions.

5. **Set today's list together.** Propose 1–3 items for `## Today`, drawn from:
   what the user just said they're on, the week's focus, and deadlines ≤3 days out.
   One short message — "Today: X, Y, Z?" — then:
   - They confirm, edit, or replace. **Their version is final.** If they swap an
     item out, swap it and don't re-suggest it today.
   - Unfinished items from yesterday carry forward with a tag like "(carried since Mon)".
   - **3-day rule:** if an item has carried 3+ days, ask once — drop it, shrink it
     to a smaller first step, or keep it. Apply the answer and stop mentioning it.
   - Make the top item a concrete, startable action ("open X, draft section 2"),
     not a vague topic.

6. **Surface only genuine risks.** Flag (briefly, once) any items that are:
   - Deadline in ≤3 days and not visibly in progress
   - No activity logged in 14+ days and marked High priority

   Do NOT flag things the user just said they're working on. Do NOT repeat flags
   from previous check-ins unless the deadline has passed.

7. **Update DASHBOARD.md.** Rewrite `## Today` with today's date, the confirmed
   items, carry-over tags, and a one-line "Tomorrow:" note if the calendar warrants
   it. **Finished items don't linger:** anything completed gets a dated line in its
   project's progress log and is then removed from `## Today` — no strikethrough
   trail, no tally. Only unfinished items carry forward. Keep the rest current
   without overwriting hand edits.

**Note:** Completion capture isn't limited to this skill. Per `life-os-context.md`,
whenever the user mentions finishing something in any conversation, update the files
on the spot. By the time /daily runs, much may already be logged — reconcile, don't
double-log.

## What NOT to do
- No points, streaks, rewards, or timed-block tracking (unless the user has asked
  for gamification in `life-os-context.md`)
- Never assign tasks unilaterally — propose, the user decides; once decided, that's
  the list
- Never push back when the user changes a goal — change it immediately
- Don't ask for explicit instructions to update a project file — infer and do it
- Don't flag tasks that are already visibly in progress

## Style
Conversational, brief. This is a 3-minute ritual. Match the user's energy.
