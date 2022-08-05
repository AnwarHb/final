FROM python

WORKDIR /geek

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

COPY . .

CMD ["python3", "app.py"]
