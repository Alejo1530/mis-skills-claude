# Stack: Next.js

## Framework y versión
- **Next.js 14+** con App Router (NO Pages Router)
- **TypeScript** en modo estricto (`strict: true`)
- **Tailwind CSS** para estilos
- **React Server Components** por defecto; `'use client'` solo cuando se necesita interactividad

## Estructura de carpetas

```
src/
├── app/                    ← Rutas (App Router)
│   ├── (publico)/         ← Grupo: páginas públicas
│   ├── (privado)/         ← Grupo: páginas autenticadas
│   ├── api/               ← Route handlers
│   └── layout.tsx
├── componentes/           ← Componentes reutilizables (en español)
│   ├── ui/                ← Componentes base
│   └── [dominio]/         ← Componentes de dominio
├── lib/                   ← Utilidades, helpers
├── servicios/             ← Lógica de negocio y llamadas a API
├── tipos/                 ← Interfaces y types
├── hooks/                 ← Custom hooks
└── config/                ← Configuración
```

## Convenciones
- **Archivos**: kebab-case en español → `formulario-deuda.tsx`
- **Componentes**: PascalCase en español → `FormularioDeuda`
- **Funciones/variables**: camelCase en español → `calcularDeudaTotal()`
- **Constantes**: UPPER_SNAKE_CASE → `MONTO_MAXIMO_DEUDA`

## Testing
- Vitest + Testing Library
- Archivos: `[nombre].test.tsx` junto al componente
- E2E: Playwright si aplica

## Linting
- ESLint con config de Next.js + Prettier
