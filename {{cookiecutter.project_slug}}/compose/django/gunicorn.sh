#!/bin/sh
python /app/manage.py collectstatic --noinput
/opt/conda/bin/gunicorn config.wsgi -w 4 -b 0.0.0.0:5000 --chdir=/app
