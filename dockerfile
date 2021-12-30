FROM python:3.9
LABEL maintainer="richardphi1618@gmail.com"
LABEL version="1.0"

COPY main.py ./
COPY .env ./

RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r ./requirements.txt

CMD ["python", "./main.py"]
