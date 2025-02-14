FROM --platform=linux/amd64 rocker/tidyverse:4.4.2

RUN echo "Hello"
RUN pwd
RUN apt-get install -y git

COPY README.md /home/rstudio/README.md
RUN Rscript -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
