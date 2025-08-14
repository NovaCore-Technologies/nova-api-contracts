# 🛠 Pull Request – Hotfix

## 📌 Contexto del problema
<!-- Explicar el incidente, cómo se detectó y por qué requiere hotfix -->
- **Descripción del problema:**
- **Impacto:** (e.g. ruptura de clientes, error crítico en contrato)
- **Fecha/hora detección:**
- **API(s) afectada(s):** auth-api | user-api | gateway-api | common

## 🎯 Objetivo del hotfix
<!-- Explicar la solución aplicada y por qué es segura -->
- **Cambio realizado:**
- **Compatibilidad:** (compatible / breaking)
- **Riesgo residual:** (bajo / medio / alto)

## 🔍 Checklist previo al merge
- [ ] Cambios realizados en **rama hotfix/X.Y.Z** creada desde `main`.
- [ ] Validación **OpenAPI Lint** sin errores en todos los contratos modificados.
- [ ] Versiones (`info.version`) actualizadas correctamente:
  - **PATCH**: cambios compatibles de corrección.
  - **MINOR**/**MAJOR**: no deberían ocurrir en hotfix salvo casos críticos.
- [ ] Ejemplos (`examples`) revisados.
- [ ] Revisión y aprobación mínima requerida (1–2 revisores).
- [ ] Todas las validaciones de CI/CD en verde.

## 🧪 Evidencia de validación
<!-- Logs de la validación para cada archivo modificado -->
```bash
$ npx @redocly/cli lint auth-api/1.0.1/openapi.yaml
```
✅ No errors found

## 🏷 Checklist de etiquetado (post-merge)
Importante: Ejecutar inmediatamente después de merge a main.
- [ ] Crear tag anotado por API (ej. auth-api-v1.0.1).
- [ ] Push de tags (git push --tags).
- [ ] Publicar release en GitHub con notas del hotfix.
- [ ] Merge de hotfix/X.Y.Z de vuelta a develop para mantener historial alineado.

## 📎 Incidencias relacionadas
Closes #<ISSUE-ID>