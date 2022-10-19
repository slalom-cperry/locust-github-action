FROM python:3

RUN pip install certifi
RUN pip install urllib3[secure]
RUN pip install locust

COPY locustfile.py /locustfile.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
