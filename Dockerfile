FROM python:3.9-slim-buster

WORKDIR /usr/app

RUN pip install virtualenv

RUN virtualenv venv

SHELL ["bash", "-c"]
RUN source /app/venv/bin/activate

COPY . /usr/app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "app.index:app", "--host", "0.0.0.0", "--port", "8000", "reload"]
