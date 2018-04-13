FROM homeassistant/rpi2-home-assistant

#Automatically change speaker groups for wake up ping
COPY run.py /run.py
COPY run.sh /run.sh

CMD ["python","-m","homeassistant","--config","/config"]
