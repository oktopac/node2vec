FROM ubuntu

RUN apt-get update && apt-get install libgomp1

ADD node2vec /node2vec

RUN chmod +x /node2vec

CMD /node2vec
