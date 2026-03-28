# Stack: Python + FastAPI

## Framework y versión
- **Python 3.11+**
- **FastAPI** como framework web
- **SQLAlchemy 2.x** con estilo async
- **Pydantic v2** para validación
- **Celery** para tareas en background
- **PostgreSQL** como base de datos

## Estructura de carpetas

```
src/
├── api/                    ← Endpoints (routers)
│   └── v1/
├── modelos/               ← Modelos SQLAlchemy (en español)
├── esquemas/              ← Esquemas Pydantic
├── servicios/             ← Lógica de negocio
├── repositorios/          ← Capa de acceso a datos
├── tareas/                ← Tareas Celery
├── config/                ← Configuración y env vars
├── utils/                 ← Utilidades
├── migrations/            ← Alembic
└── tests/
```

## Convenciones
- **Archivos**: snake_case en español → `servicio_deudas.py`
- **Clases**: PascalCase en español → `ServicioDeudas`
- **Funciones**: snake_case en español → `calcular_deuda_total()`
- **Type hints obligatorios** en todas las funciones

## Testing
- pytest + pytest-asyncio
- Cobertura: `pytest --cov=src`

## Linting
- Ruff para linting y formato + mypy para tipos
