# Shared updates setup

The countdown uses Supabase so updates can be shared across devices through the
same link.

## Existing projects: enable delete

If you already ran the original schema, open Supabase **SQL Editor**, create a
new query, paste the contents of
[`supabase-delete-policy.sql`](./supabase-delete-policy.sql), and click **Run**.

This allows the delete buttons in the page to remove entries. Because the
current project is public, anyone with the link can add or delete updates.

## New projects

For a new Supabase project, run [`supabase-schema.sql`](./supabase-schema.sql)
instead. It includes the table, read/insert/delete policies, and realtime
configuration.

## Existing projects: add user labels

If the table already exists, run
[`supabase-person-migration.sql`](./supabase-person-migration.sql) in the
Supabase SQL Editor. New updates can then be labeled **Boyfriend** or
**Girlfriend**. Older updates remain visible as “Earlier update.”

Updates older than 7 days are automatically removed for the current countdown
link when the page loads. The **Clear today&rsquo;s updates** button remains
available for immediate manual cleanup.

## Countdown time

The countdown can target a specific local time using the `time` URL parameter
in 24-hour `HH:MM` format:

```text
?date=2026-12-20&time=07:50&title=Morning
```

If `time` is omitted, the countdown targets midnight as before. Each device
interprets the target in its own local timezone.
