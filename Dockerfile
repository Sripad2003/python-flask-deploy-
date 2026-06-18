FROM ubuntu:24.04

RUN apt update && \
    apt install -y python3 python3-pip python3-venv

WORKDIR /app

COPY app.py ./

RUN python3 -m venv .venv

RUN .venv/bin/pip install Flask

EXPOSE 5000

CMD [".venv/bin/python", "app.py"]