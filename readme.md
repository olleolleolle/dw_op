# Set up your local environment (this assumes a mac terminal environment)

# Create a sqllite file named op.sqlite with the contents of the op.sqlite.sql file

```
pip install virtualenv

virtualenv venv

source ./venv/bin/activate

pip install -r requirements.txt

flask --app viewer.py --debug run
```

### Alternative for `flask --app viewer run`:

```
export FLASK_APP=viewer.py

export FLASK_ENV=development

flask run
```

# Local docker use
docker-compose up
see website on http://127.0.0.1:5000/