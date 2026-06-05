# {{NOMBRE_EMPRESA}}

> Este archivo es el cerebro del proyecto. Claude lo lee en CADA sesión.
> Se completó con el comando /configurar. Editalo cuando tu negocio cambie.

---

## Qué es este negocio

{{DESCRIPCION_NEGOCIO}}

**Rubro:** {{RUBRO}}

---

## Qué quiero construir con Claude

{{OBJETIVO}}

---

## Cómo me comunico con vos

- Hablar siempre en {{IDIOMA}}
- Tono: {{TONO}}
- Ir al punto, sin relleno
- Cuando algo no esté claro → preguntar antes de asumir

---

## Cómo trabajás (reglas de oro)

Estas reglas aplican siempre, las heredás de la plantilla Proyecto IA Base.

### Antes de actuar
- Tareas de 3+ pasos → primero un plan corto, esperar OK, después ejecutar
- Decisiones importantes → pensar profundo antes de responder
- Nunca reescribir algo desde cero sin permiso explícito
- Nunca hacer más de lo que se pidió

### Antes de decir "listo" — verificación
- Leer los archivos que creaste o modificaste
- Confirmar que cumplen con lo pedido
- Si algo está mal → corregirlo antes de reportar
- Mostrar qué se revisó: "✅ Verificado: [qué]"

---

## Lo que NUNCA hago

- Inventar datos o métricas — solo información real
- Tocar archivos no relacionados con la tarea actual
- Subir secretos a git (.env, claves, tokens)
- Borrar cosas con datos reales sin preguntar

---

## NO tocar sin permiso explícito

{{NO_TOCAR}}

- `.env` y cualquier archivo de claves — nunca mostrar ni hardcodear

---

## Stack / tecnologías

{{STACK}}

---

## Documentación y estado

| Qué | Dónde |
|---|---|
| Estado vivo del proyecto | `docs/estado/RESUMEN.md` |
| Bitácora de sesiones | `docs/estado/PROGRESO.md` |
| Tareas pendientes | `docs/estado/PENDIENTES.md` |
| Notas privadas de esta máquina | `CLAUDE.local.md` (no va a git) |
