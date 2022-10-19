FROM python:3.8.3-buster

RUN pip install locust==2.12.2

COPY locustfile.py /locustfile.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
