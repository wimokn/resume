FROM debian:stable

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
      texlive-xetex \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        texlive-latex-extra \
        latexmk \
	    lmodern \
        make && \
    tlmgr init-usertree && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 latex && useradd -u 1000 -g latex latex
USER latex

WORKDIR /data
VOLUME ["/data"]