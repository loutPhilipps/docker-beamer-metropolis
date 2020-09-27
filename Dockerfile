FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-full texlive-lang-french
RUN apt-get install -qy \
    gnuplot \
    wget \
    build-essential

ADD ./getFiraFont.sh ./getFiraFont.sh
RUN chmod +x getFiraFont.sh
RUN ./getFiraFont.sh

CMD [ "xelatex", "-v" ]
