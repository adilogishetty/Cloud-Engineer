FROM python:3
MAINTAINER Aditya Logishetty

COPY . /src
WORKDIR /src
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "weatherBot.py", "weatherBot.conf"]
