# Use lightweight baseimage
FROM alpine:latest
# set Working directory
WORKDIR /app
# Installa il pacchetto Curl (istruzione alpine)
RUN apk add --no-cache curl
# Crea uno script
RUN echo 'echo "Hello from Docker!"' > run.sh && chmod +x run.sh
# settalo come comando di default
CMD [ "sh","./run.sh" ] 