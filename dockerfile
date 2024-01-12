FROM python:3.8

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app

# Reset DB And apply migrations
RUN export FLASK_APP=core/server.py && flask db upgrade -d core/migrations/ && rm core/store.sqlite3

EXPOSE 7755

CMD ["bash", "run.sh"]
