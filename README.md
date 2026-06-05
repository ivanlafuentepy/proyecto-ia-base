# Proyecto IA Base

> Plantilla para arrancar cualquier proyecto con Claude Code ya estructurado como
> tiene que ser. Instalás, le contás a Claude de qué va tu empresa con un comando,
> y empezás a trabajar con un equipo de agentes listo.

Por Iván Lafuente — Curso IA.

---

## Instalación (1 comando)

Primero creá una carpeta para tu proyecto y entrá en ella:

```bash
mkdir mi-proyecto
cd mi-proyecto
```

Después corré el comando según tu sistema:

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/ivanlafuentepy/proyecto-ia-base/main/install.ps1 | iex
```

**Mac / Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/ivanlafuentepy/proyecto-ia-base/main/install.sh | bash
```

---

## Después de instalar

1. Abrí la carpeta en **VS Code** con la extensión de Claude.
2. Escribí **`/configurar`**.
3. Claude te hace unas preguntas sobre tu empresa y deja todo listo.
4. Empezá a trabajar: contale qué querés hacer.

---

## Qué incluye

- **`CLAUDE.md`** — el cerebro del proyecto, se completa solo con `/configurar`
- **Agentes** (`.claude/agents/`):
  - `revisor-codigo` — revisa tu código buscando bugs
  - `constructor-agente` — te guía a armar automatizaciones paso a paso
  - `auditor-seguridad` — chequea que no se filtren claves ni secretos
- **Comandos** (`.claude/commands/`):
  - `/configurar` — configura el proyecto con los datos de tu empresa
  - `/contexto` — te pone al día con el estado del proyecto
  - `/cierre` — cierra la sesión y guarda el avance
  - `/verificar` — verifica que una tarea esté bien antes de cerrarla
- **Sistema de estado** (`docs/estado/`) — RESUMEN, PROGRESO y PENDIENTES

---

## Requisitos

- [Claude Code](https://claude.com/code) (extensión de VS Code)
- [Git](https://git-scm.com)
- [Node.js](https://nodejs.org) (recomendado)

---

## Licencia

MIT — usalo y adaptalo libremente.
