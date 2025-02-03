FROM rocker/rstudio:latest

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libudunits2-dev \
    libprotobuf-dev \
    protobuf-compiler \
    libproj-dev \
    libgdal-dev \
    libmagick++-dev \
    texlive \
    texlive-latex-extra \
    texlive-fonts-extra \
    && rm -rf /var/lib/apt/lists/*
    
# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
    unzip /tmp/awscliv2.zip -d /tmp && \
    /tmp/aws/install && \
    rm -rf /tmp/awscliv2.zip /tmp/aws

RUN mkdir -p /home/epic
WORKDIR /home/epic

# Install required R packages from CRAN
RUN install2.r --error \
shiny \
DT \
data.table \
foreach \
ggplot2 \
glue \
golem \
leaflet \
readxl \
RMySQL \
SearchTrees \
shinycssloaders \
shinyjs \
sf \
sp \
tidyverse \
tidyr \
magrittr \
dplyr


#Copying folder contents 
ADD . /home/epic/
# Expose ports
EXPOSE 2000 2001

# Set the working directory and command to run the app
WORKDIR /home/epic
CMD ["R", "-e", "httpuv::startServer('0.0.0.0', 2001, list(call = function(req) { list(status = 200, body = 'OK', headers = list('Content-Type' = 'text/plain')) })); shiny::runApp('/home/epic/tx-dw-tool-app.R', port = 2000, host = '0.0.0.0')"]