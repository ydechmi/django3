FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/
COPY . /usr/src/app/
RUN pip install -r requirements.txt
CMD ["python","manage.py", "runserver", "0.0.0.0:8000"]