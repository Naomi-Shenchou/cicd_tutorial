FROM python:3.12
ADD . /flask_app
WORKDIR /flask_app
RUN apt-get update && apt-get install -y python3-venv
RUN python3 -m venv venv
RUN . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt
ENTRYPOINT ["venv/bin/python"]
CMD ["flask_docker.py"]
