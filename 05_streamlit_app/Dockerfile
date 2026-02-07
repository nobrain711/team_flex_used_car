FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    MPLCONFIGDIR=/tmp/matplotlib

WORKDIR /app

# requirements 설치
COPY 05_streamlit_app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# 필요한 모듈들만 복사
COPY 05_streamlit_app /app/05_streamlit_app
COPY 03_data_pipeline /app/03_data_pipeline
COPY 04_algorithm /app/04_algorithm
COPY 01_crawling /app/01_crawling

# 레포 루트의 .env.example 정도만 필요하면 복사
COPY .env.example /app/.env

EXPOSE 8501
CMD ["streamlit", "run", "05_streamlit_app/app.py", "--server.address=0.0.0.0", "--server.port=8501"]
