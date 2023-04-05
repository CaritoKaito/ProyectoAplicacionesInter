FROM python:3.11.1-slim

WORKDIR /Proyecto
COPY ApiRest ./ApiRest
COPY Logica ./Logica
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y default-libmysqlclient-dev
RUN pip install --upgrade pip
RUN pip install -r ./ApiRest/requeriments.txt
ENV PYTHONPATH="$PYTHONPATH:/Proyecto"

EXPOSE 8000
CMD ["python", "./ApiRest/Proyecto/manage.py", "runserver", "0.0.0.0:8000"]