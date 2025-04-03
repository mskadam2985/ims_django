FROM python:3.12.3-bullseye
WORKDIR /ims_django_dock
COPY ./ ims_django ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /ims_django_dock/requirements.txt --no-cache-dir

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

# CMD ["gunicorn","ambavkaragro.wsgi:application","--bind", "0.0.0.0:8000" ]