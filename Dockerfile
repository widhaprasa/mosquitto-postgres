FROM postgres:9.6.16-alpine

# Add default mosquitto postgres environment 
ENV POSTGRES_USER=mosquitto_acl
ENV POSTGRES_PASSWORD=mosquitto_acl
ENV POSTGRES_DB=mosquitto_acl

# Initial database
ADD 001-init-mosquitto.sh /docker-entrypoint-initdb.d/001-init-mosquitto.sh
