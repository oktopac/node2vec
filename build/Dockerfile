FROM ubuntu

RUN apt-get update

RUN apt-get -y install build-essential wget zip

RUN wget https://snap.stanford.edu/releases/Snap-4.0.zip

RUN unzip -q /Snap-4.0.zip

WORKDIR /Snap-4.0

RUN make all -j
