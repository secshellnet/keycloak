FROM quay.io/keycloak/keycloak:20.0.5
ARG KEYCLOAK_RESTRICTED_CLIENT_AUTH_VERSION=20.0.0

ENV KC_DB=postgres
ENV KC_FEATURES=declarative-user-profile

RUN curl -fsSL https://github.com/sventorben/keycloak-restrict-client-auth/releases/download/v${KEYCLOAK_RESTRICTED_CLIENT_AUTH_VERSION}/keycloak-restrict-client-auth.jar \
      -o /opt/keycloak/providers/keycloak-restrict-client-auth.jar

RUN /opt/keycloak/bin/kc.sh build
