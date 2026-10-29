/* Full Question: Combine the previous tasks into one working Student Record Management System containing Add Student, View Students, Search Student, Update Student, and Delete Student features using HTML, CSS, Flask, PyMongo, and MongoDB. */

# Minimal combined Flask CRUD API
from flask import Flask,request,jsonify
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.post('/students')
def add():
 d=request.get_json(); students.insert_one(d); return {'message':'added'},201
@app.get('/students')
def view(): return list(students.find({}, {'_id':0}))
@app.get('/students/<int:sid>')
def search(sid): return students.find_one({'student_id':sid},{'_id':0}) or ({'error':'not found'},404)
@app.put('/students/<int:sid>')
def update(sid): return {'modified':students.update_one({'student_id':sid},{'$set':request.get_json()}).modified_count}
@app.delete('/students/<int:sid>')
def delete(sid): return {'deleted':students.delete_one({'student_id':sid}).deleted_count}
if __name__=='__main__': app.run(debug=True)
