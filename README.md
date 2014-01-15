
# Intro

Build a docker image to run node.js application in ubuntu.

# Build

```
git clone https://github.com/killme2008/Docker-NodeJS-Ubuntu.git
cd Docker-NodeJS-Ubuntu.git
docker build -t dennis/node-js .
docker run -p 47516:8080 -d dennis/node-js
```

Test it:

```
curl -X GET http://localhost:47516/
```
It should out put:

```
Hello World
```

Or you can put the link into browser to see it.
