# Security Model

This is a generic model for small attendance and approval systems.

## Data Classes

- Public docs: general help pages, support pages, privacy policy
- Internal docs: employee guides, workflow notes, internal checklists
- Private user data: names, contact details, leave requests, attendance records
- Restricted admin data: role settings, backups, password reset workflows, security logs
- Secrets: API keys, private keys, tokens, signing keys

## Role Classes

- Employee: can create and view their own requests
- Approver: can approve requests within a defined scope
- Operations: can manage operational records within policy
- Owner: can manage system-wide settings and recovery actions

## Rules

- Display names do not prove authority.
- Numeric user IDs do not prove authority.
- Owner-level actions should require owner role checks.
- Delegated permissions should be tested for overreach.
- Public hosting and API security should be reviewed separately.

## Negative Tests

Before release, test that:

- an employee cannot access admin data
- an approver cannot reset passwords
- operations access cannot change owner settings
- missing records do not delete the full user list
- old deployment folders are not publicly exposed
