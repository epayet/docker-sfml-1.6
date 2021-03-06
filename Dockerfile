FROM ubuntu:10.04

RUN apt-get update
RUN apt-get install -y g++ build-essential libpthread-stubs0-dev libgl1-mesa-dev libx11-dev libxrandr-dev libfreetype6-dev libglew-dev libjpeg-dev libsndfile1-dev libopenal-dev wget
RUN wget http://www.sfml-dev.org/files/SFML-1.6-sdk-linux-64.tar.gz 
RUN tar -xvf SFML-1.6-sdk-linux-64.tar.gz
RUN cd SFML-1.6 && make && make install && ldconfig

WORKDIR /source
CMD mkdir -p libs/SFML && mv /usr/local/lib/libsfml-* libs/SFML && make
