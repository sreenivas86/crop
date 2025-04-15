FROM python:3.10.16-alpine3.20
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY *
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
