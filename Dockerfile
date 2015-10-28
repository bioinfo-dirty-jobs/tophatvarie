FROM ubuntu
MAINTAINER Maurizio Polano <mauriziopolano@blu.it>
RUN apt-get update && apt-get install -y python unzip gcc make bzip2 zlib1g-dev ncurses-dev
ADD tophat-2.0.10.Linux_x86_64.tar.gz tophat.tgz
ADD bowtie2-2.1.0-linux-x86_64.zip bowtie.zip
ADD samtools-0.1.19.tar.bz2 samtools.tar.bz2
RUN tar xzftophat.tgz&& unzip bowtie.zip&& mvtophat-2.0.10.Linux_x86_64 tophat&& mvbowtie2-2.1.0 bowtie2
RUN bunzip2 samtools.tar.bz2 && tar xfsamtools.tar&& mv samtools-0.1.19 samtools&& cdsamtools&& make 
ENV PATH /bowtie2:/tophat:/samtools:$PATH
