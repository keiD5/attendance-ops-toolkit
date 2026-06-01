# Contributing

Thanks for helping improve Attendance Ops Toolkit.

## Good Contributions

- safer release checklist items
- clearer rollback steps
- practical access-review examples
- better public-safety scan patterns
- templates that reduce operational mistakes

## Contribution Rules

- Do not submit real employee data.
- Do not submit real credentials, tokens, API keys, Firebase project IDs, or private URLs.
- Use sample names such as `Sample User` and `Example Team`.
- Keep templates generic enough for other teams to reuse.
- Prefer small pull requests with a clear explanation.

## Review Checklist

Before opening a pull request:

```bash
bash scripts/scan-public-safety.sh .
```

Then confirm:

- no secrets are included
- no production-only identifiers are included
- docs are understandable for non-specialists
- rollback notes are included for risky changes
