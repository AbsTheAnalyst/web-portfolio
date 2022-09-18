FROM python:3.11.0a6-alpine3.15
WORKDIR /code
COPY requirements.txt /code
COPY static /code/static
COPY templates /code/templates
COPY app.py /code/app.py



RUN pip install -r requirement.txt --no-cache-dir
COPY . /code
CMD python app.py