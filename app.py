# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from database_ui import third
from json_examples import ex
from example_hello.hello import hello
from current_time.tt import tt
from flask import Flask, render_template

app = Flask(__name__)

app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True
app.config['JSON_AS_ASCII'] = False
app.config['SECRET_KEY'] = b'\xaa\x89u\xf7M\xf03\xcb\x1b\xc6#\xd2"\x8b\xf8\xb7'

app.register_blueprint(tt, url_prefix='/current_time')
app.register_blueprint(third, url_prefix='/db')
app.register_blueprint(hello, url_prefix='/hello')
app.register_blueprint(ex, url_prefix='/json')


@app.errorhandler(404)
def error_404(e):
    return render_template('404.html'), 404


@app.route('/')
@app.route('/index')
@app.route('/home')
def hello_world():
    return render_template('index.html')


if __name__ == '__main__':
    app.run()
