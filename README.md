# Resources for docker
https://medium.com/@mtngt/docker-flask-a-simple-tutorial-bbcb2f4110b5

# plumber-docker-aws
Deploying R api (with plumber) to AWS

# Build the image
docker build -f Dockerfile -t jlv/hello:dev .

# Run the container
docker run -d --name helloworld -p 9000:8000 jlv/hello:dev

# The running containers
docker ps
docker kill <CONTAINER ID> 

# The images
docker images 
docker system prune -a

# Access the API 
For post method, run this:
curl -X POST http://localhost:9000/sayHelloToWorld
