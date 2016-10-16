"""A hack to convert GETs to POSTs for RouterOS"""

import requests
import re
from cgi import parse_qs

DOMAIN = 'ros_hack'
PATH = '/ros_hack'

def setup(hass, config):
    """Register the GET->POST converter."""
    hass.wsgi.register_wsgi_app( PATH, ros_hack )

    return True

def ros_hack(environ, start_response):
    """Receive a GET, and redo it as a POST to oneself"""
    start_response('200 OK', [('Content-Type', 'text/plain')])
    parameters = parse_qs(environ.get('QUERY_STRING', ''))
    request = environ.get('REQUEST_URI')
    request = re.sub(r"" + re.escape(PATH) + "/+", "", request)
    result = requests.post(
        "http://127.0.0.1:8123/%s" % request,
        headers={'x-ha-access': parameters.get('password', [''])[0]})
    resp_tuple = (result.status_code, result.reason, result.text)
    return [ 'Result is code %s, reason %s and payload %s' % resp_tuple ]
