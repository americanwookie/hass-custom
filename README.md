# hass-custom: The Home Assistant that I'm using right now
[Home Assistant](https://home-assistant.io/) is a great home automation
project. I personally use it at my house to do all sorts of fun stuff. Also,
the project is under heavy development, and constantly releasing, which is
super exciting for someone like myself who wants to contribute.

At the same time, I some times have stuff that I'm not quite ready to
contribute, but I want to use in my own home. By using Docker, I'm able to
start with the latest release of Home Assistant on dockerhub and then add my
little extras.

When I'm ready to build the image using docker, I just run this command in
the root of this project's working directory:
```
docker build -t scott-hass .
```

And then to start it, I run:
```
docker run -d --name="home-assistant" -v ~/config:/config -v /etc/localtime:/etc/localtime:ro --net=host --device=/dev/ttyACM0:/dev/ttyACM0:rwm scott-hass
```
