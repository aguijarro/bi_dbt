FROM postgres:latest


RUN apt-get update
RUN apt-get -y install unzip ruby dos2unix

RUN mkdir /data
COPY ./data/install.sql /data/
COPY ./data/update_csvs.rb /data/
COPY ./data/AdventureWorks-oltp-install-script.zip /data/
RUN cd /data && \
    unzip AdventureWorks-oltp-install-script.zip && \
    rm AdventureWorks-oltp-install-script.zip && \
    ruby update_csvs.rb && \
    rm update_csvs.rb

COPY ./data/install.sh /docker-entrypoint-initdb.d/
WORKDIR /data/
RUN dos2unix /docker-entrypoint-initdb.d/*.sh