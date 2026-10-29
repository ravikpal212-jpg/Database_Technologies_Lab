/* Full Question: Create a Flask application that connects to the HospitalDB database and accesses the medicines collection. Verify the connection between Python and MongoDB. */

from flask import Flask
from pymongo import MongoClient
app=Flask(__name__); client=MongoClient('mongodb://localhost:27017/',serverSelectionTimeoutMS=3000); medicines=client['HospitalDB']['medicines']
@app.get('/')
def home(): client.admin.command('ping'); return 'Connected to HospitalDB'
if __name__=='__main__': app.run(debug=True)
