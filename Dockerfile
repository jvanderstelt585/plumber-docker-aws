FROM trestletech/plumber

# Install R packages
# RUN R -e "install.packages('jsonlite')"

# Set working directory
WORKDIR /usr/local/lib/R/site-library/plumber/examples/04-mean-sum/

# Run R file
CMD ["./helloWorld.R"]
