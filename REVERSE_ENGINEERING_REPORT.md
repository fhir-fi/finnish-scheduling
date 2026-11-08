# REVERSE_ENGINEERING_REPORT — finnish-scheduling

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR baseado em SUSHI para agendamento de saúde na Finlândia (Finnish HL7 FHIR Scheduling). Estrutura:

- `sushi-config.yaml`: NÃO ENCONTRADO na raiz
- `input/fsh/profiles/FiSchedulingAppointment.fsh`, `FiSchedulingHealthcareService.fsh`: 2 perfis FHIR
- `input/fsh/extensions/`: 19 extensões FHIR (AdditionalInformationURL, AjanvarauksenTila, AppointmentMutability, etc.)
- `input/fsh/mappings/`: mapeamentos
- `input/fsh/aliases.fsh`: aliases
- `input/fsh/examples/`: exemplos
- `input/pagecontent/*.md`: páginas do IG
- `input/includes/*.html`: fragmentos HTML
- `ig.ini`: configuração do IG publisher
- Nenhum Dockerfile, nenhum workflow CI no repositório (build via build.fhir.org)

### Tecnologias e dependências
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Não há testes automatizados

### Estado de manutenção
Branch default: master. Repositório: https://github.com/fhir-fi/finnish-scheduling. Builds automáticos via build.fhir.org infraestrutura.

### Mecanismos de testes existentes
Nenhum teste automatizado encontrado para FSH/StructureDefinitions.

### Limitações da investigação
- SUSHI não instalado; build do IG não executado.

## B. Problemas encontrados

| ID | Título | Severidade | Status | Localização |
|----|--------|------------|--------|-------------|
| REA-finnishsched-001 | Nenhum sushi-config.yaml encontrado na raiz | P3 | CONFIRMADO | raiz do repo |
| REA-finnishsched-002 | Nenhum teste automatizado para FSH/StructureDefinitions | P3 | CONFIRMADO | raiz do repo |
| REA-finnishsched-003 | Apenas 2 perfis FSH definidos | P3 | CONFIRMADO | `input/fsh/profiles/` |

### Detalhes dos problemas confirmados

**REA-finnishsched-001 (P3, CONFIRMADO)**: Não há `sushi-config.yaml` na raiz do repositório. A configuração do SUSHI não está versionada no repo (o build é feito externamente via build.fhir.org).

**REA-finnishsched-002 (P3, CONFIRMADO)**: Não há testes automatizados para validar os perfis FHIR nem as StructureDefinitions geradas.

**REA-finnishsched-003 (P3, CONFIRMADO)**: Apenas 2 perfis FSH existem (FiSchedulingAppointment, FiSchedulingHealthcareService), com 19 extensões. Escopo limitado para um IG de agendamento completo.

## C. Problemas recorrentes
Nenhum problema recorrente público encontrado.

## D. Erros não documentados
Todos os itens da seção B são problemas não documentados anteriormente.

## E. Performance
Build estático de IG via SUSHI/build.fhir.org. Sem operações sensíveis a performance.

## F. Melhorias técnicas
- Adicionar sushi-config.yaml (REA-finnishsched-001)
- Adicionar testes FSH (REA-finnishsched-002)
- Expandir número de perfis FSH (REA-finnishsched-003)
- `releaseLabel` não aplicável (não há sushi-config.yaml)

## G. Plano de execução
Todas independentes e baixo risco.

## H. Resultado esperado
IG mais completo, com configuração versionada, testes automatizados e mais perfis.

**Ferramentas usadas:** git, gh, PowerShell, inspeção estática.  
**Limitação:** SUSHI não instalado.  
**Ambiente:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\finnish-scheduling` (clone do upstream, branch master).
