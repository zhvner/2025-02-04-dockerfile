FROM --platform=linux/amd64 rocker/tidyverse:4.4.2

RUN echo "Hello"
RUN pwd
RUN apt-get install -y git

COPY README.md /home/rstudio/README.md

# Add glue package (To trigger rebuild)
RUN Rscript -e "install.packages('glue', repos = 'https://cloud.r-project.org')"