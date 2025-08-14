# 📦 Pull Request – Release

## 🆕 Versión a publicar
<!-- Indicar versión por API o global -->
- `auth-api` → vX.Y.Z
- `user-api` → vX.Y.Z
- `gateway-api` → vX.Y.Z
- `common` (si aplica cambios)  

## 📌 Resumen
Este PR contiene la rama de release `<release/X.Y.Z>` preparada para merge a `main`.  
Incluye cambios ya aprobados en `develop` y congelados para publicación.

## 🔍 Checklist previo al merge
- [ ] **Validación OpenAPI** (`@redocly/cli lint`) sin errores en TODOS los contratos modificados.
- [ ] Versiones (`info.version`) actualizadas en cada `openapi.yaml` afectado.
- [ ] Changelog actualizado en cada API (`CHANGELOG.md` en carpeta correspondiente).
- [ ] Revisión de impacto según SemVer:
  - [ ] `MAJOR`: cambios incompatibles
  - [ ] `MINOR`: adiciones compatibles
  - [ ] `PATCH`: fixes sin romper compatibilidad
- [ ] Verificación de ejemplos y esquemas en `common/*`.
- [ ] Aprobación mínima requerida (1–2 revisores según reglas de rama).
- [ ] Confirmado que **todas las validaciones de CI/CD están en verde**.

## 🏷 Checklist de etiquetado (post-merge)
> **Importante:** Realizar después de merge a `main`.
- [ ] Crear tag anotado por API (ej. `auth-api-v1.0.0`).
- [ ] Push de tags al remoto (`git push --tags`).
- [ ] Publicar release en GitHub con notas de cambios.
- [ ] Merge de `release/X.Y.Z` de vuelta a `develop`.

## 🧪 Evidencia de validación
<!-- Pegar logs de validación -->
```bash
$ npx @redocly/cli lint auth-api/1.0.0/openapi.yaml
✅ No errors found

## 📎 Issues o tareas relacionadas
<!-- Vincular issues o tareas de Jira/Trello si aplica -->
Closes #<ISSUE-ID>