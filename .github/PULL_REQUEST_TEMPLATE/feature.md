# 🚀 Pull Request – Feature

## 📌 Resumen
<!-- Breve descripción de la funcionalidad añadida -->
Este PR implementa la funcionalidad **[E1-US-001 Login en auth-api]**, incluyendo el contrato OpenAPI actualizado y esquemas relacionados.

## 🔄 Tipo de cambio
- [ ] `feat`: Nueva funcionalidad (no rompe compatibilidad)
- [ ] `fix`: Corrección de bug en el contrato
- [ ] `docs`: Actualización de documentación
- [ ] `refactor`: Reestructuración sin cambio de comportamiento
- [ ] `chore`: Tareas varias / mantenimiento

## 📂 Áreas afectadas
<!-- Marcar las APIs o módulos tocados -->
- [x] `auth-api`
- [ ] `user-api`
- [ ] `gateway-api`
- [ ] `common`

## 📜 Cambios principales
<!-- Lista clara de cambios realizados -->
- Añadido endpoint `POST /auth/login` con request/response completos.
- Actualizado `common/schemas.yaml` con `LoginRequest` y `LoginResponse`.
- Definidos códigos de respuesta `200`, `400`, `401` con ejemplos.

## ✅ Checklist antes de solicitar merge
- [ ] Validación **OpenAPI Lint** pasa correctamente (`@redocly/cli lint`).
- [ ] Archivo `info.version` actualizado si aplica cambio compatible/incompatible.
- [ ] Referencias `$ref` en común (`common/schemas.yaml` o `common/headers.yaml`) verificadas.
- [ ] Ejemplos (`examples`) actualizados para los nuevos endpoints.
- [ ] Revisión de impacto (MAJOR/MINOR/PATCH) según **SemVer**.

## 🧪 Evidencia de validación
<!-- Pegar aquí capturas o logs de la ejecución de validación -->
```bash
$ npx @redocly/cli lint auth-api/1.0.0/openapi.yaml
...
No errors or warnings found. ✅

## 📎 Issues relacionadas
<!-- Vincular issues o tareas de Jira/Trello si aplica -->
Closes #<ISSUE-ID>