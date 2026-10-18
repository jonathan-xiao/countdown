alter table public.countdown_updates
add column if not exists person text
check (person in ('boyfriend', 'girlfriend'));
