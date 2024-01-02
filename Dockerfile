FROM quay.io/keycloak/keycloak:23.0.3
ARG KEYCLOAK_RESTRICTED_CLIENT_AUTH_VERSION=22.0.0

ENV KC_DB=postgres
ENV KC_FEATURES=declarative-user-profile

ADD https://github.com/sventorben/keycloak-restrict-client-auth/releases/download/v${KEYCLOAK_RESTRICTED_CLIENT_AUTH_VERSION}/keycloak-restrict-client-auth.jar /opt/keycloak/providers/keycloak-restrict-client-auth.jar

USER root
RUN /opt/keycloak/bin/kc.sh build
