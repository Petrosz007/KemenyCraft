# Restic Backup

## Installation

Install restic with

    sudo apt update
    sudo apt install restic

Create a local repo with

    restic init --repo ~/minecraft-backup

Copy the `scripts/restic/.restic.example.env`, fill it out with the correct information and rename it to `.restic.env` (remove the `.example` part)

Add this to the end of your crontab (`crontab -e`)

    0 */1 * * * /home/petrosz/KemenyCraft/scripts/restic/restic-backup.sh

This will run the restic update script every hour.

## Backing up with Restic

You can do a one time backup with

    restic -r ~/minecraft-backup/ --verbose backup ~/KemenyCraft

Check the integrity of the files with

    restic -r ~/minecraft-backup/ check

Forget documentation: https://restic.readthedocs.io/en/stable/060_forget.html

Check the snapshots of the repository

    restic -r ~/minecraft-backup/ snapshots

## Restoring from a backup

Restore the backup with ID `9d08b2a1`. You can use `latest` here. The IDs come from the snapshots command

    restic -r ~/minecraft-backup/ restore 9d08b2a1 --target ./tmp/kc-restore

## Resources
1. https://restic.readthedocs.io/en/stable/
2. https://restic.readthedocs.io/en/stable/060_forget.html
3. https://restic.readthedocs.io/en/stable/050_restore.html
