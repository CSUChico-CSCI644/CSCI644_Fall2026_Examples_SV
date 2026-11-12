FROM python:3.15
ENV PYTHONUNBUFFERED=1
RUN apt update && apt install -y curl \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt