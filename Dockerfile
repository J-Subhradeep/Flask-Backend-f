FROM python:3.10
WORKDIR /app
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install wheel
RUN pip install -r requirements.txt
COPY . .
CMD [ "python3","app.py" ]