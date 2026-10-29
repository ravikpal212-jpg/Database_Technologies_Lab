/* Full Question: Create a Python Flask application that connects to the CollegeDB database and accesses the students collection. Display a suitable message when the application successfully connects to MongoDB. */

from flask import Flask
from pymongo import MongoClient
app=Flask(__name__)
client=MongoClient('mongodb://localhost:27017/',serverSelectionTimeoutMS=3000)
db=client['CollegeDB']; students=db['students']
@app.get('/')
def home():
    client.admin.command('ping')
    return 'Connected to MongoDB CollegeDB successfully'
if __name__=='__main__': app.run(debug=True)
