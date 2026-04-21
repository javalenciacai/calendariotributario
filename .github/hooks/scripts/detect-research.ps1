# detect-research.ps1
# Companion script para research-orchestrator hook (Windows / PowerShell)
# Lee el JSON de UserPromptSubmit desde stdin y, si detecta una tarea de investigacion,
# inyecta el protocolo de orquestacion de sub-agentes como systemMessage.

param()
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding           = [System.Text.Encoding]::UTF8

# --- Leer stdin ---
$rawInput = $input | Out-String
$payload  = $rawInput | ConvertFrom-Json -ErrorAction SilentlyContinue

$prompt = ""
if ($payload -and $payload.prompt) {
    $prompt = $payload.prompt.ToLower()
}

# --- Palabras clave que identifican una tarea de investigación ---
$keywords = @(
    "investiga", "investigar", "investigación",
    "analiza", "analizar", "análisis",
    "research", "busca", "buscar",
    "recopila", "recopilar",
    "estudia", "estudiar",
    "explora", "explorar", "exploración",
    "mapea", "mapear",
    "compara", "comparar",
    "valida", "validar",
    "¿qué", "¿cómo", "¿cuál", "¿cuáles",
    "quiero saber", "necesito información",
    "dime sobre", "dime qué"
)

$isResearch = $false
foreach ($kw in $keywords) {
    if ($prompt -match [regex]::Escape($kw)) {
        $isResearch = $true
        break
    }
}

# --- Protocolo de investigación a inyectar ---
$protocol = @"
[PROTOCOLO DE INVESTIGACIÓN ACTIVADO]
Esta solicitud es una tarea de investigación. Sigue este protocolo obligatorio:

1. DESCOMPOSICIÓN: Divide la tarea en 3-5 pistas de investigación independientes y paralelas.
   - Cada pista debe cubrir un ángulo distinto (técnico, de mercado, regulatorio, usuarios, competencia, etc.)
   - Documenta brevemente el objetivo de cada pista antes de lanzar los sub-agentes.

2. SUB-AGENTES PARALELOS: Lanza un sub-agente por cada pista usando runSubagent:
   - Agente preferido: Explore (thoroughness: thorough)
   - Lanza los sub-agentes en PARALELO cuando no tengan dependencias entre sí.
   - Cada sub-agente recibe un prompt específico con su pista de investigación claramente definida.

3. SÍNTESIS: Consolida TODOS los resultados antes de responder al usuario:
   - Hallazgos clave por pista de investigación.
   - Contradicciones, brechas o datos faltantes detectados.
   - Nivel de confianza de cada hallazgo (alto / medio / bajo).

4. ENTREGABLE ESTRUCTURADO:
   - Resumen ejecutivo (3-5 bullets con lo más importante).
   - Detalle por pista de investigación.
   - Preguntas abiertas que quedaron sin responder y cómo resolverlas.
   - Próximos pasos recomendados.

5. PROHIBICIONES durante la investigación:
   - NO respondas con suposiciones propias como hechos.
   - NO omitas sub-agentes por parecer "obvio" — siempre valida con evidencia.
   - Si un sub-agente no encuentra datos suficientes, reporta la brecha explícitamente.
"@

# --- Salida ---
if ($isResearch) {
    $output = [PSCustomObject]@{
        systemMessage = $protocol
        continue      = $true
    }
    Write-Output ($output | ConvertTo-Json -Depth 3 -Compress)
} else {
    Write-Output '{"continue":true}'
}
