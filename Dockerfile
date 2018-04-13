FROM lroguet/rpi-home-assistant

#Automatically change speaker groups for wake up ping
COPY run.py /run.py
COPY run.sh /run.sh

CMD ["python3","-m","homeassistant","--config","/config"]
