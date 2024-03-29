FROM python:3.9.2
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY dao dao
COPY service service
COPY views views
COPY config.py .
COPY constants.py .
COPY implemented.py .
COPY movies.db .
COPY setup_db.py .

CMD flask run -h 0.0.0.0 -p 80