FROM ubuntu

# install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    ttf-mscorefonts-installer \
    fonts-wqy-zenhei 

# download and install screamingfrog 21.4
RUN wget --no-verbose https://download.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_21.4_all.deb && \
    dpkg -i /screamingfrogseospider_21.4_all.deb && \
    apt-get install -f -y

# accept the EULA
RUN mkdir -p ~/.ScreamingFrogSEOSpider && echo "eula.accepted=15" >> ~/.ScreamingFrogSEOSpider/spider.config

WORKDIR /home/ubuntu