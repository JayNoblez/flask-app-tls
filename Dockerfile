FROM python:3.9
COPY setup.py /home/
COPY app/* /home/
WORKDIR /home
RUN pip3 install -e .
EXPOSE 5000
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
