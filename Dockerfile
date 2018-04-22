FROM homeassistant/raspberrypi3-homeassistant:0.66.1

#Automatically change speaker groups for wake up ping
COPY run.py /run.py
COPY run.sh /run.sh

RUN sed -i 's/9000/7345/g' /usr/lib/python3.6/site-packages/pyvizio/protocol.py
CMD ["python3","-m","homeassistant","--config","/config"]
