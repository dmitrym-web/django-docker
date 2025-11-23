FROM python:3.11.5-slim-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends bash

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN useradd -m -u 1000 appuser

RUN mkdir -p /app && chown -R appuser:appuser /app

WORKDIR /app

USER appuser

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .