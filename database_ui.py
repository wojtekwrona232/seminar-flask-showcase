# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from flask import Blueprint, jsonify, redirect, render_template, request, url_for
from db import Address, User, DBUser

third = Blueprint('/db', __name__)


@third.route('/', methods=['GET'])
def manage_data():
    users = DBUser().get_all()
    return render_template('manage.html', users=users)


@third.route('/to-json', methods=['GET'])
def to_json():
    users = DBUser().get_all()
    j = []
    for u in users:
        j.append({
            'first_name': u.first_name,
            'last_name': u.last_name,
            'address': {
                'address': u.address.address,
                'city': u.address.city
            }
        })
    return jsonify(j)


@third.route('/add-new-user', methods=['GET', 'POST'])
def add_new_user():
    if request.method == 'POST':
        first_name = request.form.get('first_name')
        last_name = request.form.get('last_name')
        address = request.form.get('address')
        city = request.form.get('city')
        new_address = Address(address=address, city=city)
        new_user = User(first_name=first_name, last_name=last_name, address=new_address)
        DBUser(new_user).add_entity()
        return redirect(url_for('/db.manage_data'))
    return render_template('add_user.html')


@third.route('/update-user', methods=['GET', 'POST'])
def update_user():
    u_id = str(request.args.get('user_id'))
    first_name = str(request.args.get('first_name'))
    last_name = str(request.args.get('last_name'))
    address = str(request.args.get('address'))
    city = str(request.args.get('city'))
    if request.method == 'POST':
        iid = str(request.form.get('user_id'))
        first_name = str(request.form.get('first_name'))
        last_name = str(request.form.get('last_name'))
        address = str(request.form.get('address'))
        city = str(request.form.get('city'))
        DBUser(User(first_name=first_name, last_name=last_name, address=Address(address=address, city=city))).update_entity(int(iid))
        return redirect(url_for('/db.manage_data'))
    return render_template('update_user.html', first_name=first_name, last_name=last_name, address=address, city=city, user_id=u_id)


@third.route('/delete/<user_id>', methods=['GET'])
def delete_user(user_id):
    DBUser().delete_id(int(user_id))
    return redirect(url_for('/db.manage_data'))


@third.route('/hybrid-property/<user_id>', methods=['GET'])
def using_hybrid_property(user_id):
    user = DBUser().get(int(user_id))
    return jsonify(user.name)
