FROM python:3.7-slim
WORKDIR /webapp
COPY requirements.txt .
RUN pip install --no-cache-dir requirements.txt
COPY . .
EXPOSE 8000
CMD ["python","./webapp/manage.py","runserver","0.0.0.0:8000"]
