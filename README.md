# Editorial theme

Reusable Typst theme. Same look as `odin/review/editorial/main.typ`.

## Layout

- `lib.typ` entry point. Gives `editorial` show rule.
- `tokens.typ` colors and fonts.
- `components/cover.typ` title page with outline.
- `components/finding.typ` `finding`, `cite-pill`, `bullet-item`.
- `components/divider.typ` `section-divider`, `verification-limits`.
- `example.typ` small test doc.

## Use

```typst
#import "../typst-theme/lib.typ": editorial, finding, section-divider, verification-limits

#show: editorial.with(
  title: "A Review Of Odin Relay Frontend",
  date: "September 2, 2026",
  org: "Revketer LLC.",
)

= Security findings

#finding(
  [Title here],
  "src/App.tsx: 103-105",
  [First bullet.],
  [Second bullet.],
)

#section-divider()

#verification-limits([Limits text here.])
```

## Notes

- Fonts: Geist for body, JetBrainsMono NF for code. Install both or change `tokens.typ`.
- Page: A4, 24 mm margins, white.
- No extra deps. Plain Typst only.
