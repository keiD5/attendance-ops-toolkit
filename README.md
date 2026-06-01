# Attendance Ops Toolkit

Attendance Ops Toolkit is a small open-source starter kit for teams that run leave, overtime, shift, and approval workflows.

It focuses on the boring but important parts of operations software:

- release checklists
- access and role review
- public-safety scans before publishing code
- incident notes
- reusable request and approval templates
- maintenance notes for small teams

The project does not include private company data, production credentials, Firebase project IDs, employee records, or proprietary business rules.

## Why This Exists

Small operations teams often build attendance and approval tools before they have a formal engineering process. That creates risk: a single deploy can expose documents, loosen permissions, or break an approval flow.

This toolkit gives maintainers a practical baseline before every release.

Think of it as a checklist and tool bag for the front desk, the back office, and the server room.

## What's Included

- `docs/operations-checklist.md`: routine checks before and after a release
- `docs/security-model.md`: simple role and data-protection model
- `docs/release-checklist.md`: release preparation and rollback notes
- `templates/attendance-request-template.md`: generic request template
- `templates/incident-report-template.md`: incident note template
- `scripts/scan-public-safety.sh`: quick local scan for secrets and private data markers

## Quick Start

Run the public-safety scan before publishing a repository:

```bash
bash scripts/scan-public-safety.sh .
```

Review the checklists:

```bash
open docs/operations-checklist.md
open docs/release-checklist.md
```

## Intended Users

- maintainers of small internal operations apps
- teams preparing a leave or attendance workflow for production
- solo developers who need a repeatable pre-release checklist
- contributors reviewing access-control changes

## Non-Goals

This project is not a complete attendance application.

It does not ship with production backend code, private credentials, employee data, or deployment targets. It is designed to be copied, adapted, and reviewed before use.

## Maintainer Role

The maintainer is responsible for keeping the templates practical, reviewing safety checks, improving release workflows, and documenting lessons learned from real operational maintenance work.

## License

MIT
