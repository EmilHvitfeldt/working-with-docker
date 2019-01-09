# The docker image we are using
FROM rocker/r-ver:3.5.1

# Install packages from a specific day
# RUN R -e "options(repos = \
#   list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2019-01-01/')); \
#   install.packages('readr')"

# Install pacakges with specific version
 RUN R -e "install.packages('remotes'); \
   remotes::install_version('readr', '1.3.0'); \
   remotes::install_version('tibble', '1.4.2');"

# Where analysis will end
RUN mkdir /home/analysis

# Copy external files to container
COPY script.R /home/analysis/script.R

# Run commands
# set working directory to /home/analysis
CMD cd /home/analysis \
  # run code in script.R
  && R -e "source('script.R')" \
  # move resulting file from to another folder named results
  && mv /home/analysis/iris-centers.csv /home/results/iris-centers.csv
