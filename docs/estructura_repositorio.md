# Estructura del Repositorio

Esta guía explica cómo mantener una estructura clara, pequeña y fácil de evaluar en GitHub Classroom.

## Árbol de directorios recomendado
```text
nombre-del-proyecto/
├── README.md
├── docs/
│   ├── propuesta.md
│   ├── caso_de_uso.md
│   ├── estructura_repositorio.md
│   └── plan_de_pruebas.md
├── src/
│   └── main.<ext>
├── scripts/
│   └── run.sh
└── tests/
    └── test_plan.md
```

## Explicación de cada carpeta
- `docs/`: documentación principal de análisis, diseño y pruebas.
- `src/`: código fuente mínimo del prototipo.
- `scripts/`: scripts auxiliares para ejecutar o validar de forma simple.
- `tests/`: evidencia de planeación de pruebas en formato checklist.

## Explicación de cada archivo
- `README.md`: instrucciones generales de la actividad.
- `docs/propuesta.md`: definición del problema, alcance y factibilidad.
- `docs/caso_de_uso.md`: escenario de uso detallado.
- `docs/estructura_repositorio.md`: guía de organización del proyecto.
- `docs/plan_de_pruebas.md`: casos de prueba y criterios de cierre.
- `src/main.<ext>`: punto de entrada del prototipo (Python, C, Bash o ARM64 Assembly).
- `scripts/run.sh`: script base para ejecutar validaciones simples.
- `tests/test_plan.md`: checklist corto de verificación final.

## Reglas para nombrar archivos
- Usa minúsculas.
- Separa palabras con guion bajo (`_`) cuando sea necesario.
- Usa nombres descriptivos y cortos.
- Conserva extensiones correctas (`.md`, `.py`, `.c`, `.sh`, `.s`).

## Reglas para evitar desorden
- No crees carpetas extra sin justificación.
- No dupliques documentos con contenido similar.
- Mantén un solo archivo principal de entrada en `src/`.
- Evita funciones largas; divide la lógica en bloques pequeños si hace falta.
- Actualiza la documentación cuando cambies el comportamiento del prototipo.

## Nota de tamaño y complejidad
Mantén pocos archivos y funciones pequeñas. Esta actividad evalúa **planeación y documentación**, no volumen de código.
