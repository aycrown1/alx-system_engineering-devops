#!/usr/bin/python3
"""Write a Python script that, using this REST API, for a given employee ID,
 returns information about his/her TODO list progress.
"""

import json
import urllib.request
import sys

if __name__ == "__main__":
    user_id = sys.argv[1]
    user_url = "https://jsonplaceholder.typicode.com/users/" + user_id
    with urllib.request.urlopen(user_url) as response:
        user_dict = json.load(response)
    user_name = user_dict.get("name")
    with urllib.request.urlopen("https://jsonplaceholder.typicode.com/todos") as todo_response:
        user_todo = json.load(todo_response)
    total_todo = 0
    completed_titles = []
    number_completed = 0

    for item in user_todo:
        if item.get("userId") == int(user_id):
            total_todo += 1
            if item.get("completed") is True:
                number_completed += 1
                completed_titles.append(item.get("title"))
    print("Employee {} is done with tasks({}/{}):".format(
        user_name, number_completed, total_todo))
    for title in completed_titles:
        print("\t {}".format(title))
