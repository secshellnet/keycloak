ARG KEYCLOAK_VERSION
FROM quay.io/keycloak/keycloak:${KEYCLOAK_VERSION}

ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
