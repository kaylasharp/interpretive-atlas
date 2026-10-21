INTERPRETIVE ATLAS V4 — LIVE PUBLIC READ-ONLY VIEW

PUBLICATION WARNING: ALL SAVED RESEARCH CONTENT (INCLUDING EXCERPTS, MEMOS, DECISIONS) IS PUBLICLY READABLE. Only use with material approved for unrestricted public disclosure. Existing researcher index.html also embeds source records publicly.

1. Back up your researcher workspace (Backup JSON).
2. Open config.js in a text editor. Replace the Supabase Project URL and publishable/anon key placeholders with your project's URL and publishable key. These are public client credentials, NEVER use a service_role/secret key.
3. Run PUBLIC_ACCESS.sql in your Supabase SQL Editor. It creates a separate publicly readable publications table, and a trigger that mirrors every researcher save to that table. It does NOT grant public access to the private researcher table.
4. Upload all the unzipped files as a folder to Vercel Drop (or deploy this ZIP if Vercel Drop supports it). Keep index.html, instructor.html and config.js at the same directory level.
5. Open YOUR-DEPLOYMENT-URL/instructor.html in Incognito. No login or setup should be needed.
6. In the researcher dashboard, load latest shared work, then save. Public view refreshes automatically every 30 seconds.

Note: The public view is read-only; anonymous users have SELECT only on research_publications. If a researcher later saves private notes or identifiable data in the shared workspace, those will also be published automatically. There is no review/approval step.


V5 UX & PASSWORD RECOVERY
- Researcher sign-in now has Forgot password? for both researchers.
- In Supabase Dashboard > Authentication > URL Configuration, add your deployed researcher URL (for example https://your-site.vercel.app/) to Redirect URLs. Also set Site URL appropriately. If you use multiple deployments, allowlist each exact URL or an appropriate trusted wildcard.
- Open the reset email on the same site/domain that requested it. Recovery links expire; request another if necessary.
- Code Explorer category checkboxes are now accessible, responsive selection cards.
- Tooltips are available by hovering or keyboard-focusing the ? icons.
- This ZIP does not change database schema, policies, or existing research data.
- Back up JSON before replacing your current deployment.
