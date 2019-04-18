FROM homeassistant/raspberrypi3-homeassistant:0.91.4

#Automatically change speaker groups for wake up ping
COPY run.py /run.py
COPY run.sh /run.sh
COPY fix-hosts-u-controller.sh /fix-hosts-u-controller.sh

CMD ["python3","-m","homeassistant","--config","/config"]
