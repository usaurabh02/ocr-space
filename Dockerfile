FROM python:3.9

RUN apt-get update \
  && apt-get install -y python3 python3-distutils python3-pip \
  && apt-get install bash

COPY . /app
WORKDIR /app
# RUN pip install opencv-contrib-python
# RUN pip install opencv-contrib-python-headless
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]