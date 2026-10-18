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
