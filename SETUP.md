# Shared updates setup

The countdown uses Supabase so updates can be shared across devices through the same link.

## 1. Create the Supabase project

1. Create a project at [supabase.com](https://supabase.com).
2. Open **SQL Editor** and run [`supabase-schema.sql`](./supabase-schema.sql).
3. Open **Project Settings > API** and copy the project URL and `anon` public key.
4. Put those values in [`supabase-config.js`](./supabase-config.js).

The `anon` key is intended for browser use. Do not put a `service_role` key in this project.

Updates are scoped to the page path and query string. Devices using the same
countdown link share updates, while different `?date=...&title=...` links have
separate tables.

## 2. Deploy to GitHub Pages

Commit and push `index.html`, `styles.css`, `supabase-config.js`, and
`supabase-schema.sql` to the repository used by GitHub Pages. The page will
load and display only updates from the current local calendar day.

Anyone who can access the link can currently read and add updates. Supabase
row-level security permits only those two operations; editing and deleting
updates are not enabled.
