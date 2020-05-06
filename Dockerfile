FROM postgres:9.6.16-alpine

# Add default POSTGRES_PASSWORD 
ENV POSTGRES_PASSWORD=postgres

# Initial database
ADD 001-init-mosquitto.sh /docker-entrypoint-initdb.d/001-init-mosquitto.sh
