from postgres:12
CMD ["sudo","systemctl","start","postgresql-12"]

from openjdk:11
ADD ./example-jpa/build/libs/example-jpa-0.1.0-SNAPSHOT.jar .
CMD ["java","-jar","example-jpa-0.1.0-SNAPSHOT.jar"]
