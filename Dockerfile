FROM quay.io/keycloak/keycloak:19.0.3

ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build
