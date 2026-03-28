# /careful — Modo Guardrail de Seguridad

> Activa protecciones contra comandos destructivos. Especialmente importante
> cuando se trabaja con datos de producción o sistemas financieros.

---

## Comportamiento

Una vez activado, ANTES de ejecutar cualquiera de estos comandos,
mostrar una advertencia clara y pedir confirmación explícita:

### 🔴 Comandos bloqueados sin confirmación

| Comando | Riesgo |
|---------|--------|
| `rm -rf` | Borrado recursivo irreversible |
| `DROP TABLE` / `DROP DATABASE` | Pérdida de datos permanente |
| `git push --force` | Sobreescribe historial remoto |
| `git reset --hard` | Pierde commits locales |
| `DELETE FROM ... (sin WHERE)` | Borra todos los registros |
| `TRUNCATE TABLE` | Vacía tabla completa |
| `docker system prune -a` | Elimina imágenes y containers |
| `chmod -R 777` | Abre permisos a todo el mundo |

### 🟡 Comandos que requieren advertencia

| Comando | Riesgo |
|---------|--------|
| `git stash drop` | Pierde cambios stasheados |
| `ALTER TABLE` | Modifica estructura de datos |
| `UPDATE ... (verificar WHERE)` | Puede afectar registros inesperados |
| Operaciones en rama `main` o `production` | Impacto directo en prod |

## Formato de advertencia

```
⚠️ ═══════════════════════════════════════════════
   COMANDO POTENCIALMENTE DESTRUCTIVO DETECTADO
═══════════════════════════════════════════════════

Comando: [el comando]
Riesgo: [qué puede salir mal]
¿Reversible?: [sí/no]

¿Confirmar ejecución? (sí/no)
═══════════════════════════════════════════════════
```

Para desactivar: decir "desactivar careful" o "modo normal".

En proyectos fintech, considerar activar `/careful` por defecto.
