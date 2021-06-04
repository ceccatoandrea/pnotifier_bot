FROM python:3.9

WORKDIR /pnotifierapp

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .

CMD ["python", "-u", "main.py"]