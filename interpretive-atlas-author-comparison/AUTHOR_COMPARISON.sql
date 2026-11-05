-- Run in Supabase SQL Editor BEFORE using Author comparison.
-- Private independent decisions. Do not publish identifiable excerpts automatically.
create table if not exists public.research_author_decisions (
 code_id text not null,
 author_id uuid not null references auth.users(id) on delete cascade,
 author_label text not null,
 categories jsonb not null default '[]'::jsonb,
 completed boolean not null default false,
 updated_at timestamptz not null default now(),
 primary key (code_id, author_id),
 constraint author_categories_array check (jsonb_typeof(categories)='array')
);
alter table public.research_author_decisions enable row level security;
grant select, insert, update on public.research_author_decisions to authenticated;
revoke all on public.research_author_decisions from anon;
drop policy if exists "researchers can view independent decisions" on public.research_author_decisions;
create policy "researchers can view independent decisions" on public.research_author_decisions for select to authenticated using (true);
drop policy if exists "researchers can insert their own decisions" on public.research_author_decisions;
create policy "researchers can insert their own decisions" on public.research_author_decisions for insert to authenticated with check (author_id=auth.uid());
drop policy if exists "researchers can update their own decisions" on public.research_author_decisions;
create policy "researchers can update their own decisions" on public.research_author_decisions for update to authenticated using (author_id=auth.uid()) with check (author_id=auth.uid());

create table if not exists public.research_reconciliations (
 code_id text primary key,
 categories jsonb not null default '[]'::jsonb,
 rationale text not null,
 resolved_by uuid not null references auth.users(id),
 updated_at timestamptz not null default now(),
 constraint reconciliation_categories_array check (jsonb_typeof(categories)='array')
);
alter table public.research_reconciliations enable row level security;
grant select, insert, update on public.research_reconciliations to authenticated;
revoke all on public.research_reconciliations from anon;
drop policy if exists "researchers view reconciliations" on public.research_reconciliations;
create policy "researchers view reconciliations" on public.research_reconciliations for select to authenticated using (true);
drop policy if exists "researchers insert reconciliations" on public.research_reconciliations;
create policy "researchers insert reconciliations" on public.research_reconciliations for insert to authenticated with check (resolved_by=auth.uid());
drop policy if exists "researchers update reconciliations" on public.research_reconciliations;
create policy "researchers update reconciliations" on public.research_reconciliations for update to authenticated using (true) with check (resolved_by=auth.uid());
-- Note: any authenticated project user can read researcher decisions and update consensus.
-- Restrict access further if additional accounts exist in this Supabase project.
