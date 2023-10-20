FROM python:3.8.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./instagram-batch-3/Instagram/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . . 

EXPOSE 8000