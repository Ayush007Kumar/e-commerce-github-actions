FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8085

CMD ["gunicorn","--bind", "0.0.0.0:8085", "app:app"]