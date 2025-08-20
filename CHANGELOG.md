# Changelog - nova-api-contracts

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]
- Add contracts for `suppliers-service` and `purchase-service`
- Add advanced schemas for `sales-forecast-service`
- Expand mocks with negative test cases

---

## [1.0.0] - 2025-08-20
### Added
- Initial release of **nova-api-contracts** repository.
- OpenAPI 3.0.3 specifications for:
  - `auth-service`
  - `user-service`
- Schemas for common DTOs (`User`, `Role`, `AuthToken`, `ErrorResponse`).
- Mock JSON files for:
  - `users/get-users.json`, `users/post-create.json`, `users/get-user.json`, `users/patch-user.json`
  - `auth/login.json`, `auth/logout.json`, `auth/refresh.json`, `auth/me.json`, `auth/password-forgot.json`, `auth/password-reset.json`, `auth/introspect.json`
- GitHub Actions workflows for:
  - OpenAPI validation (lint + schema check).
- Repository structure with `/contracts`, `/schemas`, `/mocks`, and CI/CD pipelines.

---
