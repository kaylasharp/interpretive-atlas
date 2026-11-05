-- RUN ONCE in Supabase SQL Editor.
-- PUBLIC DISCLOSURE: Every saved code, excerpt, category, theme, memo and decision
-- in the main workspace will be visible to anyone on the internet.
-- This does not make the private research_workspaces table publicly readable.

create table if not exists public.research_publications (
  id text primary key,
  workspace jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.research_publications enable row level security;
revoke all on public.research_publications from public, anon, authenticated;
grant usage on schema public to anon, authenticated;
grant select on public.research_publications to anon, authenticated;

drop policy if exists "public can read published research" on public.research_publications;
create policy "public can read published research"
  on public.research_publications for select to anon, authenticated
  using (id = 'main');

-- Only the database trigger may publish. Browsers cannot insert, update or delete.
create or replace function public.sync_research_publication()
returns trigger language plpgsql security definer
set search_path = public, pg_temp
as $$
begin
  if new.id = 'main' then
    insert into public.research_publications (id, workspace, updated_at)
    values ('main', new.workspace, new.updated_at)
    on conflict (id) do update set workspace = excluded.workspace, updated_at = excluded.updated_at;
  end if;
  return new;
end;
$$;

revoke all on function public.sync_research_publication() from public, anon, authenticated;
drop trigger if exists publish_research_on_save on public.research_workspaces;
create trigger publish_research_on_save
after insert or update of workspace, updated_at on public.research_workspaces
for each row execute function public.sync_research_publication();

-- Initialize the public table from the current saved workspace.
insert into public.research_publications (id, workspace, updated_at)
select id, workspace, updated_at from public.research_workspaces where id = 'main'
on conflict (id) do update set workspace = excluded.workspace, updated_at = excluded.updated_at;
