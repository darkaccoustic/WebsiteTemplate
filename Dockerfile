FROM python:3.12-bullseye
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install pipenv --user\
&& pip install --user --upgrade pipenv

# CMD pipenv run ./managepy runserver 0.0.0.0:8000