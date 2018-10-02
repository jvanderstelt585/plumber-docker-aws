FROM trestletech/plumber

# Install R packages
RUN R -e "install.packages('jsonlite')"

# Set working directory
WORKDIR /usr/local/lib/R/site-library/plumber/examples/04-mean-sum/

# Add the script to the directory
ADD helloWorld.R ./

# Run R file
CMD ["./helloWorld.R"]
