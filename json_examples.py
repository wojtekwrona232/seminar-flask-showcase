# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from flask import render_template, url_for, Response, request, jsonify, json, Blueprint, send_file
from db import Address, User, DBUser

ex = Blueprint('/json', __name__)


@ex.route('/teapot', methods=['GET'])
def teapot():
    return send_file('./static/418.jpg', mimetype='image/gif'), 418
