# nova-api-contracts

📑 Centralized repository for API contracts of **Nova ERP AI** project.  
This repository contains OpenAPI specifications, reusable schemas, and mock responses to guide the development of backend and frontend services.

---

## 📂 Repository Structure
```
│── contracts/ # OpenAPI YAML files for each microservice
│ ├── auth/
│ │ └── auth-api-v1.yaml
│ ├── users/
│ │ └── user-api-v1.yaml
│
│── schemas/ # Shared JSON Schemas (User, Role, Tokens, ErrorResponse)
│ ├── user.schema.json
│ ├── role.schema.json
│ ├── auth-token.schema.json
│ └── error-response.schema.json
│
│── mocks/ # Mock JSON responses for development & testing
│ ├── users/
│ │ ├── get-users.json
│ │ ├── post-create.json
│ │ ├── get-user.json
│ │ └── patch-user.json
│ ├── auth/
│ │ ├── login.json
│ │ ├── logout.json
│ │ ├── refresh.json
│ │ ├── me.json
│ │ ├── password-forgot.json
│ │ ├── password-reset.json
│ │ └── introspect.json
│
│── .github/workflows/ # CI/CD pipelines for validation & publishing
│── README.md
│── CHANGELOG.md
```
---

## 🚀 Usage

### 1. Validate OpenAPI Specs
Run validation locally:
```bash
npx @redocly/cli lint contracts/**/*.yaml
```
CI/CD validation is also included via GitHub Actions:
 * Every PR triggers linting & validation.

### 2. Run Mock Server
You can serve mock responses with [Prism](https://github.com/stoplightio/prism):
```bash
npx @stoplight/prism-cli mock contracts/auth/auth-api-v1.yaml
```
This will expose endpoints using mock data from /mocks.

## 📌 Guidelines
 * Do not commit generated code. Only specs, schemas, and mocks.
 * Follow REST API Design Rulebook conventions.
 * Always use English resource names (plural nouns).
 * Enforce semantic versioning in contracts.
 * Use HATEOAS links in responses where applicable.

## 🛠 Contributing
 1. Create a branch: feature/add-new-contract
 2. Update or add the OpenAPI YAML in /contracts
 3. Run npx @redocly/cli lint
 4. Submit a Pull Request

## 📜 License
This repository is part of Nova ERP AI and licensed under Apache 2.0.

---