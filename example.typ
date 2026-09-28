#import "lib.typ": editorial, finding, section-divider, verification-limits

#show: editorial.with(
  title: "A Review Of Odin Relay Frontend",
  date: "September 2, 2026",
  org: "Revketer LLC.",
)

= Security findings

#finding(
  [Unchecked loginUrl redirect],
  "src/App.tsx: 103-105",
  [Takes `loginUrl` from `/api/invitations/start` and redirects with `window.location.assign` without validation.],
  [With default base `/`, a value starting with `//` becomes a protocol-relative URL that leaves the origin.],
)

#finding(
  [Sign-out ignores fetch result],
  "src/api.ts: 155-163",
  [Posts to `/logout` then navigates to `/` without checking `res.ok`.],
)

#section-divider()

= Bug findings

#finding(
  [Stale editor state when inline card stays open],
  "src/pages/AdminDestinations.tsx: 122-132",
  [Renders `{editor && <DestinationEditor />}` without a `key` and the editor copies props into `useState` once.],
)

#section-divider()

#verification-limits([
  Review used frontend source and local build checks. Backend access and Ping SSO credentials were not available, so end-to-end flows could not be exercised.
])
