#!/bin/bash
openapi-generator-cli generate -i contracts/auth/auth-api-v1.yaml -g java -o ../nova-auth-service/generated
openapi-generator-cli generate -i contracts/auth/auth-api-v1.yaml -g typescript-fetch -o ../nova-web-client/generated
openapi-generator-cli generate -i contracts/auth/auth-api-v1.yaml -g dart -o ../nova-mobile-client/generated