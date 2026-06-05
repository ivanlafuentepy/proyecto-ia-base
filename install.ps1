# Proyecto IA Base - Instalador para Windows (PowerShell)
# Uso:
#   irm https://raw.githubusercontent.com/ivanlafuentepy/proyecto-ia-base/main/install.ps1 | iex

Write-Host ""
Write-Host "=== Proyecto IA Base - Instalador ===" -ForegroundColor Cyan
Write-Host ""

# 1. Verificar Git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Falta Git. Instalalo de https://git-scm.com y volve a intentar." -ForegroundColor Red
    return
}

# 2. No pisar un proyecto existente
if (Test-Path ".claude") {
    Write-Host "Ya hay una carpeta .claude aca. Corre el instalador en una carpeta nueva o vacia." -ForegroundColor Red
    return
}

$repo = "https://github.com/ivanlafuentepy/proyecto-ia-base.git"
$tmp  = Join-Path $env:TEMP ("proyecto-ia-base-" + [System.Guid]::NewGuid().ToString())

Write-Host "Descargando plantilla..." -ForegroundColor Yellow
git clone --depth 1 --quiet $repo $tmp
if ($LASTEXITCODE -ne 0) {
    Write-Host "No se pudo descargar la plantilla. Revisa tu conexion a internet." -ForegroundColor Red
    return
}

Write-Host "Copiando archivos a esta carpeta..." -ForegroundColor Yellow
Get-ChildItem -Path (Join-Path $tmp "template") -Force | Copy-Item -Destination "." -Recurse -Force

Remove-Item -Recurse -Force $tmp

Write-Host "Inicializando git..." -ForegroundColor Yellow
git init --quiet
git add -A
git commit --quiet -m "Proyecto IA Base inicial"

Write-Host ""
Write-Host "Listo!" -ForegroundColor Green
Write-Host "Abri esta carpeta en VS Code con la extension de Claude y escribi: /configurar" -ForegroundColor Green
Write-Host ""
