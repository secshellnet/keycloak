FROM quay.io/keycloak/keycloak:17.0.1

ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
