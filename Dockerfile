FROM python:3.6
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

WORKDIR .

COPY models/model.pkl /models/model.pkl
COPY models/transformer.pkl /models/transformer.pkl
COPY app.py /app.py

CMD ["uvicorn", "app:app"]
