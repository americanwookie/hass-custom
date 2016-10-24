FROM homeassistant/rpi2-home-assistant

#My hack to get GET api calls converted to POSTs
COPY ros_hack.py /usr/src/app/homeassistant/components/ros_hack.py

#My hack to get sleep timer added to home assistant before SoCo accepts it
COPY services.yaml /usr/src/app/homeassistant/components/media_player/services.yaml
COPY sonos.py /usr/src/app/homeassistant/components/media_player/sonos.py

CMD ["python","-m","homeassistant","--config","/config"]
