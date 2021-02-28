# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from flask import Blueprint, jsonify, Response
import datetime

# Blueprint declaration
tt = Blueprint('/current_time', __name__)


# jsonify example
@tt.route('/', methods=['GET'])
def show_current_date():
    """
    This method prepares JSON with current date, current_time in both 12h and 24h formats,
    timestamp and timezone info
    :return: JSON data with current date, current_time and timezone
    """
    js = {
        "date": datetime.date.today().strftime('%d %B %Y').__str__(),
        "current_time-12": datetime.datetime.now().strftime('%I:%M:%S.%f %p'),
        "current_time-24": datetime.datetime.now().strftime('%H:%M:%S.%f'),
        "timestamp": datetime.datetime.now().timestamp().__str__(),
        "timezone": datetime.datetime.now(datetime.timezone(datetime.timedelta(0))).astimezone().tzinfo.__str__()
    }
    return jsonify(js)


@tt.route('/error-500', methods=['GET'])
def return_error_500():
    """
    :return: Response with 500 HTTP error status code
    """
    return Response(status=500)

