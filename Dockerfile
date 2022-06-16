FROM quay.io/keycloak/keycloak:18.0.1

ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
