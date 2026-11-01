FROM python:3.12-slim-bookworm
WORKDIR /app
ENV PYTHONUNBUFFERED=1 PIP_INDEX_URL=https://mirrors.aliyun.com/pypi/simple/
COPY pyproject.toml ./
COPY src/ ./src/
RUN pip install --no-cache-dir .
EXPOSE 3000
CMD ["python", "-m", "ashare_mcp", "--transport", "http", "--port", "3000"]
