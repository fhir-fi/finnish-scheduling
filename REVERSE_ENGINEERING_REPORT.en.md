# REVERSE_ENGINEERING_REPORT — finnish-scheduling

## A. General diagnosis

### Architecture identified
FHIR Implementation Guide (IG) based on SUSHI for healthcare scheduling in Finland (Finnish HL7 FHIR Scheduling). Structure:

- `sushi-config.yaml`: NOT FOUND in root
- `input/fsh/profiles/FiSchedulingAppointment.fsh`, `FiSchedulingHealthcareService.fsh`: 2 FHIR profiles
- `input/fsh/extensions/`: 19 FHIR extensions
- `input/fsh/mappings/`: mappings
- `input/fsh/aliases.fsh`: aliases
- `input/fsh/examples/`: examples
- `input/pagecontent/*.md`: IG pages
- `input/includes/*.html`: HTML fragments
- `ig.ini`: IG publisher configuration
- `.github/workflows/build.yml` and `.github/workflows/pr-verification.yml`: CI workflows exist
- No Dockerfile

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- No automated tests

### Maintenance state
Default branch: master. Repository: https://github.com/fhir-fi/finnish-scheduling. Automatic builds via build.fhir.org infrastructure.

### Existing testing mechanisms
No automated tests found for FSH/StructureDefinitions.

### Investigation limitations
- SUSHI not installed; IG build not executed.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-finnishsched-001 | No sushi-config.yaml found in root | P3 | CONFIRMED | repo root |
| REA-finnishsched-002 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-finnishsched-003 | Only 2 FSH profiles defined | P3 | CONFIRMED | `input/fsh/profiles/` |

### Details of confirmed problems

**REA-finnishsched-001 (P3, CONFIRMED)**: No `sushi-config.yaml` in the repository root. SUSHI configuration is not versioned in the repo (build is done externally via build.fhir.org).

**REA-finnishsched-002 (P3, CONFIRMED)**: No automated tests to validate FHIR profiles nor generated StructureDefinitions.

**REA-finnishsched-003 (P3, CONFIRMED)**: Only 2 FSH profiles exist (FiSchedulingAppointment, FiSchedulingHealthcareService), with 19 extensions. Limited scope for a complete scheduling IG.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are problems not previously documented.

## E. Performance
Static IG build via SUSHI/build.fhir.org. No performance-sensitive operations.

## F. Technical improvements
- Add sushi-config.yaml (REA-finnishsched-001)
- Add FSH tests (REA-finnishsched-002)
- Expand number of FSH profiles (REA-finnishsched-003)
- `releaseLabel` not applicable (no sushi-config.yaml)

## G. Execution plan
All independent and low risk.

## H. Expected outcome
More complete IG with versioned configuration, automated testing, and more profiles.

**Tools used:** git, gh, PowerShell, static code inspection.  
**Limitation:** SUSHI not installed.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\finnish-scheduling` (clone of upstream, branch master).
