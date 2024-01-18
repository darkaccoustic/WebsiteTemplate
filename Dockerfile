FROM python:3.12-bullseye
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install pipenv \
&& pip install --upgrade pipenv
