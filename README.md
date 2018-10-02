# plumber-docker-aws
Deploying R api (with plumber) to AWS


docker build -f Dockerfile -t jlv/hello:dev .
docker run -d --name helloworld -p 9000:8000 jlv/hello:dev
docker ps

# For post method, run this
curl -X POST http://localhost:9000/sayHelloToWorld
