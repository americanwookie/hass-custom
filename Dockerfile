FROM homeassistant/raspberrypi3-homeassistant:0.66.1

#Automatically change speaker groups for wake up ping
COPY run.py /run.py
COPY run.sh /run.sh

CMD ["python3","-m","homeassistant","--config","/config"]
