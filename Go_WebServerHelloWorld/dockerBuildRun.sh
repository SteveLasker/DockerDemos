# Clear out any running containers and images in place for our new build
docker kill $(docker ps -a -q -f "image=go_basic")
docker rm $(docker ps -a -q -f "image=go_basic")
docker rmi go_basic
# Build the new container image
docker build -t go_basic .
# Run it on the default port, with a target name
docker run -p 8000:8080 -di --name=go_web_server go_basic
# Launch the page, assuming it's a web app 
open http://192.168.99.100:8000/