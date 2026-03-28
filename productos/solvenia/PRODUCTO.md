# Producto: SolvenIA

## Qué es
Plataforma chilena de gestión y renegociación de deudas bajo la **Ley 20.720**. Combina diagnóstico financiero con IA, orientación legal automatizada y generación de documentos para procedimientos ante la SUPERIR.

## Usuario objetivo
- **Perfil**: Persona chilena endeudada, 25-55 años, ingreso medio-bajo
- **Alfabetización digital**: Baja a media. Usa WhatsApp y redes sociales.
- **Dispositivo típico**: Android gama media (Samsung A-series, Xiaomi Redmi), ~6"
- **Conexión**: Datos móviles, velocidad variable
- **Estado emocional**: Estrés financiero, vergüenza, urgencia. Necesita claridad y contención.

## Reglas de UX inquebrantables
1. **Máximo 3 taps** para llegar a cualquier resultado clave
2. **Lenguaje claro**: Sin jerga legal ni financiera. Términos técnicos se explican inline.
3. **Mobile-first**: Todo se diseña primero para el dispositivo más limitado.
4. **Tolerancia a errores**: El usuario puede equivocarse y volver atrás.
5. **Progreso visible**: Siempre mostrar en qué paso está y cuánto falta.
6. **Sin login inicial**: Explorar y diagnóstico básico sin registrarse.

## Métricas clave
| Métrica | Qué mide | Target |
|---------|----------|--------|
| Tasa de completitud diagnóstico | % que terminan el flujo | > 70% |
| Tiempo a primer resultado | Segundos hasta ver resultado | < 60s |
| NPS del asistente IA | Satisfacción con chatbot | > 40 |
| Conversión a plan pagado | % diagnóstico → plan | > 5% |

## Marco legal
- **Ley 20.720**: Renegociación y liquidación de deudas
- **SUPERIR**: Superintendencia de Insolvencia y Reemprendimiento
- **Ley 21.719**: Protección de datos personales
- **Ley 21.521**: Fintech

## Competencia
- **Destácame**: Score crediticio gratuito, monetiza con seguros
- **Grupo Defensa**: Abogados especializados, modelo tradicional
- **Chile Al Día**: Información financiera, foco en noticias

## Diferenciador
Automatiza lo que hoy requiere abogado + contador + visitas presenciales. Diagnóstico, plan y documentos legales desde el celular.

## Datos sensibles
- RUT (nunca loguear completo)
- Montos de deuda (loguear solo rangos)
- Datos de acreedores
- Información laboral y de ingresos
- Documentos legales generados

## Stack técnico
Ver `stacks/nextjs/STACK.md` para el frontend.
Microservicios: svc-auth, svc-core, svc-docs, svc-ia, svc-notif, svc-pagos.
