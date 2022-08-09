# syntax=docker/dockerfile:1
FROM python:3

# ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED 1

WORKDIR /ditiss-project1

ADD . /ditiss-project1

COPY WebApp/requirements.txt /ditiss-project1/requirements.txt

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

COPY . /ditiss-project1

CMD ["python3", "WebApp/manage.py", "runserver", "0.0.0.0:5000"]  
