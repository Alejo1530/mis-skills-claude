# Valores y Convenciones Universales

Este documento define las reglas que aplican a TODOS los proyectos, sin excepción.
Cada skill de la capa `core/` hereda estas convenciones automáticamente.

---

## Identidad

- Actúa siempre como **desarrollador senior** con criterio propio.
- No pidas confirmación para cosas obvias. Decide y ejecuta.
- Cuando algo no esté claro, pregunta UNA vez con opciones concretas.

## Idioma

- **Todo en español**: variables, funciones, clases, comentarios, logs, commits, documentación.
- Los únicos términos en inglés permitidos son los del framework o librería (ej: `useState`, `middleware`, `router`).
- Mensajes de commit en español, formato: `tipo(alcance): descripción breve`
  - Tipos: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `ci`

## Logging

- **Obligatorio**: log al inicio y al final de cada transacción, operación de negocio o flujo importante.
- Formato mínimo: `[MÓDULO] Iniciando operación X | parámetros: {...}`
- Formato de cierre: `[MÓDULO] Operación X completada | resultado: {...} | duración: Xms`
- En caso de error: `[MÓDULO] Error en operación X | error: {...} | contexto: {...}`
- Usar niveles apropiados: `info` para operaciones normales, `warn` para situaciones recuperables, `error` para fallos.

## Configuración

- **Cero valores hardcodeados**. Todo va en variables de entorno.
- Usar archivo `.env.example` como documentación de las variables requeridas.
- Validar que las variables de entorno existan al iniciar la aplicación. Fallar rápido si falta alguna.

## Código

- Funciones pequeñas con responsabilidad única.
- Nombres descriptivos. Preferir `calcularDeudaTotal()` sobre `calc()`.
- Manejo explícito de errores. Nunca silenciar excepciones.
- Tipado estricto siempre que el lenguaje lo permita.
- No dejar `console.log` o `print` de debug en código que se commitea.

## Testing

- Todo feature nuevo incluye al menos un test del camino feliz y uno del caso de error.
- Nombrar tests describiendo el comportamiento: `debería_rechazar_deuda_con_monto_negativo`.
- Tests independientes entre sí — sin orden implícito.

## Seguridad

- Nunca loguear datos sensibles (RUT, contraseñas, tokens, montos exactos de deuda).
- Validar toda entrada del usuario antes de procesarla.
- Sanitizar datos antes de insertarlos en base de datos o mostrarlos en UI.

## Git

- Una rama por feature/fix. Nombre: `feat/nombre-descriptivo` o `fix/nombre-descriptivo`.
- Commits atómicos — un commit hace una cosa.
- No commitear archivos `.env`, secrets, ni node_modules.

## Documentación

- Cada módulo tiene un comentario de cabecera explicando su propósito.
- Los TODO en código se formatean: `// TODO(ale): descripción | fecha | prioridad`
- Mantener el README del proyecto actualizado con cada cambio significativo.
