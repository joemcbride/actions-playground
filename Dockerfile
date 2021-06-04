FROM python:3.9-slim-buster
ENV PYTHONUNBUFFERED 1
RUN python -m pip install --upgrade pip
RUN pip install -U pytest

ENV PYTHONPATH "${PYTHONPATH}:./"

ADD ./tests /tests

ENTRYPOINT [ "pytest", "-p", "no:cacheprovider", "/tests" ]