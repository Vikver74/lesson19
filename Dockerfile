FROM python:3.10
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY dao dao
COPY service service
COPY views views
COPY app.py .
COPY config.py .
COPY constants.py .
COPY implemented.py .

CMD flask run -h 0.0.0.0 -p 80