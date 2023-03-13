FROM python:3.9.7
  
WORKDIR /use/src/application

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . . 

CMD ["uvicorn", "app.index:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]