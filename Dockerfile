FROM maven:3.6.2-jdk-13
COPY mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
RUN /bin/bash -c 'chmod +x /usr/local/bin/mvn-entrypoint.sh'