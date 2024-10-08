#
FROM python:3.11
#
WORKDIR /code
#
COPY ./requirements.txt /code/requirements.txt
#
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
#
COPY . /code/lesson1
#
CMD ["uvicorn", "lesson1.api:app", "--host", "0.0.0.0", "--port", "80"]