# Dockerfile

FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5432

CMD ["flask", "run", "--host=0.0.0.0"]
