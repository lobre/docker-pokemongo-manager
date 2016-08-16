FROM openjdk:8
MAINTAINER Loric Brevet loric.brevet@gmail.com

RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    unzip \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

RUN wget https://github.com/Blossomforth/BlossomsPokemonGoManager/releases/download/v0.1.2-alpha.1/BPGM_v0.1.2-alpha.1.zip \
 && unzip -j BPGM_v0.1.2-alpha.1.zip -d /app \
 && rm /BPGM_v0.1.2-alpha.1.zip

WORKDIR /app

VOLUME ["/app"]

ENTRYPOINT ["java", "-jar", "/app/BlossomsPogoManager.jar"]
