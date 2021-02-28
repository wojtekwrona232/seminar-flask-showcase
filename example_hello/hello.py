# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from flask import session, Blueprint, redirect, url_for, render_template, request, jsonify

hello = Blueprint('/hello', __name__)


@hello.route('/delete', methods=['GET'])
def clear_session():
    if session.get('first_name') is None and session.get('last_name') is None and session.get('email') is None:
        return redirect(url_for('/hello.say_hello_to'))
    session.pop('first_name', None)
    session.pop('last_name', None)
    session.pop('email', None)
    return redirect(url_for('/hello.say_hello_4'))


@hello.route('/hello3', methods=['GET'])
def say_hello_4():
    if session.get('first_name') is None and session.get('last_name') is None and session.get('email') is None:
        return render_template('hello1.html', first_name='', last_name='',
                               email='')
    return render_template('hello1.html', first_name=session.get('first_name'), last_name=session.get('last_name'),
                           email=session.get('email'))


@hello.route('/hello2/<first_name>/<last_name>/<email>', methods=['GET'])
def say_hello_3(first_name, last_name, email):
    return render_template('hello1.html', first_name=first_name, last_name=last_name, email=email)


@hello.route('/hello1', methods=['GET'])
def say_hello_2():
    first_name = request.args.get('first_name')
    last_name = request.args.get('last_name')
    email = request.args.get('email')
    return render_template('hello1.html', first_name=first_name, last_name=last_name, email=email)


@hello.route('/hello', methods=['GET', 'POST'])
def say_hello_to():
    if request.method == 'POST':
        first_name = request.form.get('first_name')
        last_name = request.form.get('last_name')
        email = request.form.get('email')
        session['first_name'] = first_name
        session['last_name'] = last_name
        session['email'] = email
        if str(first_name).__len__() == 0 or str(last_name).__len__() == 0 or str(email).__len__() == 0:
            return jsonify({
                'message': 'the fields are empty'
            })
        return render_template('hello.html', first_name=first_name, last_name=last_name, email=email)
    return render_template('say_hello.html')
