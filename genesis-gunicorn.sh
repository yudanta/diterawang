gunicorn --name 'Diterawang, yet another image Classification API' --chdir /home/genesis/src --timeout 300 -b 0.0.0.0:$PORT app:app -k gevent --worker-connections 5 --workers 1 --reload
# gunicorn --name 'Diterawang, yet another image Classification API' --chdir /home/genesis/src --timeout 300 -b 0.0.0.0:8000 app:app -k gevent --worker-connections 5 --workers 1 --reload