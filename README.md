# plumber-docker-aws
Deploying R api (with plumber) to AWS, with scaling

# Prework: Setup server
sudo yum install git<br/>
sudo yum install docker . 
sudo service docker start

# Step 1: Clone the repository
git clone https://github.com/jvanderstelt585/plumber-docker-aws.git

# Step 2: Move to repository folder . 
ls [ENTER] - Ensure that the files were cloned . 
cd plumber-docker-aws [ENTER] - Move into folder . 
more filename [ENTER] - View scripts

# Step 3: Build the image
docker build -f Dockerfile -t jlv/hello:dev . 
docker images

# Step 4: Run the container
docker run -d --name helloworld -p 9000:8000 jlv/hello:dev . 
docker ps

# Step 5: Access the API 
For post method, run this . 
curl -X POST http://localhost:9000/sayHelloToWorld

# Step 6: Scale containers 
ifconfig - get the ip (etho - inet addr) . 
docker swarm init --advertise-addr 10.0.0.85 . 
docker node ls . 
docker service create --name=helloworld --with-registry-auth --replicas 1 --publish=8000:8000 jlv/hello:dev . 
docker service scale helloworld=10 . 
docker stats

# Step 7 (Optional): Bring down existing containers and images
docker kill <CONTAINER ID> . 

docker rmi jlv/hello:dev . 
-OR-  
docker system prune -a . 

# Additional resources for docker 
Python, but still good example . 
https://medium.com/@mtngt/docker-flask-a-simple-tutorial-bbcb2f4110b5
