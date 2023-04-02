FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./webapp ./
#COPY ./requirements.txt ./app/

RUN pip install --upgrade pip --no-cache-dir
#RUN pip install django
#RUN pip install psycopg2-binary
#RUN pip install joblib
#RUN pip install pandas

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD ["python3","manage.py", "runserver","0.0.0.0:8000"]