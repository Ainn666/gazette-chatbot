FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install rasa==3.6.2
RUN pip install -r requirements.txt

EXPOSE 5005
EXPOSE 5055
EXPOSE 5000

CMD ["sh", "-c", "rasa run actions & rasa run --enable-api --cors '*' & python app.py"]