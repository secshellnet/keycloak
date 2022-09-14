FROM quay.io/keycloak/keycloak:19.0.2

ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
