FROM python:3.9-alpine

COPY . /uptime-reporting
WORKDIR /uptime-reporting
RUN pip install -r pip-requirements.txt
RUN python setup.py install


ENTRYPOINT ["uptime-reporting"]
