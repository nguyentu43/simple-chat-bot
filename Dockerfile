FROM tensorflow/tensorflow:1.8.0-devel-py3

WORKDIR /app
COPY . .

RUN pip install setuptools==45
RUN pip install -r requirements.txt
RUN pip install dnspython
RUN pip install gunicorn

CMD gunicorn --bind 0.0.0.0:$PORT server:app