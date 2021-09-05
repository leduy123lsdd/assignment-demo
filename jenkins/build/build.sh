cp -f hello-world/webapp/target/*.war jenkins/build

echo "********************************"
echo "****Building docker image*******"

cd jenkins/build && docker build -f Dockerfile-webapp -t my-tomcat-app .