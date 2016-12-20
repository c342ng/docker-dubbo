FROM java:openjdk-7u121
RUN apt-get update && apt-get install -y vim curl wget git \
    && apt-get -q clean -y && rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin
RUN mkdir -p /var/dubbo && cd /var/dubbo && git clone https://github.com/alibaba/dubbo.git
