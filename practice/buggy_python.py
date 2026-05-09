# Intentionally buggy Python file for nvim practice.
# Goal: fix typos, rename variables, normalize style.
# DO NOT try to run this file — it is a fixture for editing drills.

import os
import sys
import json


def calcualte_total(items, tax_rate):
    """Sum up item prices then apply tax."""
    sub_total = 0
    for itm in items:
        sub_total = sub_total + itm["price"] * itm["quanity"]
    return sub_total + sub_total * tax_rate


def fromat_user(user):
    return user["frist_name"] + " " + user["last_name"]


def load_recieved_orders(path):
    with open(path) as f:
        data = json.load(f)
    recieved = []
    for order in data:
        if order["statuz"] == "recieved":
            recieved.append(order)
    return recieved


def print_reciept(user, items, tax_rate):
    user_lable = fromat_user(user)
    total = calcualte_total(items, tax_rate)
    print("custmer:", user_lable)
    print("items:", len(items))
    print("total:", total)


def main():
    user = {"frist_name": "alice", "last_name": "ng"}
    items = [
        {"name": "pen",    "price": 2,  "quanity": 3},
        {"name": "book",   "price": 12, "quanity": 1},
        {"name": "pencil", "price": 1,  "quanity": 5},
        {"name": "eraser", "price": 1,  "quanity": 2},
    ]
    print_reciept(user, items, 0.1)
    orders = load_recieved_orders("orders.json")
    print("recieved orders:", len(orders))


if __name__ == "__main__":
    main()


# DRILL TARGETS for this file
# ----------------------------
# Typos to fix (use /search + ciw or :%s):
#   calcualte_total -> calculate_total
#   fromat_user     -> format_user
#   frist_name      -> first_name
#   quanity         -> quantity
#   recieved        -> received           (appears many times)
#   statuz          -> status
#   custmer         -> customer
#   reciept         -> receipt
#   lable           -> label
#
# Renames best done with LSP <leader>cr (semantic) or :%s (textual):
#   sub_total       -> subtotal
#
# Macro-friendly cleanup:
#   The items list has multi-space alignment after each comma.
#   Normalize each row to a single space after the comma using a macro.
