FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/

CMD ["python", "-c", "from app.calculator import add; print('Code Review DevOps App running. 2 + 3 =', add(2, 3))"]
