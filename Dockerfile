FROM trestletech/plumber
RUN mkdir -p /app/
WORKDIR /app/
COPY helloWorld.R /app/
CMD ["/app/deploy_credit_model.R"]
