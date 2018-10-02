# Resources for docker
https://medium.com/@mtngt/docker-flask-a-simple-tutorial-bbcb2f4110b5

# plumber-docker-aws
Deploying R api (with plumber) to AWS

# Setup server
sudo yum install git
sudo yum install docker
sudo service docker start

# Step 1: Clone the repository
git clone https://github.com/jvanderstelt585/plumber-docker-aws.git

# Step 2: Move to repository folder
A. ls [ENTER] - Ensure that the files were cloned
B. cd plumber-docker-aws [ENTER] - Move into folder 
C. more filename [ENTER] - View scripts

# Step 3: Build the image
A. docker build -f Dockerfile -t jlv/hello:dev .
B. docker images

# Step 4: Run the container
A. docker run -d --name helloworld -p 9000:8000 jlv/hello:dev
B. docker ps

# Step 5: Access the API 
For post method, run this:
curl -X POST http://localhost:9000/sayHelloToWorld

# Step 6A: Tear down containers 
docker kill <CONTAINER ID> 
 
# Step 6B: Tear down images
docker rmi jlv/hello:dev
-OR-
docker system prune -a



