# 🧠 Mis Skills para Claude Code

Skills personalizados para Claude Code organizados en 3 capas. Inspirado en [gstack](https://github.com/garrytan/gstack) de Garry Tan, adaptado al español y a mis convenciones de desarrollo.

## Arquitectura

```
~/.claude/skills/mis-skills/
├── core/                     ← Capa 1: ADN de empresa (skills universales)
│   ├── VALORES.md            ← Convenciones compartidas entre todos los proyectos
│   ├── plan-ceo-review.md    ← Founder: ¿estoy construyendo lo correcto?
│   ├── plan-eng-review.md    ← Tech Lead: arquitectura, diagramas, edge cases
│   ├── review.md             ← Staff Engineer: bugs que pasan CI
│   ├── ship.md               ← Release Engineer: sync, test, push, PR
│   ├── qa.md                 ← QA Engineer: validación con browser real
│   ├── retro.md              ← Eng Manager: retrospectiva semanal
│   └── careful.md            ← Guardrail: protección contra comandos destructivos
│
├── stacks/                   ← Capa 2: Convenciones por stack técnico
│   ├── nextjs/
│   │   └── STACK.md
│   ├── python-fastapi/
│   │   └── STACK.md
│   └── [nuevo-stack]/
│       └── STACK.md
│
└── productos/                ← Capa 3: Contexto de negocio por producto
    ├── solvenia/
    │   └── PRODUCTO.md
    ├── orquestra-ai/
    │   └── PRODUCTO.md
    └── [nuevo-producto]/
        └── PRODUCTO.md
```

## Instalación

```bash
git clone https://github.com/[TU-USER]/mis-skills-claude.git ~/.claude/skills/mis-skills
```

## Uso en un proyecto

Agregar al `CLAUDE.md` de cada proyecto:

```markdown
## Skills
stack: nextjs
producto: solvenia
skills_path: ~/.claude/skills/mis-skills

Leer siempre:
- ~/.claude/skills/mis-skills/core/VALORES.md
- ~/.claude/skills/mis-skills/stacks/nextjs/STACK.md
- ~/.claude/skills/mis-skills/productos/solvenia/PRODUCTO.md
```

## Flujo de trabajo recomendado

```
/plan-ceo-review  → ¿Estoy construyendo lo correcto?
/plan-eng-review  → Arquitectura, diagramas, tests
[implementar]
/review           → Cazar bugs estructurales
/ship             → Sync + test + push + PR
/qa               → Validación visual con browser
/retro            → ¿Cómo fue la semana?
```

## Agregar un nuevo producto

1. Crear `productos/[nombre]/PRODUCTO.md` siguiendo la plantilla existente
2. Si usa un stack nuevo, crear `stacks/[stack]/STACK.md`
3. Configurar el `CLAUDE.md` del proyecto apuntando a las capas correctas

## Créditos

Inspirado en [gstack](https://github.com/garrytan/gstack) por Garry Tan.
Adaptado al español con convenciones propias.
