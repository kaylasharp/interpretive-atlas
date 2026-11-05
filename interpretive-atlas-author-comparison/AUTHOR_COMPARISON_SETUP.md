# Author comparison — setup and use

1. Back up the existing shared workspace as JSON from Interpretive Atlas.
2. In Supabase **SQL Editor**, run `AUTHOR_COMPARISON.sql` once. Do not paste SQL into GitHub or Vercel.
3. Deploy this branch as a **Vercel preview** and verify sign-in before merging to `main`.
4. Sign in as your own researcher account; open **Author comparison** and click **Load researcher decisions**.
5. For each code, independently select category checkboxes, mark **I have completed my review**, and click **Save my decision**. No categories selected + completed is a deliberate none-selected decision; an unfinished code is pending.
6. Have the other researcher sign in with their separate account and repeat. Refresh decisions to compare.
7. Record final category selections and a reconciliation rationale together. This does not alter original independent assignments or the existing shared workspace.
8. Export your own CSV, all decisions CSV, comparison CSV, or print the comparison as PDF.

**Public dashboard:** This release intentionally does not publish private author assignments, excerpts, or reconciliation notes. A public aggregate summary should be added after the team decides which statistics and descriptions are safe to release.

**Important:** This is a descriptive comparison, not Cohen's kappa or another intercoder reliability measure. A partial match means at least one category overlaps, not complete agreement. The comparison is designed for two researchers; more than two authors would require a revised comparison rule. Existing shared assignments remain separate and are not migrated or attributed to either researcher.

**Security:** The SQL grants read access to authenticated Supabase users. If your Supabase project permits accounts beyond the two researchers, add an explicit research-team membership policy before storing private coding decisions.
