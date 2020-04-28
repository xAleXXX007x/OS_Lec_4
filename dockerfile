from postgres:12
cmd ["pg_ctl","start"]

from openjdk:11
ADD ./example-jpa/build/libs/example-jpa-0.1.0-SNAPSHOT.jar .
CMD ["java","-jar","example-jpa-0.1.0-SNAPSHOT.jar"]
