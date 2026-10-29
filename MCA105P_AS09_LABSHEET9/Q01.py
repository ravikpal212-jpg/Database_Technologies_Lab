/* Full Question: Install and configure Python, Flask, PyMongo, MongoDB, and MongoDB Compass or MongoDB Shell. Create a Python project and verify that Flask and PyMongo can be imported successfully. */

# Terminal
python -m venv .venv
# Windows: .venv\Scripts\activate
 pip install flask pymongo

# verify_imports.py
from flask import Flask
from pymongo import MongoClient
print('Flask and PyMongo imported successfully')
