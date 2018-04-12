FROM homeassistant/raspberrypi3-homeassistant:0.66.1

CMD ["python3","-m","homeassistant","--config","/config"]
