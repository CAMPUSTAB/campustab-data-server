# 가볍고 보안성이 좋은 파이썬 3.11 slim 버전 사용
FROM python:3.11-slim

# 컨테이너 내 작업 디렉토리 설정
WORKDIR /workspace

# 의존성 파일 먼저 복사 및 설치 (도커 캐시 활용을 위해 분리)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 앱 소스 코드 복사
COPY ./app ./app

# 외부로 노출할 포트
EXPOSE 8000

# FastAPI(uvicorn) 서버 실행 명령어
# --host 0.0.0.0을 주어야 도커 컨테이너 외부에서 접근 가능합니다.
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]