create policy "Anyone can delete countdown updates"
on public.countdown_updates
for delete
to anon
using (true);
