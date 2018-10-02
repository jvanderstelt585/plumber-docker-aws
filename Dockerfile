FROM trestletech/plumber

# Install R packages
RUN R -e "install.packages('jsonlite')"

# Set working directory
WORKDIR /usr/local/lib/R/site-library/plumber/examples/04-mean-sum/

# Add trained model and R file
ADD MuniRegModel.rds ./
ADD MuniApi.R ./

# Run R file
CMD ["./MuniApi.R"]
