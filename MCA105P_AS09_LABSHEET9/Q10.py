/* Full Question: Create a delete facility that accepts a Student ID and removes the corresponding document from MongoDB. Display a suitable message after deletion. */

from flask import Flask
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.delete('/students/<int:sid>')
def delete(sid):
    r=students.delete_one({'student_id':sid})
    return {'message':'Deleted' if r.deleted_count else 'Student not found'}
