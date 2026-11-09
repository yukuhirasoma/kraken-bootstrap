FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt . 

RUN pip install --no-cache-dir -r requirements.txt 

RUN useradd --uid 1000 --create-home appuser

COPY --chown=appuser:appuser . .

RUN mkdir -p /app/output && chown appuser:appuser /app/output

ENV OUTPUT_DIR=/app/output

USER appuser

CMD ["python", "-m", "app.main"]

