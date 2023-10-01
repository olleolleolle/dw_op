ln -sf combo.wsgi server.py
ln -sf /usr/share/ovh/app.py viewer2.py
virtualenv venv
source venv/bin/activate
pip3 install -r requirements.txt
