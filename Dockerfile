FROM homeassistant/rpi2-home-assistant

#My hack to get GET api calls converted to POSTs
COPY ros_hack.py /usr/src/app/homeassistant/components/ros_hack.py

CMD ["python","-m","homeassistant","--config","/config"]
