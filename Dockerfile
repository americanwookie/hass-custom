FROM homeassistant/rpi2-home-assistant

CMD ["python","-m","homeassistant","--config","/config"]
