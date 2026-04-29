# Script para configurar secrets de GitHub Actions
# Ejecutar en PowerShell: .\scripts\setup-secrets.ps1

# IMPORTANTE: Crea un token en https://github.com/settings/tokens
# Debe tener permisos: repo (control total)

$Token = Read-Host "Ingresa tu GitHub Token"

$Repo = "IT-ProyectoNorte/san_luis_mapa"
$Url = "https://kyxmpbvgzewxhitnivnx.supabase.co"
$AnonKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5eG1wYnZnemV3eGhpdG5pdm54Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ0OTE2MTQsImV4cCI6MjA5MDA2NzYxNH0.vWgEzubR4UT-BVvBidTkQM-9M41li2j01qNIOcWfgSs"

$Headers = @{
    "Authorization" = "Bearer $Token"
    "Accept" = "application/vnd.github+json"
    "X-GitHub-Api-Version" = "2022-11-28"
}

$BodyUrl = @{ "value": $Url } | ConvertTo-Json
$BodyKey = @{ "value": $AnonKey } | ConvertTo-Json
$BodyJson = @{ "value": "[{`"url`": `"$Url`", `"anon_key`": `"$AnonKey`"}]" } | ConvertTo-Json

Write-Host "Configurando SUPABASE_URL..." -ForegroundColor Yellow
Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/actions/secrets/SUPABASE_URL" -Method PUT -Headers $Headers -Body $BodyUrl -ContentType "application/json"

Write-Host "Configurando SUPABASE_ANON_KEY..." -ForegroundColor Yellow
Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/actions/secrets/SUPABASE_ANON_KEY" -Method PUT -Headers $Headers -Body $BodyKey -ContentType "application/json"

Write-Host "Configurando SUPABASE_PROJECTS_JSON..." -ForegroundColor Yellow
Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/actions/secrets/SUPABASE_PROJECTS_JSON" -Method PUT -Headers $Headers -Body $BodyJson -ContentType "application/json"

Write-Host "`nSecrets configurados correctamente!" -ForegroundColor Green