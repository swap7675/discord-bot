FROM ubuntu:18.04


ENV HOME /home
COPY dbot.py /home/dbot.py
STOPSIGNAL SIGTERM
WORKDIR /home

COPY requirements.txt /home/requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["dbot.py"]
