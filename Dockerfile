FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade --no-cache-dir -U -r requirements.txt

COPY --chown=appuser:appuser . .
USER appuser

ENTRYPOINT ["make"]
CMD ["run-app"]