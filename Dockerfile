FROM python:3.10
WORKDIR /app
ENV POETRY_VIRTUALENVS_CREATE=false
RUN pip install poetry
COPY . /app
RUN poetry install --no-ansi --no-interaction

CMD ["python", "__main__.py"]