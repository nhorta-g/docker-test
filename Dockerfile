#Use an official base image: This sets the base image as Ubuntu 20.04.
FROM ubuntu:20.04

#Set evironment variable This sets an environment variable to avoid interaction during package installation.
ENV DEBIAN_FRONTEND=nonimteractive

#Install dependencies: This updates the package list and installs curl and vim.
RUN apt-get update && apt-get install -y \
	curl \
	vim \
	&& rm -rf /var/lib/apt/lists/*

#Set the working directory: This sets the working directory inside the container to /app.
WORKDIR /app

#Copy the current directory contents into the container: This copies the contents of the current directory on your host into the /app directory in the container.
COPY . /app

#Run a command inside the container: This sets the default command to run when the container starts.
CMD ["echo", "Hello this is my first basic docker image learning test, good bye"]

#In terminal:
	#To build image
sudo docker build -t my-basic-image .
	#To run it
sudo docker run my-basic-image