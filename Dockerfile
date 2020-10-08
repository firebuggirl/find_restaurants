FROM python:3.7

LABEL name="Juliette Tworsey"

COPY ./requirements.txt /requirements.txt

EXPOSE 5000

WORKDIR /

RUN pip3 install -r requirements.txt


COPY . /

ENTRYPOINT [ "python3" ]

CMD [ "app/app.py" ]
