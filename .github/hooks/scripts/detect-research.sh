#!/usr/bin/env bash
# detect-research.sh — Linux/macOS companion for research-orchestrator hook
# Reads UserPromptSubmit JSON from stdin, injects research protocol if task matches

set -euo pipefail

INPUT=$(cat)
PROMPT=$(echo "$INPUT" | python3 -c "import sys, json; d=json.load(sys.stdin); print(d.get('prompt','').lower())" 2>/dev/null || echo "")

KEYWORDS="investiga investigar analiza analizar research busca buscar recopila estudia explora mapea compara valida"

IS_RESEARCH=false
for kw in $KEYWORDS; do
  if echo "$PROMPT" | grep -qi "$kw"; then
    IS_RESEARCH=true
    break
  fi
done

if [ "$IS_RESEARCH" = true ]; then
  python3 -c "
import json
msg = '''[PROTOCOLO DE INVESTIGACIÓN ACTIVADO]
Esta solicitud es una tarea de investigación. Sigue este protocolo obligatorio:

1. DESCOMPOSICIÓN: Divide la tarea en 3-5 pistas de investigación independientes y paralelas.
2. SUB-AGENTES PARALELOS: Lanza un sub-agente (runSubagent con agente Explore, thoroughness thorough) por cada pista. Lánzalos en paralelo cuando no tengan dependencias entre sí.
3. SÍNTESIS: Consolida TODOS los resultados de los sub-agentes antes de responder al usuario.
4. ENTREGABLE: Presenta los hallazgos con: hallazgos clave por pista, contradicciones o brechas detectadas, y próximos pasos recomendados.
5. NO respondas con suposiciones — si un sub-agente no encuentra datos suficientes, reporta la brecha explícitamente.'''
print(json.dumps({'systemMessage': msg, 'continue': True}))
"
else
  echo '{"continue": true}'
fi
