---
description: Muestra el estado actual del proyecto para ponerte al día al arrancar
---

Poné al usuario al día con el estado del proyecto. Mostrale un resumen CORTO
y claro en el chat (esto se ve en VS Code, a diferencia de los hooks).

Hacé esto:

1. Leé `docs/estado/RESUMEN.md` → el estado vivo del proyecto.
2. Leé las primeras 20 líneas de `docs/estado/PROGRESO.md` → lo último que se hizo.
3. Leé `docs/estado/PENDIENTES.md` → qué quedó por hacer.
4. Corré `git log --oneline -5` → los últimos commits.

Después mostrá un briefing así:

```
📋 ESTADO DEL PROYECTO

🌿 Rama: [rama actual]
📝 Últimos commits:
  - [commit 1]
  - [commit 2]

✅ Lo último que hiciste: [del PROGRESO]
⏳ Pendiente: [del PENDIENTES]
```

Si algún archivo no existe todavía, decílo sin drama y seguí con lo que haya.
Terminá preguntando: "¿En qué seguimos?"
