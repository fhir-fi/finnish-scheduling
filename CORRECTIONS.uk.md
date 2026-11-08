# CORRECTIONS.md — finnish-scheduling

Project: fhir-fi/finnish-scheduling
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/finnish-scheduling

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-finnishsched-001 | No sushi-config.yaml found in root | P3 | PROPOSING | Low | `sushi-config.yaml` (new) |
| REA-finnishsched-002 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-finnishsched-003 | Only 2 FSH profiles defined | P3 | PROPOSING | Medium | `input/fsh/profiles/` |

## Details of proposed corrections

### REA-finnishsched-001 — No sushi-config.yaml
**Problem:** No `sushi-config.yaml` in root.
**Fix:** Add sushi-config.yaml with id, canonical, name, version, fhirVersion, dependencies, menu.
**Validation:** Confirm SUSHI can process the configuration.

### REA-finnishsched-002 — No automated tests
**Problem:** No tests validate FSH profiles.
**Fix:** Add FSH validation tests.
**Validation:** Run tests; confirm profiles compile.

### REA-finnishsched-003 — Only 2 FSH profiles
**Problem:** Limited profile coverage for a scheduling IG.
**Fix:** Add more base profiles (e.g., Slot, Schedule, HealthcareService variations).
**Validation:** Confirm new FSH files compile with SUSHI.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/finnish-scheduling` (already exists).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR to `fhir-fi/finnish-scheduling` branch `master`.

Переклад технічний, виконаний автоматизовано; рекомендується перегляд носієм мови перед використанням якнормативного посилання.
