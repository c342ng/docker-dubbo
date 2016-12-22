FROM maven:3.3.9-jdk-7
RUN apt-get update && apt-get install -y vim curl wget git net-tools netcat\
    && apt-get -q clean -y && rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin
RUN mkdir -p /var/dubbo && cd /var/dubbo && git clone https://github.com/alibaba/dubbo.git
RUN cd /var/dubbo/dubbo && git checkout master && mvn clean install -Dmaven.test.skip
EXPOSE 20880
