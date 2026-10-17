FROM python:3.9-slim-bookworm

RUN apt-get update -qq && apt-get install -y --no-install-recommends ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -U -r requirements.txt

CMD ["python", "-m", "bot"]
