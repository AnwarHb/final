FROM python

RUN apt-get update && apt-get install -y python3-pip && \
    apt-get install default-libmysqlclient-dev libssl-dev -y 

RUN mkdir /GeeksApp


WORKDIR /GeeksApp

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "app.py" ]
