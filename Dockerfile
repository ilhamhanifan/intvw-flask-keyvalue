FROM python:3.11-slim-bookworm

WORKDIR /

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["flask" , "run", "--host=0.0.0.0"]
