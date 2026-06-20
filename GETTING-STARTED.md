# Getting Started (no coding experience needed)

This guide assumes you've never used GitHub or a command line. Take it one step at
a time — you can't break anything.

---

## What this is, in plain English

A folder of plain text files that helps you keep track of your projects, goals, and
what you're doing each day. Nothing fancy is happening under the hood — every file
is just text you can open and read. The magic is the *structure*: a consistent place
for everything, plus two helpers (`/daily` and `/weekly`) that talk you through your
day and tidy the files for you.

You don't have to be technical to use it. If you can write a to-do list, you can use
this.

---

## Step 1: Make your own copy ("forking")

"Forking" just means **making your own copy** of this project that lives under your
account, so your changes never touch the original.

1. Make a free account at [github.com](https://github.com) if you don't have one.
2. Go to the project page: **https://github.com/angirashukla/life-os-template**
3. Click the **Fork** button (top-right). GitHub copies it to your account.

That's it — you now have your own `life-os-template` at
`github.com/<your-username>/life-os-template`.

> **Don't want to use GitHub at all?** You can also click the green **Code** button →
> **Download ZIP**, unzip it on your computer, and skip straight to Step 3. You lose
> the online backup, but everything still works.

---

## Step 2: Get the files onto your computer

If you forked it, download your copy so you can edit it:

1. On *your* forked page, click the green **Code** button → **Download ZIP**.
2. Unzip it.
3. Move the unzipped folder to a simple location and rename it to `life-os`. On a
   Mac that's your home folder, so the path becomes `~/life-os`. (The `~` is just
   shorthand for your home folder.)

The helpers expect the folder to live at `~/life-os`, so this rename matters.

---

## Step 3: Make it yours

Open the folder in any text editor (even TextEdit or Notes works; free apps like
[VS Code](https://code.visualstudio.com) are nicer). Search for `<...>` — every
angle-bracket placeholder is a blank for you to fill in. Start with these two files:

1. **`claude/life-os-context.md`** — the most important one. Tell it your big
   deadline (if any), your time zone, and how you want to be talked to.
2. **`DASHBOARD.md`** — your at-a-glance home page. Fill in your real projects.

Then delete the two example files in `projects/` and add your own (copy
`templates/project.md` to start each one).

---

## Step 4 (optional): Turn on the daily/weekly helpers

The `/daily` and `/weekly` helpers run inside **Claude Code** (a free tool from
Anthropic). If you want them:

1. Install Claude Code (see [its docs](https://docs.claude.com/claude-code)).
2. Copy the two folders inside `skills/` into Claude Code's skills folder — the
   `skills/README.md` file has the exact commands.
3. Open Claude Code and type `/daily` in the morning or `/weekly` once a week.

You can skip this entirely and just edit the files by hand. The helpers save time;
they aren't required.

---

## What each part does

| File / folder | What it's for |
|---|---|
| `README.md` | The technical overview of the system. |
| `GETTING-STARTED.md` | This guide. |
| `DASHBOARD.md` | Your home page. The `## Today` section is your 1–3 things for the day. Open this first every morning. |
| `claude/life-os-context.md` | Your settings: key dates, time zone, and how you want the helpers to behave. Edit this first. |
| `projects/work/` | One file per work project. |
| `projects/personal/` | One file per personal project or side idea. |
| `templates/project.md` | A blank project file. Copy it whenever you start something new. |
| `life/admin.md` | Errands, appointments, recurring chores — the catch-all so nothing slips. |
| `life/goals.md` | Your goals, from this month out to long-term. |
| `life/habits.md` | A simple weekly habit checklist. |
| `reviews/` | Weekly snapshots the `/weekly` helper writes, so you can look back. |
| `learning_catalog.md` | A parking lot for tips and ideas you want to remember. |
| `skills/` | The `/daily` and `/weekly` helpers, plus install instructions. |
| `bin/run-weekly.sh` | Optional: runs the weekly review automatically on a schedule. Ignore it if you'd rather run reviews yourself. |

---

## What's inside a project file

Open `projects/work/example-work-project.md` to see the shape. Every project tracks
the same few things: a **status** (Active / Done / on hold), a **priority**, the
**next concrete action**, anything you're **blocked or waiting on**, and a dated
**progress log** so you can see what moved and when. Fill in what's useful; leave the
rest blank.

---

## A simple daily routine

1. Open `DASHBOARD.md`. Look at the `## Today` list.
2. Pick (or confirm) your 1–3 things for the day.
3. As you finish things, check them off (`- [ ]` becomes `- [x]`) and jot a line in
   that project's progress log.
4. Once a week, glance back over your projects and reset the dashboard for the week
   ahead.

That's the whole system. Everything else is just making that routine easier.
