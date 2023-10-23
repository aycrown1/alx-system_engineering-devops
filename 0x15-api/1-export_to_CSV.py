#!/usr/bin/python3

"""Using what you did in the task #0,
 extend your Python script to export data in the CSV format
"""

import json
import csv
import urllib.request
import sys

if __name__ == '__main__':
    tasks = []
    tasks_list = []
    root = 'https://jsonplaceholder.typicode.com'
    with urllib.request.urlopen(root + '/users/{}'
                                .format(sys.argv[1])) as user_response:
        user = json.load(user_response)
    with urllib.request.urlopen(root + '/todos') as todos_response:
        todos = json.load(todos_response)
        for i in todos:
            if i.get('userId') == int(sys.argv[1]):
                tasks.append(sys.argv[1])
                tasks.append(user.get('username'))
                tasks.append(i.get('completed'))
                tasks.append(i.get('title'))
                tasks_list.append(tasks)
                tasks = []
    with open('{}.csv'.format(sys.argv[1]), 'w', newline='') as f:
        f_csv = csv.writer(f, quoting=csv.QUOTE_ALL)
        f_csv.writerows(tasks_list)
