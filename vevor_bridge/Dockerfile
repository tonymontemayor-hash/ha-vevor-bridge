FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    rtl-sdr \
    git \
    jq \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/C9H13NO3-dev/VevorWeatherbridge .

RUN pip install --no-cache-dir -r requirements.txt

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
