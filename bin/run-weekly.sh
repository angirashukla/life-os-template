#!/bin/bash
# OPTIONAL: run the weekly review unattended (e.g. via cron or launchd on a
# schedule). You don't need this — you can just run `/weekly` by hand. Delete this
# file if you prefer to run reviews manually.

export PATH="$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:/usr/bin:/bin"
LOG="$HOME/life-os/reviews/_launchd.log"

{
  echo ""
  echo "=== weekly review run: $(date) ==="
  cd "$HOME/life-os" || { echo "ERROR: cannot cd to ~/life-os"; exit 1; }

  claude -p "Use the /weekly skill to run this week's review of the life-os system at ~/life-os/. This is an unattended scheduled run with no user present: complete every step, write the dated review file into ~/life-os/reviews/, refresh ~/life-os/DASHBOARD.md, and write all recommendations into those files instead of asking questions." \
    --dangerously-skip-permissions

  echo "=== finished: $(date) (exit $?) ==="
} >> "$LOG" 2>&1
